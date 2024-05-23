package ai

import (
	"context"
	"errors"
	"fmt"
	"io"
	"log"
	"os"
	"time"

	"github.com/Azure/azure-sdk-for-go/sdk/ai/azopenai"
	"github.com/Azure/azure-sdk-for-go/sdk/azcore"
	"github.com/Azure/azure-sdk-for-go/sdk/azcore/to"
	"github.com/gogf/gf/v2/frame/g"
)

type sAI struct {
}

func (s *sAI) GetAnswer(ctx context.Context, uid, tid, sid, q string) (string, interface{}, error) {

	azureOpenAIKey := "cffab70f7240451e9b965c0e412c01d6"
	modelDeploymentID := "1106"
	azureOpenAIEndpoint := "https://azopenai-eus2.openai.azure.com/"

	keyCredential := azcore.NewKeyCredential(azureOpenAIKey)

	client, err := azopenai.NewClientWithKeyCredential(azureOpenAIEndpoint, keyCredential, nil)

	if err != nil {
		//  TODO: Update the following line with your application specific error handling logic
		log.Fatalf("ERROR: %s", err)
	}

	// This is a conversation in progress.
	// NOTE: all messages, regardless of role, count against token usage for this API.
	messages := []azopenai.ChatRequestMessageClassification{
		// You set the tone and rules of the conversation with a prompt as the system role.
		&azopenai.ChatRequestUserMessage{Content: azopenai.NewChatRequestUserMessageContent(q)},
		// from here you'd keep iterating, sending responses back from the chat completions API
	}

	resp, err := client.GetChatCompletions(context.TODO(), azopenai.ChatCompletionsOptions{
		// This is a conversation in progress.
		// NOTE: all messages count against token usage for this API.
		Messages:       messages,
		DeploymentName: &modelDeploymentID,
	}, nil)

	if err != nil {
		//  TODO: Update the following line with your application specific error handling logic
		log.Fatalf("ERROR: %s", err)
	}

	for _, choice := range resp.Choices {
		fmt.Fprintf(os.Stderr, "Content[%d]: %s\n", *choice.Index, *choice.Message.Content)
	}

	if resp.Choices != nil && len(resp.Choices) > 0 {
		return *resp.Choices[0].Message.Content, nil, nil
	}
	return "", nil, nil
}

func (s *sAI) GetAnswerStream(ctx context.Context, uid, tid, sid, q string) (string, error) {

	azureOpenAIKey := "cffab70f7240451e9b965c0e412c01d6"
	modelDeploymentID := "1106"
	//modelDeploymentID := "gpt3516k"
	azureOpenAIEndpoint := "https://azopenai-eus2.openai.azure.com/"

	keyCredential := azcore.NewKeyCredential(azureOpenAIKey)

	client, err := azopenai.NewClientWithKeyCredential(azureOpenAIEndpoint, keyCredential, nil)

	if err != nil {
		//  TODO: Update the following line with your application specific error handling logic
		log.Fatalf("ERROR: %s", err)
	}

	// This is a conversation in progress.
	// NOTE: all messages, regardless of role, count against token usage for this API.
	messages := []azopenai.ChatRequestMessageClassification{
		// You set the tone and rules of the conversation with a prompt as the system role.
		&azopenai.ChatRequestUserMessage{Content: azopenai.NewChatRequestUserMessageContent(q)},
		// from here you'd keep iterating, sending responses back from the chat completions API
	}

	resp, err := client.GetChatCompletionsStream(ctx, azopenai.ChatCompletionsOptions{
		// This is a conversation in progress.
		// NOTE: all messages count against token usage for this API.
		Messages:       messages,
		N:              to.Ptr[int32](1),
		DeploymentName: &modelDeploymentID,
	}, nil)

	if err != nil {
		//  TODO: Update the following line with your application specific error handling logic
		log.Fatalf("ERROR: %s", err)
		return "", err
	}

	defer resp.ChatCompletionsStream.Close()

	r := g.RequestFromCtx(ctx)

	for {
		chatCompletions, err := resp.ChatCompletionsStream.Read()

		if errors.Is(err, io.EOF) {
			break
		}

		if err != nil {
			//  TODO: Update the following line with your application specific error handling logic
			log.Fatalf("ERROR: %s", err)
			break
		}

		for _, choice := range chatCompletions.Choices {
			text := ""

			if choice.Delta.Content != nil {
				text = *choice.Delta.Content
			}

			/*role := ""
			if choice.Delta.Role != nil {
				role = string(*choice.Delta.Role)
			}
			fmt.Fprintf(os.Stderr, "Content[%d], role %q: %q\n", *choice.Index, role, text)*/
			r.Response.Writefln("%s", text)
			r.Response.Flush()
			log.Println(text)
		}
		time.Sleep(time.Millisecond * 10)
	}

	r.ExitAll()

	return "", nil
}

package script

import (
	"context"
	"testing"

	"github.com/robertkrimen/otto"

	pb "12345/api/pbentity"
)

func TestHTTP(t *testing.T) {
	vm := NewOttoVM()
	core := NewCore(context.Background())
	core.SetVM(vm)
	vm.Set("core", core)

	core.SetSession(&pb.Session{
		SId: "da6e3655-fa19-4ea2-aeed-1c8d3a88f0ce",
		Q:   &pb.Message{Content: "那重量呢？"},
	})

	core.SetBotSetting(&pb.BotSetting{
		Prompt:        "你是一个经验丰富的科学家",
		MaxHistoryLen: 3,
		ModelId:       "gpt-3.5-turbo",
	})

	//vm.Set("h", h)

	code := `
		(function () {
		  var h = core.NewHttpClient();
		  h.R.SetHeader("Content-Type", "application/json");
		  h.R.SetHeader("api-key", "");

		  // mock lastMsgs
		  var lastMsgs = [{Role: 3, Content: "地球的周长是大约40075公里。"},{Role: 2, Content: "地球周长是多少呢"}];

		  var postData = {};
		  postData.messages = [];
		  //var lastMsgs = core.GetLastHistoryMsgs(_setting.MaxHistoryLen);
		  for (var i = 0; i < lastMsgs.length; i++) {
			  var msg = lastMsgs[i];
			  var role = msg.Role == 2 ? "user" : "assistant";
			  postData.messages.push({"role": role, "content": msg.Content});
		  }

		  // add prompt
		  postData.messages.push({"role": "system", "content": _setting.Prompt});

		  // reverse messages order
		  postData.messages.reverse();

		  // append current question
		  postData.messages.push({"role": "user", "content": _session.Q});

		  h.R.SetBody(JSON.stringify(postData));
		  core.Info(JSON.stringify(postData));

	      //h.R.SetBody('{"messages":[{"role": "system", "content": "你是一个经验丰富的儿童英语教育专家"},{"role": "user", "content": "怎么给母语非英语儿童生动的讲清楚 怎么记单词，请给我一个可以可以很好落地执行的方法谢谢。"}]}');
		  h.Post("https://azopenai-eus2.openai.azure.com/openai/deployments/gpt3516k/chat/completions?api-version=2024-03-01-preview");
		  h.Log();
		  var obj = JSON.parse(h.Body());

		  // fill Answer & return
		  var ans = core.NewModelAnswer();
		  ans.Answer = obj.choices[0].message.content
		  ans.TokenCount = obj.usage.total_tokens;
		  core.Info(ans);
		  return ans;
		})()
		  `

	if ans, err := vm.Run(code); err != nil {
		t.Fatal(err)
	} else {
		t.Log("ans", ans)

		if oval, ok := ans.(otto.Value); ok {
			t.Log("ans otto value type test ok")
			tmp, _ := oval.Export()
			t.Log("oval:", tmp)

		}

	}

	/*if h.R.Header.Get("jsjs") != "123123" {
		t.Fatal("jsjs not set")
	}

	t.Log("r.SetBody", h.R.Body)*/

}

func TestResponse(t *testing.T) {
	vm := NewOttoVM()
	core := NewCore(context.Background())
	core.SetVM(vm)
	vm.Set("core", core)

	/*code := `
		(
			function () {
				var ans = core.Call("test");
				core.Info(ans);
				core.Info(ans.Answer);
			}
		) ()
	  `

	if _, err := vm.Run(code); err != nil {
		t.Fatal(err)
	}*/

	/*if h.LastError.Error() != "this is a new error" {
		t.Fatal("this is a new error")
	}

	h.Log()*/
}

func TestCoreSetVar(t *testing.T) {
	vm := New(context.Background())
	code := `
		(
			function () {
				core.SetVar("testkeys", "test", "test");
				core.Info(core.GetVar("testkeys", "test"));

				core.SetVar("testkeys", "test2", {"a": 1, "b": 2});
				core.Info(core.GetVar("testkeys", "test2"));
			}
		) ()
	  `

	if _, err := vm.vm.Run(code); err != nil {
		t.Fatal(err)
	}

}

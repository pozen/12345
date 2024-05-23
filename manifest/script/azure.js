(function () {
    var h = core.NewHttpClient();
    h.R.SetHeader("Content-Type", "application/json");
    h.R.SetHeader("api-key", "cffab70f7240451e9b965c0e412c01d6");

    // make post body data
    var postData = {};
    postData.messages = [];
    var lastMsgs = core.GetLastHistoryMsgs(_setting.MaxHistoryLen);
    for (var i = 0; i < lastMsgs.length; i++) {
        var msg = lastMsgs[i];
        var role = msg.Role == 2 ? "user" : "assistant";
        postData.messages.push({ "role": role, "content": msg.Content });
    }
    // add prompt
    postData.messages.push({ "role": "system", "content": _setting.Prompt });
    // reverse messages order
    postData.messages.reverse();
    // append current question
    postData.messages.push({ "role": "user", "content": _session.Q });
    if (_session.UseStream) { postData.stream = true; h.R.SetDoNotParseResponse(true); }

    // do request
    h.R.SetBody(JSON.stringify(postData));
    h.Post("https://azopenai-eus2.openai.azure.com/openai/deployments/gpt3516k/chat/completions?api-version=2024-03-01-preview");
    h.Log();

    if (_session.UseStream) {
        for (; ;) {
            var line = h.StreamRead();
            core.Info("stream read:")
            core.Info(line);
            if (line == "[DONE]") {
                return;
            }
            if (line.indexOf("data:") == -1) {
                break
            }
            var data = line.substring(5);
            core.Info(data);
            var obj = JSON.parse(data);
            if (obj.choices.length > 0 && obj.choices[0].delta && obj.choices[0].delta.content) h.StreamWrite(obj.choices[0].delta.content);
        }
        return;
    }

    // fill Answer & return
    var obj = JSON.parse(h.Body());
    var ans = core.NewModelAnswer();
    ans.Answer = obj.choices[0].message.content
    ans.TokenCount = obj.usage.total_tokens;
    core.Info(ans);
    return ans;
})()
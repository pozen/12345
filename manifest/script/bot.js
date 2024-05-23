(
    function () {
        _setting.Prompt = "你是一个经验丰富的科学家";
        _setting.MaxHistoryLen = 5;

        var ans = core.Call("xospx901spgd0c99t7v280k100196s91");
        core.Info(ans);
        core.Info(ans.Answer);
        return ans;
    }
)()
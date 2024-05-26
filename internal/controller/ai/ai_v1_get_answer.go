package ai

import (
	"context"

	v1 "12345/api/ai/v1"
	"12345/internal/modules/ai"

	"github.com/gogf/gf/v2/encoding/gjson"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/glog"
)

func (c *ControllerV1) GetAnswer(ctx context.Context, req *v1.GetAnswerReq) (res *v1.GetAnswerRes, err error) {
	r := g.RequestFromCtx(ctx)
	data := r.GetBody()
	glog.Debug(ctx, "in GetAnswer", string(data))
	gjson.New(data).Scan(&req)
	glog.Debug(ctx, "in GetAnswer", req, req.Msg.Content, req.Msg.R, req.Msg.T, req.Msg.Url)
	ans, ret, _ := ai.API().GetAnswer(ctx, req.Tid, req.Sid, &req.Msg)
	res = &v1.GetAnswerRes{Ans: ans, ModelAns: ret}
	return res, nil
}

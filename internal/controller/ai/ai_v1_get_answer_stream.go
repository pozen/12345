package ai

import (
	"context"

	v1 "12345/api/ai/v1"
	"12345/internal/modules/ai"

	"github.com/gogf/gf/v2/frame/g"
)

func (c *ControllerV1) GetAnswerStream(ctx context.Context, req *v1.GetAnswerStreamReq) (res *v1.GetAnswerStreamRes, err error) {
	r := g.RequestFromCtx(ctx)

	r.Response.Header().Set("Content-Type", "text/event-stream")
	r.Response.Header().Set("Cache-Control", "no-cache")
	r.Response.Header().Set("Connection", "keep-alive")

	ai.API().GetAnswerStream(ctx, req.Uid, req.Tid, req.Sid, req.Q)

	return nil, nil
}

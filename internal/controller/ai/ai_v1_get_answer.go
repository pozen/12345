package ai

import (
	"context"

	v1 "12345/api/ai/v1"
	"12345/internal/modules/ai"
)

func (c *ControllerV1) GetAnswer(ctx context.Context, req *v1.GetAnswerReq) (res *v1.GetAnswerRes, err error) {
	ans, ret, _ := ai.API().GetAnswer(ctx, req.Uid, req.Tid, req.Sid, req.Q)
	res = &v1.GetAnswerRes{Ans: ans, ModelAns: ret}
	return res, nil
}

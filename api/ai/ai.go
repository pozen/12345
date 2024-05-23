// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package ai

import (
	"context"

	"12345/api/ai/v1"
)

type IAiV1 interface {
	GetAnswer(ctx context.Context, req *v1.GetAnswerReq) (res *v1.GetAnswerRes, err error)
	GetAnswerStream(ctx context.Context, req *v1.GetAnswerStreamReq) (res *v1.GetAnswerStreamRes, err error)
}

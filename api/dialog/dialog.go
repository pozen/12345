// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package dialog

import (
	"context"

	"12345/api/dialog/v1"
)

type IDialogV1 interface {
	AddMsg(ctx context.Context, req *v1.AddMsgReq) (res *v1.AddMsgRes, err error)
	GetMsgList(ctx context.Context, req *v1.GetMsgListReq) (res *v1.GetMsgListRes, err error)
	UpsertSession(ctx context.Context, req *v1.UpsertSessionReq) (res *v1.UpsertSessionRes, err error)
	GetSessionList(ctx context.Context, req *v1.GetSessionListReq) (res *v1.GetSessionListRes, err error)
}

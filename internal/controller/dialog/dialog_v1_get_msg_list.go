package dialog

import (
	"context"

	v1 "12345/api/dialog/v1"

	d "12345/internal/modules/dialog"

	"github.com/gogf/gf/v2/os/gtime"
)

func (c *ControllerV1) GetMsgList(ctx context.Context, req *v1.GetMsgListReq) (res *v1.GetMsgListRes, err error) {
	bt := gtime.NewFromTimeStamp(req.Begints)
	et := gtime.NewFromTimeStamp(req.Endts)
	msgs, err := d.API().GetMsgList(ctx, req.SID, bt, et, req.PageNum, req.Page)
	res = &v1.GetMsgListRes{
		Msgs: msgs,
	}
	return res, err
}

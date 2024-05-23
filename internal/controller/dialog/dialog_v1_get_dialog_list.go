package dialog

import (
	"context"

	v1 "12345/api/dialog/v1"
	d "12345/internal/modules/dialog"

	"github.com/gogf/gf/v2/os/gtime"
)

func (c *ControllerV1) GetSessionList(ctx context.Context, req *v1.GetSessionListReq) (res *v1.GetSessionListRes, err error) {
	bt := gtime.NewFromTimeStamp(req.Begints)
	et := gtime.NewFromTimeStamp(req.Endts)
	ss, err := d.API().GetDialogList(ctx, req.Uid, bt, et, req.PageNum, req.Page)
	res = &v1.GetSessionListRes{
		Sessions: ss,
	}
	return res, err
}

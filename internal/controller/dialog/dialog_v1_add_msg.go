package dialog

import (
	"context"

	v1 "12345/api/dialog/v1"
	"12345/internal/model/entity"
	d "12345/internal/modules/dialog"
)

func (c *ControllerV1) AddMsg(ctx context.Context, req *v1.AddMsgReq) (res *v1.AddMsgRes, err error) {
	msg, _ := d.API().AddMsg(ctx, entity.Message{
		Sid:     req.SID,
		Uid:     req.UID,
		T:       req.T,
		Content: req.Content,
		R:       req.Role,
	})

	res = &v1.AddMsgRes{Msg: msg}
	return res, nil
}

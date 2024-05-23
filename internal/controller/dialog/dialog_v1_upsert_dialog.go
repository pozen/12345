package dialog

import (
	"context"

	v1 "12345/api/dialog/v1"
	"12345/internal/model/entity"
	d "12345/internal/modules/dialog"

	"github.com/gogf/gf/v2/os/gtime"
)

func (c *ControllerV1) UpsertSession(ctx context.Context, req *v1.UpsertSessionReq) (res *v1.UpsertSessionRes, err error) {
	s, e := d.API().UpsertDialog(ctx, entity.Dialog{
		Id:        req.Id,
		Uid:       req.Uid,
		Title:     req.Title,
		Describe:  req.Desc,
		UpdatedAt: gtime.Now(),
		CreatedAt: gtime.Now(),
	})
	res = &v1.UpsertSessionRes{
		S: s,
	}
	return res, e
}

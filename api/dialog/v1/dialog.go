package v1

import (
	"12345/internal/model/entity"

	"github.com/gogf/gf/v2/frame/g"
)

type UpsertSessionReq struct {
	g.Meta `path:"/upsert_session" tags:"upsertSession" method:"post"`
	Uid    string `v:"required"`
	Id     string ` dc:"session id"`
	Title  string `v:"required"`
	Desc   string `dc:"desc"`
}

type UpsertSessionRes struct {
	g.Meta `mime:"application/json" example:"string"`
	S      entity.Dialog
}

type GetSessionListReq struct {
	g.Meta  `path:"/get_session_list" tags:"sessionList" method:"post"`
	Uid     string
	Begints int64
	Endts   int64
	Page    int
	PageNum int
}

type GetSessionListRes struct {
	g.Meta   `mime:"application/json" example:"string"`
	Sessions []entity.Dialog
}

package v1

import (
	"github.com/gogf/gf/v2/frame/g"

	"12345/internal/model/entity"
)

type AddMsgReq struct {
	g.Meta  `path:"/add_msg" tags:"add_msg" method:"post"`
	SID     string `dc:"session id"`
	UID     string
	T       int64
	Role    int64  `dc:"role"`
	Content string `dc:"content"`
}

type AddMsgRes struct {
	g.Meta `mime:"application/json" example:"string"`
	Msg    entity.Message
}

type GetMsgListReq struct {
	g.Meta  `path:"/get_msgs_list" tags:"sessionList" method:"post"`
	SID     string
	Begints int64
	Endts   int64
	Page    int
	PageNum int
}

type GetMsgListRes struct {
	g.Meta `mime:"application/json" example:"string"`
	Msgs   []entity.Message
}

package v1

import (
	"github.com/gogf/gf/v2/frame/g"
)

// / -------------- Get answer APIs -----------------------------------------------
type CallToolReq struct {
	g.Meta `path:"/call_tool" tags:"call_tool" method:"post"`
	Tid    string `dc:"tool id"`
	Uid    string
	Q      string `dc:"question"`
}

type CallToolRes struct {
	g.Meta `mime:"application/json" example:"string"`
	Ans    string `dc:"answer"`
}

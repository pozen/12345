package v1

import (
	"github.com/gogf/gf/v2/frame/g"
)

// / -------------- Get answer APIs -----------------------------------------------
type GetAnswerReq struct {
	g.Meta `path:"/get_answer" tags:"get_answer" method:"post"`
	Sid    string `dc:"session id"`
	Uid    string
	Tid    string
	Q      string `dc:"question"`
}

type GetAnswerRes struct {
	g.Meta   `mime:"application/json" example:"string"`
	Ans      string `dc:"answer"`
	ModelAns interface{}
}

type GetAnswerStreamReq struct {
	g.Meta `path:"/get_answer_stream" tags:"get_answer_stream" method:"post"`
	Sid    string `dc:"session id"`
	Uid    string
	Tid    string
	Q      string `dc:"question"`
}

type GetAnswerStreamRes struct {
	g.Meta `mime:"application/json" example:"string"`
}

package ai

import (
	"12345/api/pbentity"
	"context"
)

type IAiAPI interface {
	GetAnswer(ctx context.Context, tid, sid string, q *pbentity.Message) (string, interface{}, error)
	GetAnswerStream(ctx context.Context, tid, sid string, q *pbentity.Message) (string, error)
}

var _api IAiAPI

func SetUserAPI(api IAiAPI) {
	_api = api
}

func API() IAiAPI {
	return _api
}

func init() {
	_api = &sAI2{}
}

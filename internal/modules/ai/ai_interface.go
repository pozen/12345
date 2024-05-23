package ai

import (
	"context"
)

type IAiAPI interface {
	GetAnswer(ctx context.Context, uid, tid, sid, q string) (string, interface{}, error)
	GetAnswerStream(ctx context.Context, uid, tid, sid, q string) (string, error)
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

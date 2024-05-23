package tool

import (
	//pb "12345/api/pbentity"
	"12345/internal/model/entity"
	"context"
)

type IToolAPI interface {
	UpsertTool(ctx context.Context, uid, org string, tool *entity.Tool) (*entity.Tool, error)
	GetToolList(ctx context.Context, uid, org, typ, from string) ([]*entity.Tool, error)
	DelTools(ctx context.Context, uid, org string, ids []string) error
	GetTool(ctx context.Context, uid, org, id string) *entity.Tool
}

var _api IToolAPI

func SetUserAPI(api IToolAPI) {
	_api = api
}

func API() IToolAPI {
	return _api
}

func init() {
	_api = &sTool{}
}

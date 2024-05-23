package account

import (
	pb "12345/api/pbentity"
	"12345/internal/model/entity"
	"context"
)

type IAccountAPI interface {
	CtxWithUser(ctx context.Context, user *pb.UID) context.Context
	ParseUserFromCtx(ctx context.Context) *pb.UID
	GetProfile(ctx context.Context, uid string) (*entity.Uprofile, error)
	SetProfile(ctx context.Context, uid string, profile *entity.Uprofile) error
	GetAccount(ctx context.Context, uid string) (*entity.Account, error)
}

var _api IAccountAPI

func SetUserAPI(api IAccountAPI) {

	_api = api
}

func API() IAccountAPI {
	return _api
}

func init() {
	SetUserAPI(&sAccount{})
}

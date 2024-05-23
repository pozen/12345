package dialog

import (
	"12345/internal/model/entity"
	"context"

	pb "12345/api/pbentity"

	"github.com/gogf/gf/v2/os/gtime"
)

type IDialogAPI interface {
	AddMsg(ctx context.Context, msg entity.Message) (entity.Message, error)
	GetMsgList(ctx context.Context, sid string, begints, endts *gtime.Time, pageSize, pageCount int) ([]entity.Message, error)
	UpsertDialog(ctx context.Context, s entity.Dialog) (entity.Dialog, error)
	GetDialogList(ctx context.Context, uid string, begints, endts *gtime.Time, pageSize, pageCount int) ([]entity.Dialog, error)
	GetLastMsgs(ctx context.Context, uid, sid string, limit int) ([]pb.Message, error)
	DelDialog(ctx context.Context, uid, org, sid string) error
}

var _api IDialogAPI

func SetUserAPI(api IDialogAPI) {
	_api = api
}

func API() IDialogAPI {
	return _api
}

func init() {
	_api = &sDialog{}
}

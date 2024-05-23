package store

import "context"

type IStore interface {
	GetObj(ctx context.Context, obj string) ([]byte, error)
	PreSignedPut(ctx context.Context, obj string) (string, string, error)
}

var _api IStore

func API() IStore {
	return _api
}

func SetAPI(api IStore) {
	_api = api
}

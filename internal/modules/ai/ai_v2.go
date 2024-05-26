package ai

import (
	"context"
	"errors"

	"12345/internal/modules/account"
	"12345/internal/modules/script"
	"12345/internal/modules/tool"

	pb "12345/api/pbentity"

	"github.com/gogf/gf/v2/os/glog"
)

type sAI2 struct {
}

func (s *sAI2) GetAnswer(ctx context.Context, tid, sid string, q *pb.Message) (string, interface{}, error) {
	glog.Debug(ctx, "GetAnswer", tid, sid, q)

	u := account.API().ParseUserFromCtx(ctx)

	t := tool.API().GetTool(ctx, u.Id, u.Org, tid)
	if t == nil {
		return "", nil, errors.New("tool not found")
	}
	s_ := script.New(ctx)
	s_.Core().SetSession(&pb.Session{
		SId:       sid,
		Q:         q,
		UseStream: false,
	})

	ret, err := s_.VM().Run(t.Code)

	defer s_.Destroy()
	return "", ret, err
}

func (s *sAI2) GetAnswerStream(ctx context.Context, tid, sid string, q *pb.Message) (string, error) {

	glog.Debug(ctx, "GetAnswerStream", tid, sid, q)

	u := account.API().ParseUserFromCtx(ctx)

	t := tool.API().GetTool(ctx, u.Id, u.Org, tid)
	if t == nil {
		return "", errors.New("tool not found")
	}
	s_ := script.New(ctx)
	s_.Core().SetSession(&pb.Session{
		SId:       sid,
		Q:         q,
		UseStream: true,
	})
	_, err := s_.VM().Run(t.Code)

	defer s_.Destroy()
	return "", err
}

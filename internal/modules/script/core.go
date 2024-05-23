package script

import (
	"context"
	"errors"

	"12345/internal/modules/account"
	"12345/internal/modules/dialog"
	"12345/internal/modules/tool"

	pb "12345/api/pbentity"

	"github.com/gogf/gf/v2/os/glog"
)

type Core struct {
	vm       VM
	ctx      context.Context
	httpCli  map[string]*Http
	_session *pb.Session
	_setting *pb.BotSetting
	_vars    map[string]interface{}
}

func NewCore(ctx context.Context) *Core {
	return &Core{
		ctx:      ctx,
		httpCli:  make(map[string]*Http),
		_session: &pb.Session{},
		_setting: &pb.BotSetting{},
		_vars:    make(map[string]interface{}),
	}
}

func (t *Core) SetVM(vm VM) {
	t.vm = vm
	vm.Set("_session", t._session)
	vm.Set("_setting", t._setting)
}

func (t *Core) SetVar(ns, key string, val interface{}) {
	t._vars[ns+":"+key] = val
}

func (t *Core) GetVar(ns, key string) interface{} {
	return t._vars[ns+":"+key]
}

func (t *Core) SetSession(session *pb.Session) {
	*t._session = *session
	glog.Debug(context.Background(), "set session", t._session)
}

func (t *Core) SetBotSetting(setting *pb.BotSetting) {
	*t._setting = *setting
}

// get last history msgs
func (t *Core) GetLastHistoryMsgs(limit int) []pb.Message {
	glog.Debug(context.Background(), "get last history msgs", t._session)
	msgs, err := dialog.API().GetLastMsgs(context.Background(), "", t._session.SId, limit)
	if err != nil {
		glog.Error(context.Background(), err)
		return []pb.Message{{Content: err.Error()}}
	}
	return msgs
}

func (t *Core) Call(id string) interface{} {
	u := account.API().ParseUserFromCtx(t.ctx)
	_tool := tool.API().GetTool(context.Background(), u.Id, u.Org, id)
	if _tool == nil {
		return errors.New("tool not found")
	}
	v, e := t.vm.Run(_tool.Code)
	if e != nil {
		glog.Error(context.Background(), e)
		return e.Error()
	}
	return v
	/*v, e := t.vm.Run(`
		(
			function () {
				var ans = core.NewModelAnswer();
				ans.Answer = "this is a new answer";
				ans.Score = 100;
				ans.TokenCount = 100;
				ans.TokenPrice = 0.01;
				return ans;
			}
		) ()`)
	if e != nil {
		glog.Error(context.Background(), e)
		return e.Error()
	}
	return v*/
}

func (t *Core) NewHttpClient() *Http {
	h := NewHttp(t.ctx)
	t.httpCli[h.Id] = h
	return h
}

func (t *Core) Destroy() {
	for _, v := range t.httpCli {
		v.Close()
	}
}

func (t *Core) NewModelAnswer() *pb.ModelAnswer {
	return &pb.ModelAnswer{}
}

func (t *Core) NewError(err string) error {
	return errors.New(err)
}

func (t *Core) Debug(vals ...interface{}) {
	glog.Debug(context.Background(), vals...)
}

func (t *Core) Debugf(f string, vals ...interface{}) {
	glog.Debugf(context.Background(), f, vals...)
}

func (t *Core) Info(vals ...interface{}) {
	glog.Debug(context.Background(), vals...)
}

func (t *Core) Infof(f string, vals ...interface{}) {
	glog.Debugf(context.Background(), f, vals...)
}

func (t *Core) Error(vals ...interface{}) {
	glog.Error(context.Background(), vals...)
}

func (t *Core) Errorf(f string, vals ...interface{}) {
	glog.Debugf(context.Background(), f, vals...)
}

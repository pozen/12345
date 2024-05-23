package script

import (
	"context"

	"12345/internal/modules/util"

	"github.com/go-resty/resty/v2"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/glog"
	"github.com/gogf/gf/v2/util/guid"
)

type Http struct {
	Cli       *resty.Client
	R         *resty.Request
	Rsp       *resty.Response
	Id        string
	LastError error
	Ctx       context.Context
	SE        *util.EventReader
}

func (t *Http) Get(url string) *resty.Response {
	t.Rsp, t.LastError = t.R.Get(url)
	return t.Rsp
}

func (t *Http) Post(url string) *resty.Response {
	t.Rsp, t.LastError = t.R.Post(url)
	return t.Rsp
}

func (t *Http) Body() string {
	return string(t.Rsp.Body())
}

// get stream data , line by line
func (t *Http) StreamRead() string {
	if t.SE == nil {
		t.SE = util.NewEventReader(t.Rsp.RawBody())
	}
	return t.SE.Read()
}

// write stream data to the http.Response of ctx, which contains the CALL TOOL REQUEST
func (t *Http) StreamWrite(data string) {
	r := g.RequestFromCtx(t.Ctx)
	r.Response.Writefln("%s", data)
	r.Response.Flush()
}

// close Http client
func (t *Http) Close() {
	if t.SE != nil {
		t.SE.Close()
	}
}

func (t *Http) Log() {
	glog.Infof(context.Background(), "url: %s, status code: %d, body: %s", t.R.URL, t.Rsp.StatusCode(), t.Rsp.Body())
}

func NewHttp(ctx context.Context) *Http {
	cli := resty.New()
	r := cli.R()
	rsp := &resty.Response{}
	return &Http{
		R:   r,
		Cli: cli,
		Rsp: rsp,
		Id:  guid.S(),
		Ctx: ctx,
	}
}

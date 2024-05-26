package cmd

import (
	"context"

	_ "github.com/gogf/gf/contrib/drivers/pgsql/v2"
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/i18n/gi18n"
	"github.com/gogf/gf/v2/net/ghttp"
	"github.com/gogf/gf/v2/os/gcmd"

	"12345/internal/controller/ai"
	"12345/internal/controller/dialog"
	"12345/internal/controller/grpc"
	"12345/internal/modules/account"
	"12345/internal/modules/db"
	"12345/internal/modules/store"

	gapi "12345/api/grpc/v1"
	pb "12345/api/pbentity"

	"github.com/casdoor/casdoor-go-sdk/casdoorsdk"
	grpcx "github.com/gogf/gf/contrib/rpc/grpcx/v2"
	"github.com/gogf/gf/v2/errors/gcode"
	"github.com/gogf/gf/v2/errors/gerror"
	"github.com/gogf/gf/v2/os/glog"
	grpc_ "google.golang.org/grpc"
	"google.golang.org/grpc/metadata"
)

var (
	casdoorClient = InitAuthClient()

	Main = gcmd.Command{
		Name:  "main",
		Usage: "main",
		Brief: "start http server",
		Func: func(ctx context.Context, parser *gcmd.Parser) (err error) {

			InitDB()
			InitStore()

			// http server
			s := g.Server()
			s.Group("/api", func(group *ghttp.RouterGroup) {
				group.Middleware(
					func(r *ghttp.Request) {
						token := r.Header.Get("Authorization")
						if token == "" {
							err = gerror.NewCode(gcode.CodeNotAuthorized)
							return
						}
						if u := checkToken(ctx, token); u != nil {
							r.SetCtx(account.API().CtxWithUser(r.Context(), u))
						} else {
							err = gerror.NewCode(gcode.CodeNotAuthorized)
							return
						}
						//glog.Debug(ctx, "token", token)
						// auth here
						r.SetCtx(gi18n.WithLanguage(r.Context(), "en"))
						r.Middleware.Next()
					},
					func(r *ghttp.Request) {
						corsOptions := r.Response.DefaultCORSOptions()
						corsOptions.AllowDomain = []string{"*"}
						r.Response.CORS(corsOptions)
						r.Middleware.Next()
					},
					ghttp.MiddlewareHandlerResponse,
				)
				group.Bind(
					dialog.NewV1(),
					ai.NewV1(),
				)
			})
			s.Group("/stream_api", func(group *ghttp.RouterGroup) {
				group.Middleware(
					func(r *ghttp.Request) {
						token := r.Header.Get("Authorization")
						if token == "" {
							err = gerror.NewCode(gcode.CodeNotAuthorized)
							return
						}
						if u := checkToken(ctx, token); u != nil {
							r.SetCtx(account.API().CtxWithUser(r.Context(), u))
						} else {
							err = gerror.NewCode(gcode.CodeNotAuthorized)
							return
						}
						//glog.Debug(ctx, "token", token)
						r.Middleware.Next()
					},
					func(r *ghttp.Request) {
						r.SetCtx(gi18n.WithLanguage(r.Context(), "en"))
						r.Middleware.Next()
					},
					func(r *ghttp.Request) {
						corsOptions := r.Response.DefaultCORSOptions()
						corsOptions.AllowDomain = []string{"*"}
						r.Response.CORS(corsOptions)
						r.Middleware.Next()
					},
				)
				group.Bind(
					ai.NewV1(),
				)
			})

			go s.Run()

			// grpc server
			c := grpcx.Server.NewConfig()
			c.Options = []grpc_.ServerOption{
				grpc_.UnaryInterceptor(GrpcAuth),
			}
			c.Address = "0.0.0.0:8082"
			gs := grpcx.Server.New(c)
			grpc.Register(gs)
			gs.Run()

			return nil
		},
	}
)

func InitAuthClient() *casdoorsdk.Client {
	val, _ := g.Cfg().Get(context.Background(), "casdoor.endpoint")
	endPoint := val.String()
	val, _ = g.Cfg().Get(context.Background(), "casdoor.clientId")
	clientId := val.String()
	val, _ = g.Cfg().Get(context.Background(), "casdoor.clientSecret")
	clientSecret := val.String()
	val, _ = g.Cfg().Get(context.Background(), "casdoor.certificate")
	certificate := val.String()
	val, _ = g.Cfg().Get(context.Background(), "casdoor.organizationName")
	orgName := val.String()
	val, _ = g.Cfg().Get(context.Background(), "casdoor.applicationName")
	applicationName := val.String()

	glog.Debug(context.Background(), "casdoor.endPoint:", endPoint, "casdoor.clientId:", clientId, "casdoor.clientSecret:", clientSecret, "casdoor.certificate:", certificate, "casdoor.organizationName:", orgName, "casdoor.applicationName:", applicationName)
	return casdoorsdk.NewClient(endPoint, clientId, clientSecret, certificate, orgName, applicationName)
}

func InitDB() {
	glog.Info(context.Background(), "init db")
	val, _ := g.Cfg().Get(context.Background(), "db.type")
	typ := val.String()
	val, _ = g.Cfg().Get(context.Background(), "db.dsn")
	dsn := val.String()
	glog.Debug(context.Background(), "db.type:", typ, "db.dsn:", dsn)
	db.Init(typ, dsn)

	glog.Info(context.Background(), "init db done")
}

func InitStore() {
	glog.Info(context.Background(), "init store")
	val, _ := g.Cfg().Get(context.Background(), "store.endpoint")
	endpoint := val.String()
	val, _ = g.Cfg().Get(context.Background(), "store.accessKey")
	accessKey := val.String()
	val, _ = g.Cfg().Get(context.Background(), "store.secretKey")
	secretKey := val.String()
	val, _ = g.Cfg().Get(context.Background(), "store.bucket")
	bucket := val.String()
	val, _ = g.Cfg().Get(context.Background(), "store.schema")
	schema := val.String()
	store.InitStoreS3(endpoint, schema, bucket, accessKey, secretKey)
	glog.Info(context.Background(), "init store done")
}

func checkToken(ctx context.Context, token string) *pb.UID {
	//glog.Debug(ctx, "token:", token)
	claims, err := casdoorClient.ParseJwtToken(token)
	if err != nil {
		glog.Error(ctx, err)
		return nil
	}
	user := &pb.UID{}
	user.Id = claims.User.Id
	user.Org = claims.User.Owner
	glog.Debug(ctx, "user", user)
	return user
}

func GrpcAuth(ctx context.Context, req interface{}, info *grpc_.UnaryServerInfo, handler grpc_.UnaryHandler) (resp interface{}, err error) {
	md, ok := metadata.FromIncomingContext(ctx)
	if ok {
		tokens := md.Get("token")
		u := checkToken(ctx, tokens[0])
		if len(tokens) > 0 && u != nil {
			return handler(account.API().CtxWithUser(ctx, u), req)
			//glog.Debug(ctx, "token:", tokens[0])
		} else {
			return &gapi.CommonRes{EC: &gapi.ErrCode{Code: 401, Msg: "Invalid token"}}, nil
			//return nil, gerror.NewCode(gcode.CodeNotAuthorized)
		}
	} else {
		return &gapi.CommonRes{EC: &gapi.ErrCode{Code: 401, Msg: "Invalid token"}}, nil
		//return nil, errors.New("Invalid token")
	}
}

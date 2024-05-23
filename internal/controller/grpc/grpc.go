package grpc

import (
	v1 "12345/api/grpc/v1"
	"12345/api/pbentity"
	"context"
	"errors"
	"fmt"

	"12345/internal/model/entity"
	"12345/internal/modules/account"
	"12345/internal/modules/dialog"
	"12345/internal/modules/store"
	"12345/internal/modules/tool"

	pbts "google.golang.org/protobuf/types/known/timestamppb"

	grpcx "github.com/gogf/gf/contrib/rpc/grpcx/v2"
	"github.com/gogf/gf/v2/errors/gcode"
	"github.com/gogf/gf/v2/errors/gerror"
	"github.com/gogf/gf/v2/os/glog"
	"github.com/gogf/gf/v2/os/gtime"
)

type Controller struct {
	v1.UnimplementedApiServiceServer
}

func Register(s *grpcx.GrpcServer) {
	v1.RegisterApiServiceServer(s.Server, &Controller{})
}

func toolFromPb(t *pbentity.Tool) *entity.Tool {
	t_ := &entity.Tool{
		Id:     t.Id,
		Uid:    t.Uid,
		OrgId:  t.OrgId,
		Name:   t.Name,
		Code:   t.Code,
		Type:   t.Type,
		Des:    t.Des,
		Shared: t.Shared,
		Tags:   t.Tags,
	}
	if t.UpdatedAt != nil {
		t_.UpdatedAt = gtime.NewFromTime(t.UpdatedAt.AsTime())
	}
	if t.CreatedAt != nil {
		t_.CreatedAt = gtime.NewFromTime(t.CreatedAt.AsTime())
	}
	return t_
}

func toolToPb(t *entity.Tool) *pbentity.Tool {
	pt := &pbentity.Tool{
		Id:     t.Id,
		Uid:    t.Uid,
		OrgId:  t.OrgId,
		Name:   t.Name,
		Code:   t.Code,
		Type:   t.Type,
		Des:    t.Des,
		Shared: t.Shared,
		Tags:   t.Tags,
	}

	if t.UpdatedAt != nil {
		pt.UpdatedAt = pbts.New(t.UpdatedAt.Time)
	}
	if t.CreatedAt != nil {
		pt.CreatedAt = pbts.New(t.CreatedAt.Time)
	}
	return pt
}

func (*Controller) CreateTool(ctx context.Context, req *v1.CreateToolRequest) (res *v1.CreateToolResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	req.Tool.Uid = u.Id
	req.Tool.OrgId = u.Org
	tool, err := tool.API().UpsertTool(ctx, u.Id, u.Org, toolFromPb(req.Tool))
	if err != nil {
		return nil, err
	}
	return &v1.CreateToolResponse{
		Tool: toolToPb(tool),
		EC:   &v1.ErrCode{Code: 0, Msg: "ok"},
	}, nil
}

func (*Controller) GetToolList(ctx context.Context, req *v1.GetToolListRequest) (res *v1.GetToolListResponse, err error) {
	defer func() {
		glog.Debug(ctx, "in GetToolList defer")
		if r := recover(); r != nil {
			glog.Error(ctx, gerror.Wrap(errors.New(fmt.Sprint(r)), "panic"))
		}
	}()

	u := account.API().ParseUserFromCtx(ctx)
	tools, err := tool.API().GetToolList(ctx, u.Id, u.Org, req.Type, req.From)
	if err != nil {
		return nil, err
	}

	pbtools := make([]*pbentity.Tool, 0)
	for _, t := range tools {
		pbtools = append(pbtools, toolToPb(t))
	}
	return &v1.GetToolListResponse{
		Tools: pbtools,
		EC:    &v1.ErrCode{Code: 0, Msg: "ok"},
	}, nil
}

func (*Controller) DelTools(ctx context.Context, req *v1.DelToolsRequest) (res *v1.DelToolsResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	err = tool.API().DelTools(ctx, u.Id, u.Org, req.Ids)
	if err != nil {
		return nil, err
	}
	return &v1.DelToolsResponse{
		EC: &v1.ErrCode{Code: 0, Msg: "ok"},
	}, nil
}

func (*Controller) CallTool(ctx context.Context, req *v1.CallToolRequest) (res *v1.CallToolResponse, err error) {
	return nil, gerror.NewCode(gcode.CodeNotImplemented)
}

func (*Controller) CreateDialog(ctx context.Context, req *v1.AddDialogRequest) (res *v1.AddDialogResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	dialog_, err := dialog.API().UpsertDialog(ctx, entity.Dialog{
		Id:    req.Id,
		Uid:   u.Id,
		OrgId: u.Org,
		Title: req.Title,
		//Describe: req.Describe,
	})
	res = &v1.AddDialogResponse{
		Dialog: &pbentity.Dialog{
			Id:    dialog_.Id,
			Uid:   dialog_.Uid,
			Title: dialog_.Title,
		},
		EC: &v1.ErrCode{Code: 0, Msg: "ok"},
	}
	return res, err
}

func (*Controller) GetDialogList(ctx context.Context, req *v1.GetDialogListRequest) (res *v1.GetDialogListResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	dialogs, err_ := dialog.API().GetDialogList(ctx, u.Id, nil, nil, int(req.PageSize), int(req.Page))

	if err_ != nil {

		return nil, err_
	}

	pbdialogs := make([]*pbentity.Dialog, 0)
	for _, dialog := range dialogs {
		pbdialogs = append(pbdialogs, &pbentity.Dialog{
			Id:    dialog.Id,
			Uid:   dialog.Uid,
			Title: dialog.Title,
		})
	}
	res = &v1.GetDialogListResponse{
		Dialogs: pbdialogs,
		EC:      &v1.ErrCode{Code: 0, Msg: "ok"},
	}
	return res, nil
}

func (*Controller) GetDialog(ctx context.Context, req *v1.GetDialogDetailRequest) (res *v1.GetDialogDetailResponse, err error) {
	return nil, gerror.NewCode(gcode.CodeNotImplemented)
}

func (*Controller) DelDialog(ctx context.Context, req *v1.DelDialogRequest) (res *v1.DelDialogResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	err = dialog.API().DelDialog(ctx, u.Id, u.Org, req.SId)
	return &v1.DelDialogResponse{EC: &v1.ErrCode{Code: 0, Msg: "ok"}}, err
}

func (*Controller) GetDialogMsgList(ctx context.Context, req *v1.GetDialogMsgListRequest) (res *v1.GetDialogMsgListResponse, err error) {
	msgs, err_ := dialog.API().GetMsgList(ctx, req.SId, nil, nil, int(req.PageSize), int(req.Page))

	if err_ != nil {
		return nil, err_
	}

	pbmsgs := make([]*pbentity.Message, 0)
	for _, msg := range msgs {
		pbmsgs = append(pbmsgs, &pbentity.Message{
			Id:        msg.Id,
			Sid:       msg.Sid,
			Uid:       msg.Uid,
			Content:   msg.Content,
			CreatedAt: pbts.New(msg.CreatedAt.Time),
			R:         msg.R,
			T:         msg.T,
			Url:       msg.Url,
			Width:     msg.Width,
			Height:    msg.Height,
		})
	}
	res = &v1.GetDialogMsgListResponse{
		Msgs: pbmsgs,
		EC:   &v1.ErrCode{Code: 0, Msg: "ok"},
	}
	return res, nil
}

func (*Controller) AddDialogMsg(ctx context.Context, req *v1.AddDialogMsgRequest) (res *v1.AddDialogMsgResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	msg, err_ := dialog.API().AddMsg(ctx, entity.Message{
		Id:      req.Msg.Id,
		Sid:     req.Msg.Sid,
		OrgId:   u.Org,
		Uid:     u.Id,
		Content: req.Msg.Content,
		R:       req.Msg.R,
		T:       req.Msg.T,
		Url:     req.Msg.Url,
		Width:   req.Msg.Width,
		Height:  req.Msg.Height,
	})

	if err_ != nil {
		return nil, err_
	}

	res = &v1.AddDialogMsgResponse{
		Msg: &pbentity.Message{
			Id:        msg.Id,
			Sid:       msg.Sid,
			Uid:       msg.Uid,
			Content:   msg.Content,
			CreatedAt: pbts.New(msg.CreatedAt.Time),
			R:         msg.R,
			T:         msg.T,
			Url:       msg.Url,
			Width:     msg.Width,
			Height:    msg.Height,
		},
		EC: &v1.ErrCode{Code: 0, Msg: "ok"},
	}
	return res, nil
}

func profileToPb(profile *entity.Uprofile) *pbentity.Uprofile {
	pbprofile := &pbentity.Uprofile{
		Id:       profile.Id,
		Uid:      profile.Uid,
		OrgId:    profile.OrgId,
		Nickname: profile.Nickname,
		Avatar:   profile.Avatar,
		Status:   profile.Status,
		Des:      profile.Des,
		HomePage: profile.HomePage,
		//Tags:        profile.Tags,
		ThemeMode:   profile.ThemeMode,
		ThemeColor:  profile.ThemeColor,
		Locale:      profile.Locale,
		Timezone:    profile.Timezone,
		UseStream:   profile.UseStream,
		SelectedBot: profile.SelectedBot,
	}
	if profile.UpdatedAt != nil {
		pbprofile.UpdatedAt = pbts.New(profile.UpdatedAt.Time)
	}
	if profile.CreatedAt != nil {
		pbprofile.CreatedAt = pbts.New(profile.CreatedAt.Time)
	}
	return pbprofile
}

func PbProfileToEntity(profile *pbentity.Uprofile) *entity.Uprofile {
	profile_ := &entity.Uprofile{
		Id:       profile.Id,
		Uid:      profile.Uid,
		OrgId:    profile.OrgId,
		Nickname: profile.Nickname,
		Avatar:   profile.Avatar,
		Status:   profile.Status,
		Des:      profile.Des,
		HomePage: profile.HomePage,
		//Tags:        profile.Tags,
		ThemeMode:   profile.ThemeMode,
		ThemeColor:  profile.ThemeColor,
		Locale:      profile.Locale,
		Timezone:    profile.Timezone,
		UseStream:   profile.UseStream,
		SelectedBot: profile.SelectedBot,
	}
	if profile.UpdatedAt != nil {
		profile_.UpdatedAt = gtime.NewFromTime(profile.UpdatedAt.AsTime())
	}
	if profile.CreatedAt != nil {
		profile_.CreatedAt = gtime.NewFromTime(profile.CreatedAt.AsTime())
	}
	return profile_
}

func (*Controller) GetProfile(ctx context.Context, req *v1.GetProfileRequest) (res *v1.GetProfileResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	profile, err := account.API().GetProfile(ctx, u.Id)
	if err != nil {
		return nil, err
	}
	res = &v1.GetProfileResponse{
		Profile: profileToPb(profile),
		EC:      &v1.ErrCode{Code: 0, Msg: "ok"},
	}
	return res, nil
}

func (*Controller) UpdateProfile(ctx context.Context, req *v1.UpdateProfileRequest) (res *v1.UpdateProfileResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	req.Profile.Uid = u.Id
	req.Profile.OrgId = u.Org
	err = account.API().SetProfile(ctx, u.Id, PbProfileToEntity(req.Profile))
	if err != nil {
		return &v1.UpdateProfileResponse{EC: &v1.ErrCode{Code: 1, Msg: err.Error()}}, err
	}
	return &v1.UpdateProfileResponse{EC: &v1.ErrCode{Code: 0, Msg: "ok"}}, err
}

func accountToAccountPb(account *entity.Account) *pbentity.Account {
	account_ := &pbentity.Account{
		Id:         account.Id,
		Uid:        account.Uid,
		OrgId:      account.OrgId,
		Balance:    account.Balance,
		Cost:       account.Cost,
		Status:     account.Status,
		CostTokens: account.CostTokens,
	}

	if account.UpdatedAt != nil {
		account_.UpdatedAt = pbts.New(account.UpdatedAt.Time)
	}
	if account.CreatedAt != nil {
		account_.CreatedAt = pbts.New(account.CreatedAt.Time)
	}
	return account_
}

func (*Controller) GetAccount(ctx context.Context, req *v1.GetAccountRequest) (res *v1.GetAccountResponse, err error) {
	u := account.API().ParseUserFromCtx(ctx)
	ac, err2 := account.API().GetAccount(ctx, u.Id)
	if err2 != nil {
		return &v1.GetAccountResponse{EC: &v1.ErrCode{Code: 1, Msg: err2.Error()}}, err2
	}
	return &v1.GetAccountResponse{Account: accountToAccountPb(ac), EC: &v1.ErrCode{Code: 0, Msg: "ok"}}, nil
}

func (*Controller) PreSignedUrl(ctx context.Context, req *v1.PreSignedUrlRequest) (res *v1.PreSignedUrlResponse, err error) {
	putUrl, url, err2 := store.API().PreSignedPut(ctx, req.ObjName)
	if err2 != nil {
		return &v1.PreSignedUrlResponse{EC: &v1.ErrCode{Code: 1, Msg: err2.Error()}}, err2
	}
	return &v1.PreSignedUrlResponse{Url: url, PutUrl: putUrl, EC: &v1.ErrCode{Code: 0, Msg: "ok"}}, nil
}

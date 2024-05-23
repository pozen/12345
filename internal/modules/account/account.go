package account

import (
	pb "12345/api/pbentity"
	"12345/internal/model/entity"
	"12345/internal/modules/db"
	"context"

	"github.com/gogf/gf/v2/util/guid"
)

type sAccount struct {
}

func (s *sAccount) CtxWithUser(ctx context.Context, user *pb.UID) context.Context {
	return context.WithValue(ctx, "user", user)
}

func (s *sAccount) ParseUserFromCtx(ctx context.Context) *pb.UID {
	return ctx.Value("user").(*pb.UID)
}

func (s *sAccount) GetProfile(ctx context.Context, uid string) (*entity.Uprofile, error) {
	profile := &entity.Uprofile{}
	err := db.DB(ctx, "uprofile").Where("uid = ?", uid).First(profile).Error
	return profile, err
}

func (s *sAccount) SetProfile(ctx context.Context, uid string, profile *entity.Uprofile) error {
	if profile.Id == "" {
		profile.Id = guid.S()
		return db.DB(ctx, "uprofile").Save(profile).Error
	}
	return db.DB(ctx, "uprofile").Where("uid = ?", uid).Updates(profile).Error
}

func (s *sAccount) GetAccount(ctx context.Context, uid string) (*entity.Account, error) {
	ac := &entity.Account{}
	err := db.DB(ctx, "account").Where("uid = ?", uid).First(ac).Error
	return ac, err
}

package tool

import (
	//pb "12345/api/pbentity"
	"12345/internal/model/entity"
	baseDB "12345/internal/modules/db"
	"context"

	"github.com/gogf/gf/v2/os/gtime"
	"github.com/gogf/gf/v2/util/guid"
	"gorm.io/gorm"
	//pbts "google.golang.org/protobuf/types/known/timestamppb"
)

type sTool struct {
}

func db(ctx context.Context) *gorm.DB {
	return baseDB.DB(ctx, "tool")
}

func (s *sTool) UpsertTool(ctx context.Context, uid, org string, tool *entity.Tool) (*entity.Tool, error) {
	var err error
	tool.SetPostgresVal()
	if tool.Id == "" {
		tool.Id = guid.S()
		tool.CreatedAt = gtime.Now()
		err = db(ctx).Create(tool).Error
		//_, err = g.Model("tool").Data(tool).Insert()
	} else {
		tool.UpdatedAt = gtime.Now()
		err = db(ctx).Where("id=? and uid=?", tool.Id, uid).Save(tool).Error
		//_, err = g.Model("tool").Where("id=? and uid=?", tool.Id, uid).Data(tool).Update()
	}
	tool.ParsePostgresVal()
	return tool, err
}

func (s *sTool) GetToolList(ctx context.Context, uid, org, typ, from string) ([]*entity.Tool, error) {
	tools := []*entity.Tool{}
	db_ := db(ctx)
	if typ != "" {
		db_ = db_.Where("type=?", typ)
	}
	if from == "ground" {
		db_ = db_.Where("shared @> ?", entity.PgStrArray{"/"})
	} else {
		db_ = db_.Where("uid=?", uid)
	}
	err := db_.Scan(&tools).Error

	for i := 0; i < len(tools); i++ {
		tools[i].ParsePostgresVal()
	}
	//err := g.Model("tool").Where("uid=?", uid).Page(1, 50).Scan(&tools)

	return tools, err
}

func (s *sTool) DelTools(ctx context.Context, uid, org string, ids []string) error {
	err := db(ctx).Where("id in (?) and uid=?", ids, uid).Delete(&entity.Tool{}).Error
	//_, err := g.Model("tool").Where("id in (?) and uid=?", ids, uid).Delete()
	return err
}

func (s *sTool) GetTool(ctx context.Context, uid, org, id string) *entity.Tool {
	tool := &entity.Tool{}
	err := db(ctx).Where("id=?", id).Scan(tool).Error
	//err := g.Model("tool").Where("id=?", id).Scan(&tool)
	if err != nil {
		return nil
	}
	tool.ParsePostgresVal()
	return tool
}

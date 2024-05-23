package dialog

import (
	"12345/internal/model/entity"
	"12345/internal/modules/db"
	"context"

	"github.com/gogf/gf/v2/os/gtime"
	"github.com/gogf/gf/v2/util/guid"

	"github.com/gogf/gf/v2/os/glog"

	pb "12345/api/pbentity"
)

type sDialog struct {
	//
}

// make session
func (d *sDialog) GetLastMsgs(ctx context.Context, uid, sid string, limit int) ([]pb.Message, error) {

	msgs := []entity.Message{}
	if err := db.DB(ctx, "message").Where("sid = ?", sid).Order("created_at DESC").Limit(limit).Scan(&msgs).Error; err != nil {
		return nil, err
	}
	//if err := g.Model("message").Where("sid = ?", sid).OrderDesc("created_at").Limit(limit).Scan(&msgs); err != nil {
	//	return nil, err
	//}

	glog.Debug(ctx, "GetLastMsgs", "uid", uid, "sid", sid, "limit", limit, "msgs", msgs)

	pbMsgs := []pb.Message{}
	for _, m := range msgs {
		pbMsgs = append(pbMsgs, pb.Message{
			R:       m.R,
			Content: m.Content,
		})
	}
	return pbMsgs, nil
}

func (d *sDialog) AddMsg(ctx context.Context, msg entity.Message) (entity.Message, error) {
	msg.CreatedAt = gtime.Now()
	msg.UpdatedAt = gtime.Now()
	msg.Id = guid.S()
	db.DB(ctx, "message").Create(&msg)
	//g.Model("message").Data(&msg).Insert()
	return msg, nil
}
func (d *sDialog) GetMsgList(ctx context.Context, sid string, begints, endts *gtime.Time, pageSize, pageCount int) ([]entity.Message, error) {
	db := db.DB(ctx, "message").Where("sid = ?", sid)
	if begints != nil {
		db = db.Where("created_at >= ?", begints)
	}
	if endts != nil {
		db = db.Where("created_at <= ?", endts)
	}

	msgs := []entity.Message{}
	db.Order("created_at DESC").Offset((pageCount - 1) * pageSize).Limit(pageSize).Scan(&msgs)

	for i, j := 0, len(msgs)-1; i < j; i, j = i+1, j-1 {
		msgs[i], msgs[j] = msgs[j], msgs[i]
	}
	return msgs, nil
}
func (d *sDialog) UpsertDialog(ctx context.Context, s entity.Dialog) (entity.Dialog, error) {
	if s.Id == "" {
		s.Id = guid.S()
	}
	s.UpdatedAt = gtime.Now()
	s.CreatedAt = gtime.Now()
	db.DB(ctx, "dialog").Create(&s)
	//g.Model("dialog").Data(&s).Insert()
	return s, nil
}
func (d *sDialog) GetDialogList(ctx context.Context, uid string, begints, endts *gtime.Time, pageSize, pageCount int) ([]entity.Dialog, error) {
	dialogs := []entity.Dialog{}

	inst := db.DB(ctx, "dialog").Where("uid = ?", uid)
	//inst := g.Model("dialog").Where("uid = ?", uid)
	if begints != nil {
		inst = inst.Where("created_at >= ?", begints)
	}
	if endts != nil {
		inst = inst.Where("created_at <= ?", endts)
	}
	inst.Order("created_at DESC").Offset((pageCount - 1) * pageSize).Limit(pageSize).Scan(&dialogs)
	return dialogs, nil
}

func (d *sDialog) DelDialog(ctx context.Context, uid, org, sid string) error {
	err := db.DB(ctx, "dialog").Where("id = ? and uid = ?", sid, uid).Delete(&entity.Dialog{}).Error
	//_, err := g.Model("dialog").Where("id = ? and uid = ?", sid, uid).Delete()
	return err
}

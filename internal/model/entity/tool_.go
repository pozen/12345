// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// Tool is the golang structure for table tool.
type Tool struct {
	Id        string      `json:"id" gorm:"column:id"       ` //
	Type      string      `json:"type" gorm:"column:type"      ` //
	OrgId     string      `json:"orgId" gorm:"column:org_id"     ` //
	Uid       string      `json:"uid"  gorm:"column:uid"     ` //
	Name      string      `json:"name"  gorm:"column:name"    ` //
	Des       string      `json:"des"   gorm:"column:des"    ` //
	Code      string      `json:"code"  gorm:column:"code"    ` //
	CreatedAt *gtime.Time `json:"createdAt" gorm:"column:created_at"` //
	UpdatedAt *gtime.Time `json:"updatedAt" gorm:"column:updated_at"` //
	Shared    []string      `json:"shared"  gorm:"-"  ` //
	Tags      []string      `json:"tags"    gorm:"-"  ` //
	Shared_    PgStrArray      `json:"shared"  gorm:"column:shared;type:VARCHAR(40)[]"  ` //
	Tags_      PgStrArray      `json:"tags"    gorm:"column:tags;type:VARCHAR(40)[]"    ` //
}

func (t *Tool) SetPostgresVal() {
	t.Shared_ = Strings2stringsPG(t.Shared)
	t.Tags_ = Strings2stringsPG(t.Tags)
}

func (t *Tool) ParsePostgresVal() {
	t.Shared = StringsPG2strings(t.Shared_)
	t.Tags = StringsPG2strings(t.Tags_)
}

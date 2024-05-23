// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// Dialog is the golang structure for table dialog.
type Dialog struct {
	Id        string      `json:"id"    gorm:"column:id"    ` //
	Uid       string      `json:"uid"   gorm:"column:uid"    ` //
	Title     string      `json:"title" gorm:"column:title"    ` //
	Describe  string      `json:"describe"  gorm:"column:describe" ` //
	CreatedAt *gtime.Time `json:"createdAt" gorm:"column:created_at" ` //
	UpdatedAt *gtime.Time `json:"updatedAt" gorm:"column:updated_at" ` //
	OrgId     string      `json:"orgId"  gorm:"column:org_id"   ` //
}

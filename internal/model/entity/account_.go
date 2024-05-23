// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// Account is the golang structure for table account.
type Account struct {
	Id         string      `json:"id"         gorm:"column:id"` //
	GroupId    string      `json:"groupId"    gorm:"column:group_id"` //
	OrgId      string      `json:"orgId"      gorm:"column:org_id"` //
	Uid        string      `json:"uid"        gorm:"column:uid"` //
	Status     string      `json:"status"     gorm:"column:status"` //
	Balance    int64       `json:"balance"    gorm:"column:balance"` //
	Cost       int64       `json:"cost"       gorm:"column:cost"` //
	CostTokens int64       `json:"costTokens" gorm:"column:cost_tokens"` //
	CreatedAt  *gtime.Time `json:"createdAt"  gorm:"column:created_at"` //
	UpdatedAt  *gtime.Time `json:"updatedAt"  gorm:"column:updated_at"` //
}

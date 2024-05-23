// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// CostDetail is the golang structure for table cost_detail.
type CostDetail_ struct {
	Id        string      `json:"id" gorm:"column:id"        ` //
	GroupId   string      `json:"groupId" gorm:"column:group_id"      ` //
	OrgId     string      `json:"orgId"  gorm:"column:org_id"   ` //
	Uid       string      `json:"uid"   gorm:"column:uid"     ` //
	Tid       string      `json:"tid"   gorm:"column:tid"     ` //
	Sid       string      `json:"sid"   gorm:"column:sid"     ` //
	MsgId     string      `json:"msgId" gorm:"column:msg_id"    ` //
	Cost      int64       `json:"cost"  gorm:"column:cost"    ` //
	Tokens    int64       `json:"tokens" gorm:"column:tokens"   ` //
	CreatedAt *gtime.Time `json:"createdAt" gorm:"column:created_at"` //
}

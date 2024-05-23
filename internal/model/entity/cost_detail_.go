// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// CostDetail is the golang structure for table cost_detail.
type CostDetail struct {
	Id        string      `json:"id"        ` //
	GroupId   string      `json:"groupId"   ` //
	OrgId     string      `json:"orgId"     ` //
	Uid       string      `json:"uid"       ` //
	Tid       string      `json:"tid"       ` //
	Sid       string      `json:"sid"       ` //
	MsgId     string      `json:"msgId"     ` //
	Cost      int64       `json:"cost"      ` //
	Tokens    int64       `json:"tokens"    ` //
	CreatedAt *gtime.Time `json:"createdAt" ` //
}

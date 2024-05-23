// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// Account is the golang structure for table account.
type Account_ struct {
	Id         string      `json:"id"         ` //
	GroupId    string      `json:"groupId"    ` //
	OrgId      string      `json:"orgId"      ` //
	Uid        string      `json:"uid"        ` //
	Status     string      `json:"status"     ` //
	Balance    int64       `json:"balance"    ` //
	Cost       int64       `json:"cost"       ` //
	CostTokens int64       `json:"costTokens" ` //
	CreatedAt  *gtime.Time `json:"createdAt"  ` //
	UpdatedAt  *gtime.Time `json:"updatedAt"  ` //
}

// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// Message is the golang structure for table message.
type Message_ struct {
	Id        string      `json:"id"        ` //
	Uid       string      `json:"uid"       ` //
	Sid       string      `json:"sid"       ` //
	R         int64       `json:"r"         ` //
	Content   string      `json:"content"   ` //
	CreatedAt *gtime.Time `json:"createdAt" ` //
	UpdatedAt *gtime.Time `json:"updatedAt" ` //
	OrgId     string      `json:"orgId"     ` //
	Url       string      `json:"url"       ` //
	Md5       string      `json:"md5"       ` //
	Width     int64       `json:"width"     ` //
	Height    int64       `json:"height"    ` //
	T         int64       `json:"t"         ` //
}

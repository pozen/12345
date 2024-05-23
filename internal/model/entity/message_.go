// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

type Message struct {
	Id        string      `json:"id"   gorm:"column:id"     ` //
	Uid       string      `json:"uid"  gorm:"column:uid"     ` //
	Sid       string      `json:"sid"  gorm:"column:sid"     ` //
	T         int64      `json:"t"    gorm:"column:t"     ` //
	R         int64       `json:"r"    gorm:"column:r"     ` //
	Content   string      `json:"content" gorm:"column:content"  ` //
	CreatedAt *gtime.Time `json:"createdAt" gorm:"column:created_at" ` //
	UpdatedAt *gtime.Time `json:"updatedAt" gorm:"column:updated_at"` //
	OrgId     string      `json:"orgId"   gorm:"column:org_id"  ` //
	Url       string      `json:"url"     gorm:"column:url"    ` //
	Width     int64       `json:"width"   gorm:"column:width"  ` //
	Height    int64       `json:"height"  gorm:"column:height" ` //
	Md5 	 string      `json:"md5"     gorm:"column:md5"    ` //
}


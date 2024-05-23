// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// Uprofile is the golang structure for table uprofile.
type Uprofile_ struct {
	Id          string      `json:"id"          ` //
	GroupId     string      `json:"groupId"     ` //
	OrgId       string      `json:"orgId"       ` //
	Uid         string      `json:"uid"         ` //
	Avatar      string      `json:"avatar"      ` //
	Nickname    string      `json:"nickname"    ` //
	Status      string      `json:"status"      ` //
	Des         string      `json:"des"         ` //
	HomePage    string      `json:"homePage"    ` //
	Tags        string      `json:"tags"        ` //
	ThemeMode   string      `json:"themeMode"   ` //
	ThemeColor  int64       `json:"themeColor"  ` //
	Locale      string      `json:"locale"      ` //
	Timezone    string      `json:"timezone"    ` //
	UseStream   bool        `json:"useStream"   ` //
	SelectedBot string      `json:"selectedBot" ` //
	CreatedAt   *gtime.Time `json:"createdAt"   ` //
	UpdatedAt   *gtime.Time `json:"updatedAt"   ` //
}

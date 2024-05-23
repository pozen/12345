// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package entity

import (
	"github.com/gogf/gf/v2/os/gtime"
)

// Uprofile is the golang structure for table uprofile.
type Uprofile struct {
	Id         string      `json:"id"   gorm:"column:id"      ` //
	//GroupId    string      `json:"groupId" gorm:"column:group_id"    ` //
	OrgId      string      `json:"orgId"   gorm:"column:org_id"   ` //
	Uid        string      `json:"uid"     gorm:"column:uid"     ` //
	Avatar     string      `json:"avatar"  gorm:"column:avatar"   ` //
	Nickname   string      `json:"nickname" gorm:"column:nickname"  ` //
	Status     string      `json:"status"  gorm:"column:status"   ` //
	Des        string      `json:"des"     gorm:"column:des"      ` //
	HomePage   string      `json:"homePage" gorm:"column:home_page"  ` //
	//Tags       []string      `json:"tags"     gorm:"column:tags;type:VARCHAR(40)[]"     ` //
	ThemeMode  string      `json:"themeMode" gorm:"column:theme_mode" ` //
	ThemeColor int64      `json:"themeColor" gorm:"column:theme_color" ` //
	Locale     string      `json:"locale"     gorm:"column:locale"     ` //
	Timezone   string      `json:"timezone"   gorm:"column:timezone"   ` //
	UseStream  bool        `json:"useStream"  gorm:"column:use_stream" ` //
	SelectedBot string      `json:"selectedBot" gorm:"column:selected_bot" ` //
	CreatedAt  *gtime.Time `json:"createdAt"  gorm:"column:created_at"` //
	UpdatedAt  *gtime.Time `json:"updatedAt"  gorm:"column:updated_at"` //
}

// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// Uprofile is the golang structure of table uprofile for DAO operations like Where/Data.
type Uprofile struct {
	g.Meta      `orm:"table:uprofile, do:true"`
	Id          interface{} //
	GroupId     interface{} //
	OrgId       interface{} //
	Uid         interface{} //
	Avatar      interface{} //
	Nickname    interface{} //
	Status      interface{} //
	Des         interface{} //
	HomePage    interface{} //
	Tags        interface{} //
	ThemeMode   interface{} //
	ThemeColor  interface{} //
	Locale      interface{} //
	Timezone    interface{} //
	UseStream   interface{} //
	SelectedBot interface{} //
	CreatedAt   *gtime.Time //
	UpdatedAt   *gtime.Time //
}

// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// Message is the golang structure of table message for DAO operations like Where/Data.
type Message struct {
	g.Meta    `orm:"table:message, do:true"`
	Id        interface{} //
	Uid       interface{} //
	Sid       interface{} //
	R         interface{} //
	Content   interface{} //
	CreatedAt *gtime.Time //
	UpdatedAt *gtime.Time //
	OrgId     interface{} //
	Url       interface{} //
	Md5       interface{} //
	Width     interface{} //
	Height    interface{} //
	T         interface{} //
}

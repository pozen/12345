// =================================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// =================================================================================

package do

import (
	"github.com/gogf/gf/v2/frame/g"
	"github.com/gogf/gf/v2/os/gtime"
)

// CostDetail is the golang structure of table cost_detail for DAO operations like Where/Data.
type CostDetail struct {
	g.Meta    `orm:"table:cost_detail, do:true"`
	Id        interface{} //
	GroupId   interface{} //
	OrgId     interface{} //
	Uid       interface{} //
	Tid       interface{} //
	Sid       interface{} //
	MsgId     interface{} //
	Cost      interface{} //
	Tokens    interface{} //
	CreatedAt *gtime.Time //
}

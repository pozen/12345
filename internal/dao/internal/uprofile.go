// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// UprofileDao is the data access object for table uprofile.
type UprofileDao struct {
	table   string          // table is the underlying table name of the DAO.
	group   string          // group is the database configuration group name of current DAO.
	columns UprofileColumns // columns contains all the column names of Table for convenient usage.
}

// UprofileColumns defines and stores column names for table uprofile.
type UprofileColumns struct {
	Id          string //
	GroupId     string //
	OrgId       string //
	Uid         string //
	Avatar      string //
	Nickname    string //
	Status      string //
	Des         string //
	HomePage    string //
	Tags        string //
	ThemeMode   string //
	ThemeColor  string //
	Locale      string //
	Timezone    string //
	UseStream   string //
	SelectedBot string //
	CreatedAt   string //
	UpdatedAt   string //
}

// uprofileColumns holds the columns for table uprofile.
var uprofileColumns = UprofileColumns{
	Id:          "id",
	GroupId:     "group_id",
	OrgId:       "org_id",
	Uid:         "uid",
	Avatar:      "avatar",
	Nickname:    "nickname",
	Status:      "status",
	Des:         "des",
	HomePage:    "home_page",
	Tags:        "tags",
	ThemeMode:   "theme_mode",
	ThemeColor:  "theme_color",
	Locale:      "locale",
	Timezone:    "timezone",
	UseStream:   "use_stream",
	SelectedBot: "selected_bot",
	CreatedAt:   "created_at",
	UpdatedAt:   "updated_at",
}

// NewUprofileDao creates and returns a new DAO object for table data access.
func NewUprofileDao() *UprofileDao {
	return &UprofileDao{
		group:   "default",
		table:   "uprofile",
		columns: uprofileColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *UprofileDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *UprofileDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *UprofileDao) Columns() UprofileColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *UprofileDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *UprofileDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *UprofileDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

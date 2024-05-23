// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// ToolDao is the data access object for table tool.
type ToolDao struct {
	table   string      // table is the underlying table name of the DAO.
	group   string      // group is the database configuration group name of current DAO.
	columns ToolColumns // columns contains all the column names of Table for convenient usage.
}

// ToolColumns defines and stores column names for table tool.
type ToolColumns struct {
	Id        string //
	Type      string //
	OrgId     string //
	Uid       string //
	Name      string //
	Des       string //
	Code      string //
	CreatedAt string //
	UpdatedAt string //
	Shared    string //
	Tags      string //
}

// toolColumns holds the columns for table tool.
var toolColumns = ToolColumns{
	Id:        "id",
	Type:      "type",
	OrgId:     "org_id",
	Uid:       "uid",
	Name:      "name",
	Des:       "des",
	Code:      "code",
	CreatedAt: "created_at",
	UpdatedAt: "updated_at",
	Shared:    "shared",
	Tags:      "tags",
}

// NewToolDao creates and returns a new DAO object for table data access.
func NewToolDao() *ToolDao {
	return &ToolDao{
		group:   "default",
		table:   "tool",
		columns: toolColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *ToolDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *ToolDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *ToolDao) Columns() ToolColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *ToolDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *ToolDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *ToolDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

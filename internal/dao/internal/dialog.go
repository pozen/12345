// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// DialogDao is the data access object for table dialog.
type DialogDao struct {
	table   string        // table is the underlying table name of the DAO.
	group   string        // group is the database configuration group name of current DAO.
	columns DialogColumns // columns contains all the column names of Table for convenient usage.
}

// DialogColumns defines and stores column names for table dialog.
type DialogColumns struct {
	Id        string //
	Uid       string //
	Title     string //
	Describe  string //
	CreatedAt string //
	UpdatedAt string //
	OrgId     string //
}

// dialogColumns holds the columns for table dialog.
var dialogColumns = DialogColumns{
	Id:        "id",
	Uid:       "uid",
	Title:     "title",
	Describe:  "describe",
	CreatedAt: "created_at",
	UpdatedAt: "updated_at",
	OrgId:     "org_id",
}

// NewDialogDao creates and returns a new DAO object for table data access.
func NewDialogDao() *DialogDao {
	return &DialogDao{
		group:   "default",
		table:   "dialog",
		columns: dialogColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *DialogDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *DialogDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *DialogDao) Columns() DialogColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *DialogDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *DialogDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *DialogDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

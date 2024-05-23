// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// SessionDao is the data access object for table session.
type SessionDao struct {
	table   string         // table is the underlying table name of the DAO.
	group   string         // group is the database configuration group name of current DAO.
	columns SessionColumns // columns contains all the column names of Table for convenient usage.
}

// SessionColumns defines and stores column names for table session.
type SessionColumns struct {
	Id        string //
	Uid       string //
	Title     string //
	Describe  string //
	CreatedAt string //
	UpdatedAt string //
}

// sessionColumns holds the columns for table session.
var sessionColumns = SessionColumns{
	Id:        "id",
	Uid:       "uid",
	Title:     "title",
	Describe:  "describe",
	CreatedAt: "created_at",
	UpdatedAt: "updated_at",
}

// NewSessionDao creates and returns a new DAO object for table data access.
func NewSessionDao() *SessionDao {
	return &SessionDao{
		group:   "default",
		table:   "session",
		columns: sessionColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *SessionDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *SessionDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *SessionDao) Columns() SessionColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *SessionDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *SessionDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *SessionDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// AccountDao is the data access object for table account.
type AccountDao struct {
	table   string         // table is the underlying table name of the DAO.
	group   string         // group is the database configuration group name of current DAO.
	columns AccountColumns // columns contains all the column names of Table for convenient usage.
}

// AccountColumns defines and stores column names for table account.
type AccountColumns struct {
	Id         string //
	GroupId    string //
	OrgId      string //
	Uid        string //
	Status     string //
	Balance    string //
	Cost       string //
	CostTokens string //
	CreatedAt  string //
	UpdatedAt  string //
}

// accountColumns holds the columns for table account.
var accountColumns = AccountColumns{
	Id:         "id",
	GroupId:    "group_id",
	OrgId:      "org_id",
	Uid:        "uid",
	Status:     "status",
	Balance:    "balance",
	Cost:       "cost",
	CostTokens: "cost_tokens",
	CreatedAt:  "created_at",
	UpdatedAt:  "updated_at",
}

// NewAccountDao creates and returns a new DAO object for table data access.
func NewAccountDao() *AccountDao {
	return &AccountDao{
		group:   "default",
		table:   "account",
		columns: accountColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *AccountDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *AccountDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *AccountDao) Columns() AccountColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *AccountDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *AccountDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *AccountDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

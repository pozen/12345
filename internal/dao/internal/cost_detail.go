// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// CostDetailDao is the data access object for table cost_detail.
type CostDetailDao struct {
	table   string            // table is the underlying table name of the DAO.
	group   string            // group is the database configuration group name of current DAO.
	columns CostDetailColumns // columns contains all the column names of Table for convenient usage.
}

// CostDetailColumns defines and stores column names for table cost_detail.
type CostDetailColumns struct {
	Id        string //
	GroupId   string //
	OrgId     string //
	Uid       string //
	Tid       string //
	Sid       string //
	MsgId     string //
	Cost      string //
	Tokens    string //
	CreatedAt string //
}

// costDetailColumns holds the columns for table cost_detail.
var costDetailColumns = CostDetailColumns{
	Id:        "id",
	GroupId:   "group_id",
	OrgId:     "org_id",
	Uid:       "uid",
	Tid:       "tid",
	Sid:       "sid",
	MsgId:     "msg_id",
	Cost:      "cost",
	Tokens:    "tokens",
	CreatedAt: "created_at",
}

// NewCostDetailDao creates and returns a new DAO object for table data access.
func NewCostDetailDao() *CostDetailDao {
	return &CostDetailDao{
		group:   "default",
		table:   "cost_detail",
		columns: costDetailColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *CostDetailDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *CostDetailDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *CostDetailDao) Columns() CostDetailColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *CostDetailDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *CostDetailDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *CostDetailDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

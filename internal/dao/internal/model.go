// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// ModelDao is the data access object for table model.
type ModelDao struct {
	table   string       // table is the underlying table name of the DAO.
	group   string       // group is the database configuration group name of current DAO.
	columns ModelColumns // columns contains all the column names of Table for convenient usage.
}

// ModelColumns defines and stores column names for table model.
type ModelColumns struct {
	Id            string //
	Uid           string //
	Name          string //
	Des           string //
	Avatar        string //
	Addr          string //
	Method        string //
	Contenttype   string //
	Headers       string //
	Reqbodytmpl   string //
	Respanswerkey string //
	CreatedAt     string //
	UpdatedAt     string //
}

// modelColumns holds the columns for table model.
var modelColumns = ModelColumns{
	Id:            "id",
	Uid:           "uid",
	Name:          "name",
	Des:           "des",
	Avatar:        "avatar",
	Addr:          "addr",
	Method:        "method",
	Contenttype:   "contenttype",
	Headers:       "headers",
	Reqbodytmpl:   "reqbodytmpl",
	Respanswerkey: "respanswerkey",
	CreatedAt:     "created_at",
	UpdatedAt:     "updated_at",
}

// NewModelDao creates and returns a new DAO object for table data access.
func NewModelDao() *ModelDao {
	return &ModelDao{
		group:   "default",
		table:   "model",
		columns: modelColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *ModelDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *ModelDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *ModelDao) Columns() ModelColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *ModelDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *ModelDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *ModelDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

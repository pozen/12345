// ==========================================================================
// Code generated and maintained by GoFrame CLI tool. DO NOT EDIT.
// ==========================================================================

package internal

import (
	"context"

	"github.com/gogf/gf/v2/database/gdb"
	"github.com/gogf/gf/v2/frame/g"
)

// BotDao is the data access object for table bot.
type BotDao struct {
	table   string     // table is the underlying table name of the DAO.
	group   string     // group is the database configuration group name of current DAO.
	columns BotColumns // columns contains all the column names of Table for convenient usage.
}

// BotColumns defines and stores column names for table bot.
type BotColumns struct {
	Id        string //
	Uid       string //
	ModelId   string //
	Name      string //
	Des       string //
	Prompt    string //
	Avatar    string //
	Ver       string //
	CreatedAt string //
	UpdatedAt string //
}

// botColumns holds the columns for table bot.
var botColumns = BotColumns{
	Id:        "id",
	Uid:       "uid",
	ModelId:   "model_id",
	Name:      "name",
	Des:       "des",
	Prompt:    "prompt",
	Avatar:    "avatar",
	Ver:       "ver",
	CreatedAt: "created_at",
	UpdatedAt: "updated_at",
}

// NewBotDao creates and returns a new DAO object for table data access.
func NewBotDao() *BotDao {
	return &BotDao{
		group:   "default",
		table:   "bot",
		columns: botColumns,
	}
}

// DB retrieves and returns the underlying raw database management object of current DAO.
func (dao *BotDao) DB() gdb.DB {
	return g.DB(dao.group)
}

// Table returns the table name of current dao.
func (dao *BotDao) Table() string {
	return dao.table
}

// Columns returns all column names of current dao.
func (dao *BotDao) Columns() BotColumns {
	return dao.columns
}

// Group returns the configuration group name of database of current dao.
func (dao *BotDao) Group() string {
	return dao.group
}

// Ctx creates and returns the Model for current DAO, It automatically sets the context for current operation.
func (dao *BotDao) Ctx(ctx context.Context) *gdb.Model {
	return dao.DB().Model(dao.table).Safe().Ctx(ctx)
}

// Transaction wraps the transaction logic using function f.
// It rollbacks the transaction and returns the error from function f if it returns non-nil error.
// It commits the transaction and returns nil if function f returns nil.
//
// Note that, you should not Commit or Rollback the transaction in function f
// as it is automatically handled by this function.
func (dao *BotDao) Transaction(ctx context.Context, f func(ctx context.Context, tx gdb.TX) error) (err error) {
	return dao.Ctx(ctx).Transaction(ctx, f)
}

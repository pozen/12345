// =================================================================================
// This is auto-generated by GoFrame CLI tool only once. Fill this file as you wish.
// =================================================================================

package dao

import (
	"12345/internal/dao/internal"
)

// internalModelDao is internal type for wrapping internal DAO implements.
type internalModelDao = *internal.ModelDao

// modelDao is the data access object for table model.
// You can define custom methods on it to extend its functionality as you wish.
type modelDao struct {
	internalModelDao
}

var (
	// Model is globally public accessible object for table model operations.
	Model = modelDao{
		internal.NewModelDao(),
	}
)

// Fill with you ideas below.

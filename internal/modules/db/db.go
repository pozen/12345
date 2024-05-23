package db

import (
	"context"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

var client *gorm.DB

func DB(ctx context.Context, table string) *gorm.DB {
	return client.WithContext(ctx).Table(table)
}

func Init(typ, dsn string) {

	if typ == "pg" {
		db, err := gorm.Open(postgres.Open(dsn), &gorm.Config{})
		if err != nil {
			panic("db init failed : " + err.Error())
		}
		client = db
	} else {
		panic("unknown db type : " + typ)
	}
}

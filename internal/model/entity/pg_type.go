package entity

import (
	"github.com/lib/pq"
)

// string Array
type PgStrArray = pq.StringArray

func Strings2stringsPG(strs []string) PgStrArray {
	strspg := PgStrArray{}
	for _, v := range strs {
		strspg = append(strspg, v)
	}
	return strspg
}

func StringsPG2strings(strspg PgStrArray) []string {
	strs := []string{}
	for _, v := range strspg {
		strs = append(strs, v)
	}
	return strs
}

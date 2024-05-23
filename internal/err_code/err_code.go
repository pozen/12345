package err_code

import (
	"context"
	"fmt"

	"github.com/gogf/gf/v2/i18n/gi18n"
)

type ErrCode struct {
	code    int         // Error code, usually an integer.
	message string      // Brief message for this error code.
	detail  interface{} // As type of interface, it is mainly designed as an extension field for error code.
}

func (c ErrCode) New(ctx context.Context) ErrCode {
	ec := c
	ec.message = gi18n.T(ctx, c.message)
	return ec
}

func (c ErrCode) Code() int {
	return c.code
}

func (c ErrCode) Message() string {
	return c.message
}

func (c ErrCode) Detail() interface{} {
	return c.detail
}

func (c ErrCode) String() string {
	if c.detail != nil {
		return fmt.Sprintf(`%d:%s %v`, c.code, c.Message(), c.detail)
	}
	if c.message != "" {
		return fmt.Sprintf(`%d:%s`, c.code, c.Message())
	}
	return fmt.Sprintf(`%d`, c.code)
}

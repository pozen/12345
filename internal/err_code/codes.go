package err_code

var (
	ErrCodeOK                   = ErrCode{code: 0, message: "OK"}
	ErrCodeAccountAlreadyExists = ErrCode{code: 100101, message: "{#AccountAreadyExists}"}
)

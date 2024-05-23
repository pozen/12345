package script

import (
	"github.com/robertkrimen/otto"
)

type OttoVM struct {
	vm *otto.Otto
}

func (t *OttoVM) Run(code string) (interface{}, error) {
	ret, err := t.vm.Run(code)

	if err != nil {
		return nil, err
	}
	return ret.Export()
}

func (t *OttoVM) Set(name string, val interface{}) error {
	return t.vm.Set(name, val)
}

func NewOttoVM() *OttoVM {
	return &OttoVM{vm: otto.New()}
}

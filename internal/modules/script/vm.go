package script

import "context"

type VM interface {
	Set(name string, val interface{}) error
	Run(code string) (interface{}, error)
}

func NewVM(ctx context.Context) VM {
	vm := NewOttoVM()

	//core := NewCore(ctx)
	//core.SetVM(vm)
	//vm.Set("core", core)

	return vm
}

type Script struct {
	core *Core
	vm   VM
}

func New(ctx context.Context) *Script {
	vm := NewVM(ctx)
	core := NewCore(ctx)
	core.SetVM(vm)
	vm.Set("core", core)

	return &Script{
		core: core,
		vm:   vm,
	}
}

// get vm
func (t *Script) VM() VM {
	return t.vm
}

// get core
func (t *Script) Core() *Core {
	return t.core
}

// destroy
func (t *Script) Destroy() {
	t.core.Destroy()
}

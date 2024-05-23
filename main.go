package main

import (
	_ "12345/internal/packed"

	"github.com/gogf/gf/v2/os/gctx"

	"12345/internal/cmd"
)

func main() {
	cmd.Main.Run(gctx.GetInitCtx())
}

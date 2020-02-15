package main

import (
	"github.com/govim/govim/cmd/govim/internal/types"
)

const (
	exprAutocmdCurrBufInfo = `{"Num": eval(expand('<abuf>')), "Name": expand('<abuf>') != "" ? fnamemodify(bufname(eval(expand('<abuf>'))),':p') : "", "Contents": join(getbufline(eval(expand('<abuf>')), 0, "$"), "\n")."\n", "Loaded": bufloaded(eval(expand('<abuf>')))}`
)

type bufReadDetails struct {
	Num      int
	Name     string
	Contents string
	Loaded   int
}

func (v *vimstate) cursorPos() (b *types.Buffer, p types.Point, err error) {
	var pos struct {
		BufNum int `json:"bufnum"`
		Line   int `json:"line"`
		Col    int `json:"col"`
	}
	expr := v.ChannelExpr(`{"bufnum": bufnr(""), "line": line("."), "col": col(".")}`)
	v.Parse(expr, &pos)
	b, err = v.getLoadedBuffer(pos.BufNum)
	if err != nil {
		return
	}
	p, err = types.PointFromVim(b, pos.Line, pos.Col)
	return
}

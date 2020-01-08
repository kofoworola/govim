module github.com/govim/govim

go 1.12

require (
	github.com/acarl005/stripansi v0.0.0-20180116102854-5a71ef0e047d
	github.com/creack/pty v1.1.9
	github.com/fsnotify/fsevents v0.1.1
	github.com/fsnotify/fsnotify v1.4.7
	github.com/kr/pretty v0.1.0
	github.com/myitcv/vbash v0.0.4
	github.com/rogpeppe/go-internal v1.5.1
	golang.org/x/mod v0.1.1-0.20191105210325-c90efee705ee
	golang.org/x/sync v0.0.0-20190423024810-112230192c58
	golang.org/x/sys v0.0.0-20190429190828-d89cdac9e872 // indirect
	golang.org/x/tools v0.0.0-20200107184032-11e9d9cc0042
	golang.org/x/tools/gopls v0.1.8-0.20200107184032-11e9d9cc0042
	golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898
	gopkg.in/retry.v1 v1.0.3
	gopkg.in/tomb.v2 v2.0.0-20161208151619-d5d1b5820637
	honnef.co/go/tools v0.0.1-2019.2.3
)

replace golang.org/x/tools => github.com/myitcvforks/tools v0.0.0-20200108093634-093e5cb57410

replace golang.org/x/tools/gopls => github.com/myitcvforks/tools/gopls v0.0.0-20200108093634-093e5cb57410

## windows

`CTRL-B C` Create new window
`CTRL-B ,` Rename window
`CTRL-B p` Previous window
`CTRL-B n` Next window
`CTRL-B w` List windows
`CTRL-B 5` Switch to window 5
`CTRL-B f` Find window
`CTRL-B &` Close window

## Panes

`CTRL-B %`  Splits window vertically
`CTRL-B "`  Splits window horizontally
`CTRL-B o`  Move between panes
`CTRL-B x`  Kill pane

## Sessions

`tmux` Start a new session called `0`
`tmux ls`  List sessions
`tmux new -s awesome_name`  Start a new session called `awesome_name`
`tmux a -t myname`  Attach to session myname
`tmux attach -t myname`   Attach to session myname
`tmux kill-session -t myname` Kill session myname

## synchronize panes

`:setw synchronize-panes on`


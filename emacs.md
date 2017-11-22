# Emacs

## Keys

`s-` - SUPER KEY


### helm - projectile

`s f` - find text in project

`s t` - find files in project

### Seeing is believing

`C-. s` - Run Seeing is Believing for the entire file

`C-. c` - Clear the Seeing is Believing output

`C-. t` - Tag a line to be “targeted” for evaluation by SiB

`C-. x` - Run only the “tagged” lines (those with trailing “# => ” markers)

### inf-ruby
`C-c C-s` - launch inf-ruby console

`C-c C-r` - exec the highlighted text in the inf-ruby console

`C-c M-r` - like `C-c C-r` but switching to irb console

(other `ruby-send-****` functions are available)

(`inf-ruby-console-rails` and `inf-ruby-console-racksh` can  start a console session in the environment of your web project)
## Bind keys to function

```
(global-set-key (kbd "C-c f") 'helm-ag) 
```

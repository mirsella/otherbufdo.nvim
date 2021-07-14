# otherbufdo.nvim

it's :bufdo, but on every buffer except the current one.</b>

and it go back to the current buffer.</b>

also it use `execute` so it's Ex commands (:w, :q, :undo) and not normal mode command (dd, u, y) but you can use :norm anyway</b>

### How to use :</b>

`Otherbufdo g/idontlikethisline/d`</b>

`Otherbufdo norm ggO`</b>

it's just this simple yet horrible script, so you can just copy this in your init.vim instead of using a full plugin. both are correct
```vim
function! Otherbufdo(cmd)
let current = nvim_get_current_buf() 
bufdo :if (nvim_get_current_buf() != current) | execute(a:cmd) | endif 
execute ":buffer " current
endfunction
command! -nargs=+ Otherbufdo call Otherbufdo(<q-args>)
```

vim plug : 
`plug 'mirsella/otherbufdo'`

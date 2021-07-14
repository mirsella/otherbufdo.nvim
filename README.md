# otherbufdo.nvim

it's :bufdo, but on every buffer except the current one.
and it go back the current buffer.
also it use `execute` so it's Ex commands (:w, :q, :undo) and not normal mode command (dd, u, y)

How to use :
`Otherbufdo g/idontlikethisline/d`
`Otherbufdo norm ggO`

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

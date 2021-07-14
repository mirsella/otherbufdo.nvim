" otherbufdo.vim
" bufdo but current buffer 
" Author:	mirsella <https://github.com/mirsella>
" Version: 1

function! Otherbufdo(cmd)
  let current = nvim_get_current_buf() 
  bufdo :if (nvim_get_current_buf() != current) | execute a:cmd | endif 
execute ":buffer " current
endfunction
command! -nargs=+ Otherbufdo call Otherbufdo(<q-args>)

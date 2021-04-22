nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 fpc -oa.out "$(VIM_FILENAME)" && ./a.out

nnoremap <buffer> <localleader>ld :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 fpc -g -oa.out "$(VIM_FILENAME)" && gdb a.out

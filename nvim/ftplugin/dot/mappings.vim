nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -rows=15 -pos=bottom -save=2 dot -Tpdf % -o $VIM_FILENOEXT.pdf
nnoremap <buffer> <localleader>ln :!dot -Tpdf % -o $VIM_FILENOEXT.pdf && zathura $VIM_FILENOEXT.pdf & disown

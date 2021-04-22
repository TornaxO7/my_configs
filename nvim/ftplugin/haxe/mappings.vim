nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 haxe --main "$(VIM_FILENAME)":t:r --interp

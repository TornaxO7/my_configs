nnoremap <leader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 php "$(VIM_FILENAME)" > out.html

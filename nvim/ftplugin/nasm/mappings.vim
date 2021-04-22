nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 nasm -f elf64 "$(VIM_FILENAME)" && ld "$(VIM_FILENAME)":t:r.o && ./a.out

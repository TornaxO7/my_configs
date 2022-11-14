"nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 as "$(VIM_FILENAME)" -o object.o && ld object.o -o a.out && qemu-x86_64 a.out
"nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 nasm "$(VIM_FILENAME)" -o object.o && ld object.o -o a.out && qemu-x86_64 a.out
nnoremap <buffer> <localleader>r :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 as "$(VIM_FILENAME)" -o "$(VIM_FILENOEXT)".o && ld 

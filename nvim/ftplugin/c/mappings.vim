" compiling stuff

"nnoremap <leader>lr :AsyncRun -mode=async -cwd="$(VIM_FILEDIR)" -save=2 gcc % && ./a.out
nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 gcc -lm % && ./a.out
nnoremap <buffer> <localleader>lt :AsyncRun -mode=term -rows=15 -pos=bottom -strip -cwd="$(VIM_FILEDIR)" -save=2 gcc -lm % && ./a.out
nnoremap <buffer> <localleader>ls :AsyncRun -mode=async -wd="$(VIM_FILEDIR) -save=2 gcc -g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized -fsanitize=address -pedantic -Wshadow -std=c99 % && ./a.out
nnoremap <buffer> <localleader>lv :AsyncRun -mode=async -cwd="$(VIM_FILEDIR)" -save=2 gcc -g -lm % && valgrind ./a.out
nnoremap <buffer> <localleader>ld :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 gcc -g % && gdb a.out
nnoremap <buffer> <localleader>lk :AsyncStop<CR>
nnoremap <buffer> <localleader>lf :CocCommand clangd.switchSourceHeader<CR>

nnoremap <buffer> <localleader>la :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 gcc % && objdump -d a.out

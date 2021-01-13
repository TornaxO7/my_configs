" compiling stuff

"nnoremap <leader>lr :AsyncRun -mode=async -cwd="$(VIM_FILEDIR)" -save=2 gcc % && ./a.out
nnoremap <leader>lr :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 gcc -lm % && ./a.out

nnoremap <leader>lt :AsyncRun -mode=term -rows=15 -pos=bottom -strip -cwd="$(VIM_FILEDIR)" -save=2 gcc -lm % && ./a.out

nnoremap <leader>ls :AsyncRun -mode=async -wd="$(VIM_FILEDIR) -save=2 gcc -g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized -fsanitize=address -pedantic -Wshadow -std=c99 % && ./a.out

" valgrind
"nnoremap <leader>lv :AsyncRun -mode=async -cwd="$(VIM_FILEDIR)" -save=2 gcc -g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized -fsanitize=address % && valgrind ./a.out
nnoremap <leader>lv :AsyncRun -mode=async -cwd="$(VIM_FILEDIR)" -save=2 gcc -g -lm % && valgrind ./a.out

" debug
nnoremap <leader>ld :AsyncRun -mode=term -pos=tab -cwd="$(VIM_FILEDIR)" -save=2 gcc -g % && gdb a.out

"" kill the process
nnoremap <leader>lk :AsyncStop<CR>
"
"" switch between source and header file
nnoremap <leader>lf :CocCommand clangd.switchSourceHeader<CR>
"let g:which_key_map.l.f = [':CocCommand clangd.switchSourceHeader', 'switch file']

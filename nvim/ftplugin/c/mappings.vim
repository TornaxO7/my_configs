" compiling stuff

"nnoremap <leader>lr :AsyncRun -mode=async -save=2 gcc % && ./a.out
nnoremap <buffer> <localleader>r :AsyncRun -mode=term -pos=right -save=2 gcc -lm % && ./a.out
nnoremap <buffer> <localleader>lt :AsyncRun -mode=term -rows=15 -pos=bottom -strip -save=2 gcc -lm % && ./a.out
nnoremap <buffer> <localleader>ls :AsyncRun -mode=async -save=2 gcc -g -lm -fsanitize=address -pedantic -Wshadow -std=c99 % && ./a.out
nnoremap <buffer> <localleader>lS :AsyncRun -mode=async -save=2 gcc -g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized -fsanitize=address -pedantic -Wshadow -std=c99 % && ./a.out
nnoremap <buffer> <localleader>lv :AsyncRun -mode=async -save=2 gcc -g -lm % && valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes ./a.out
nnoremap <buffer> <localleader>ld :AsyncRun -mode=term -pos=tab -save=2 gcc -g -lm % && gdb a.out
"nnoremap <buffer> <localleader>lf :CocCommand clangd.switchSourceHeader<CR>

nnoremap <buffer> <localleader>la :AsyncRun -mode=term -pos=tab -save=2 gcc % && objdump -d a.out

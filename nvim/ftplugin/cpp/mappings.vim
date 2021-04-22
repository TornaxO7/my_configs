nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -save=2 g++ -lm % && ./a.out
nnoremap <buffer> <localleader>lt :AsyncRun -mode=term -rows=15 -pos=bottom -strip -save=2 g++ -lm % && ./a.out
nnoremap <buffer> <localleader>ls :AsyncRun -mode=async -save=2 g++ -g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized -fsanitize=address -pedantic -Wshadow % && ./a.out
nnoremap <buffer> <localleader>lv :AsyncRun -mode=async -save=2 g++ -g -lm % && valgrind ./a.out
nnoremap <buffer> <localleader>ld :AsyncRun -mode=term -pos=tab -save=2 g++ -g % && gdb a.out

nnoremap <buffer> <localleader>la :AsyncRun -mode=term -pos=tab -save=2 g++ % && objdump -d a.out

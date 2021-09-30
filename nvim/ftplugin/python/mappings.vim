nnoremap <buffer> <localleader>r :AsyncRun -mode=term -pos=right -save=2 python3 %
" nnoremap <buffer> <localleader>d :AsyncRun -mode=term -pos=tab -save=2 gdb python3

nnoremap <buffer> <localleader>1 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python3 % < text1.txt<CR>
nnoremap <buffer> <localleader>2 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python3 % < text2.txt<CR>
nnoremap <buffer> <localleader>3 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python3 % < text3.txt<CR>
nnoremap <buffer> <localleader>4 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python3 % < text4.txt<CR>
nnoremap <buffer> <localleader>tp :AsyncRun -mode=term -pos=right -save=2 pytest % -v --cov --cov-report=html

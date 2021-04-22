nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -rows=15 -pos=bottom -strip -cwd="$(VIM_FILEDIR)" -save=2 python %
nnoremap <buffer> <localleader>ld :AsyncRun -mode=term -pos=tab -save=2 gdb python

nnoremap <buffer> <localleader>l1 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python % < text1.txt<CR>
nnoremap <buffer> <localleader>l2 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python % < text2.txt<CR>
nnoremap <buffer> <localleader>l3 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python % < text3.txt<CR>
nnoremap <buffer> <localleader>l4 :AsyncRun -mode="async" -cwd=$(VIM_FILEDIR) -save=2 python % < text4.txt<CR>

nnoremap <buffer> <localleader>li :CocCommand python.setInterpreter<CR>

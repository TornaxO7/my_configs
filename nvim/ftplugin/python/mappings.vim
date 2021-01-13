nnoremap <leader>lr :AsyncRun -mode="async" -cwd="$(VIM_FILEDIR)" -save=2 python %
nnoremap <leader>lt :AsyncRun -mode=term -rows=15 -pos=bottom -strip -cwd="$(VIM_FILEDIR)" -save=2 python %

nnoremap <leader>l1 :AsyncRun -mode="async" -cwd="$(VIM_FILEDIR)" -save=2 python % < text1.txt<CR>
nnoremap <leader>l2 :AsyncRun -mode="async" -cwd="$(VIM_FILEDIR)" -save=2 python % < text2.txt<CR>
nnoremap <leader>l3 :AsyncRun -mode="async" -cwd="$(VIM_FILEDIR)" -save=2 python % < text3.txt<CR>
nnoremap <leader>l4 :AsyncRun -mode="async" -cwd="$(VIM_FILEDIR)" -save=2 python % < text4.txt<CR>

nnoremap <leader>li :CocCommand python.setInterpreter<CR>

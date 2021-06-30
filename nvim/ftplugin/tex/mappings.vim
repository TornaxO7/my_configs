" for long lines
nnoremap j gj
nnoremap k gk

" refresh folds
"noremap <leader>lr :VimtexRefreshFolds<CR>

" compile it
nmap <buffer> <localleader>ln <Plug>(vimtex-compile-ss)
nnoremap <buffer> <localleader>m vae:VimtexCompileSelected<CR>
nnoremap <buffer> <localleader>ld :VimtexDocPackage

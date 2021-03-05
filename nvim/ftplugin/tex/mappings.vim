" for long lines
nnoremap j gj
nnoremap k gk

" refresh folds
"noremap <leader>lr :VimtexRefreshFolds<CR>

" compile it
"let g:which_key_map.l.n = ['<plug>(vimtex-compile-ss)', 'single shot']
nmap <buffer> <leader>ln <Plug>(vimtex-compile-ss)
nnoremap <buffer> <leader>m vae:VimtexCompileSelected<CR>

"inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
"nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

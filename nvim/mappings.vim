noremap <2-RightMouse> zO

tnoremap <silent> <Esc> <C-\><C-n>

noremap w <C-w>

noremap + :res +2<CR>
noremap - :res -2<CR>

noremap > 3<C-w><
noremap < 3<C-w>>

" ------------------
" Private ones
" ------------------
if &readonly || &buftype == 'nofile'
    augroup QuitMappings
        autocmd!
        autocmd BufEnter <silent><buffer> nnoremap q :q<CR>
    augroup END
else
    noremap <silent> q :wq<CR>
endif

nnoremap ö q

" how to leave from different modes
onoremap <C-l> <Esc>
xnoremap <C-l> <Esc>
inoremap <C-l> <Esc>
nnoremap <silent> <buffer> k gk
nnoremap <silent> <buffer> j gj

" switch beween each language
nnoremap <silent> <localleader>sd :setlocal spell spelllang=de_20 <bar> let g:translator_target_lang='de'<CR>
nnoremap <silent> <localleader>sg :setlocal spell spelllang=en_gb <bar> let g:translator_target_lang='en'<CR>
nnoremap <silent> <localleader>se :setlocal spell spelllang=en_us <bar> let g:translator_target_lang='en'<CR>
nnoremap <silent> <localleader>s<Space> :setlocal spell spelllang=<CR>

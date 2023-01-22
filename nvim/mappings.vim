noremap <2-RightMouse> zO

tnoremap <silent> <Esc> <C-\><C-n>

noremap w <C-w>

" noremap + :res +2<CR>
" noremap - :res -2<CR>

" noremap > 3<C-w><
" noremap < 3<C-w>>

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

onoremap <C-l> <Esc>
xnoremap <C-l> <Esc>
inoremap <C-l> <Esc>

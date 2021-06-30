" --------
"  mouse
" --------
noremap <2-RightMouse> zO

" --------------
"  open test files
" --------------
nnoremap <localleader>o1 :vsplit ./text1.txt<CR>
nnoremap <localleader>o2 :vsplit ./text2.txt<CR>
nnoremap <localleader>o3 :vsplit ./text3.txt<CR>
nnoremap <localleader>o4 :vsplit ./text4.txt<CR>

" open all three
nnoremap <localleader>oa :vsplit ./text1.txt
            \ <bar> :split ./text2.txt
            \ <bar> :split ./text3.txt
            \ <bar> :split ./text4.txt<CR>

" ---------
" tabs 
" ---------
nnoremap ge :tabmove +<CR>
nnoremap gq :tabmove -<CR>

" --------------------
"  grammar checking
" --------------------
"map <localleader>gn <Plug>(grammarous-move-to-next-error)
"map <localleader>gc <Plug>(grammarous-close-info-window)
"map <localleader>gf <Plug>(grammarous-fixit)
"map <localleader>gs :GrammarousCheck --lang=de<CR>
"map <localleader>gp <Plug>(grammarous-move-to-previous-error)
"map <localleader>go <Plug>(grammarous-open-info-window)
"map <localleader>gr <Plug>(grammarous-remove-error)
"map <localleader>gd <Plug>(grammarous-disable-rule)

" -----------------
"  Window
" -----------------
" splitting window
noremap w <C-w>

noremap + :res +2<CR>
noremap - :res -2<CR>

" Resize vertical splitted windows with '<' and '>'
noremap > 3<C-w><
noremap < 3<C-w>>

" ---------------------
" Internet browser 
" ---------------------
nnoremap <localleader>bv :!google-chrome-stable https://vimawesome.com/<CR>
nnoremap <localleader>bp :!google-chrome-stable https://de.pons.com/ & disown<CR>
nnoremap <localleader>bl :!google-chrome-stable https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md & disown<CR>
nnoremap <localleader>br :!google-chrome-stable https://crates.io/search\?q=

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
noremap <localleader><Space> :w<CR>

nnoremap ö q

" undo the undo with a latter U
map U <C-r>

" how to leave from different modes
onoremap <C-l> <Esc>
xnoremap <C-l> <Esc>
inoremap <C-l> <Esc>
nnoremap <silent> <buffer> k gk
nnoremap <silent> <buffer> j gj

function MySpellFix()
    let l:last_cursor = getpos('.')
    normal [s1z=
    call setpos('.', l:last_cursor)
endfunction

" auto-spell-fixiing
inoremap <C-f> <CMD>call MySpellFix()<CR>

" switch between each language
nnoremap <localleader>sd :setlocal spell spelllang=de_20 <bar> let g:translator_target_lang='de'<CR>
nnoremap <localleader>sg :setlocal spell spelllang=en_gb <bar> let g:translator_target_lang='en'<CR>
nnoremap <localleader>se :setlocal spell spelllang=en_us <bar> let g:translator_target_lang='en'<CR>
nnoremap <localleader>s<Space> :setlocal spell spelllang=<CR>

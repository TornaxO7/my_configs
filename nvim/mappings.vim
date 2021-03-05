" --------
"  mouse
" --------
noremap <2-RightMouse> zO

" -------------
" Whichkey 
" -------------
nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual '<Space>'<CR>

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

" ---------------
" easymotion 
" ---------------
map ö <Plug>(easymotion-prefix)

" -----------------
"  Window
" -----------------
" splitting window
noremap w <C-w>

noremap + :res +2<CR>
noremap - :res -2<CR>

" Resize vertical splitted windows with '<' and '>'
noremap < 3<C-w><
noremap > 3<C-w>>

" -------------
"  indentation
" -------------
nnoremap <C-p> :IndentLinesToggle<CR>

" ------------------
" Private ones
" ------------------
noremap q :wq<CR>
noremap <localleader><Space> :w<CR>

" undo the undo with a latter U
map U <C-r>

" record macros
noremap ä q

" how to leave from different modes
nnoremap <C-l> :w<CR>:bd<CR>
onoremap <C-l> <Esc>
xnoremap <C-l> <Esc>
inoremap <C-l> <Esc>
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
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
nnoremap <localleader>sd :setlocal spell spelllang=de_20<CR>
nnoremap <localleader>sg :setlocal spell spelllang=en_gb<CR>
nnoremap <localleader>se :setlocal spell spelllang=en_us<CR>
nnoremap <localleader>sc :setlocal spell spelllang=<CR>

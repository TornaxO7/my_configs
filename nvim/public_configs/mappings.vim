" -------------
"  unmappings
" -------------

" -------------
"  other stuff
" -------------
"nnoremap <leader>C :tabnew ~/.vim/plugins/quickrunner.vim

" --------
"  mouse
" --------
noremap <2-RightMouse> zO

" --------
"  vifm
" --------
nnoremap <leader>v :EditVifm<CR>
noremap <C-t> :TabVifm<CR>

" ------------
"  nerdtree
" ------------
"nnoremap <F2> :NERDTreeToggle<CR>
"map <leader>fn :NERDTreeToggle<CR>

" ---------------
"  leader-guide
" ---------------
"nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
"vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
"let g:leaderGuide_submode_mappings = { 
"						\'<C-h>j' : 'page_down',
"						\'<C-h>k' : 'page_up'
"						\}

" --------------
"  C relevant 
" --------------
nnoremap <leader>gd :!gcc -g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized %<CR>
nnoremap <leader>gl :!gcc -g -O0 %<CR>

" ----------------
"  vim-which-key
" ----------------
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" -----------
"  debugging
" -----------
noremap <F5> :!gcc -g -O0 %<CR> <bar> :call vimspector#Restart()<CR>
noremap <F6> :call vimspector#StepOut()<CR>
noremap <F7> :call vimspector#StepInto()<CR>
noremap <F8> :!gcc -g -O0 %<CR> <bar> :call vimspector#Continue()<CR>
noremap <F9> :call vimspector#ToggleBreakpoint()<CR>
noremap <F10> :call vimspector#ToggleBreakpoint({'condition' : '<here>'})
noremap <F11> :VimspectorWatch 

"nnoremap <leader>dc <Plug>VimspectorContinue
"nnoremap <leader>ds <Plug>VimspectorStop
"nnoremap <leader>dr <Plug>VimspectorRestart
"nnoremap <leader>dp <Plug>VimspectorPause
"nnoremap <leader>dT <Plug>VimspectorToggleBreakpoint
"nnoremap <leader>dt <Plug>VimspectorToggleConditionalBreakpoint
"nnoremap <leader>da <Plug>VimspectorAddFunctionBreakpoint
"nnoremap <leader>do <Plug>VimspectorStepOver
"nnoremap <leader>dI <Plug>VimspectorStepInto
"nnoremap <leader>dO <Plug>VimspectorStepOut

" ---------
"  tagbar
" ---------
nnoremap <F3> :TagbarToggle<CR>
"nnoremap <leader>it :TagbarToggle<CR>

" cloase preview window
nnoremap <leader>ip :pc<CR>

" syntastic (close error-window)
"nnoremap <leader>e :lclose<CR>

" -------
"  fzf
" -------
"noremap <C-f> :FZF 

" --------------------
"  grammar checking
" --------------------
"map <leader>gn <Plug>(grammarous-move-to-next-error)
"map <leader>gc <Plug>(grammarous-close-info-window)
"map <leader>gf <Plug>(grammarous-fixit)
"map <leader>gs :GrammarousCheck --lang=de<CR>
"map <leader>gp <Plug>(grammarous-move-to-previous-error)
"map <leader>go <Plug>(grammarous-open-info-window)
"map <leader>gr <Plug>(grammarous-remove-error)
"map <leader>gd <Plug>(grammarous-disable-rule)

" ------------------
" quickrunner
" ------------------
noremap <localleader>lr :QuickRun -outputter loclist -input "="
noremap <localleader>l1 :QuickRun -outputter loclist -cmdopt "text1.txt"<CR>
noremap <localleader>l2 :QuickRun -outputter loclist -cmdopt "text2.txt"<CR>
noremap <localleader>l3 :QuickRun -outputter loclist -cmdopt "text3.txt"<CR>
noremap <localleader>l4 :QuickRun -outputter loclist -cmdopt "text4.txt"<CR>

" ------------
"  tabmanager
" ------------
"let g:tabman_toggle = '<leader>tt'
"let g:tabman_focus = '<leader>tf'

" ----------
"  arduino
" ----------
"map <leader>ab :make --makefile=~/.platformio/Makefile<CR>
"map <leader>au :make --makefile=~/.platformio/Makefile upload<CR>
"map <leader>ac :make --makefile=~/.platformio/Makefile clean<CR>

" -----------
"  ultisnips
" -----------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets='<c-tab>'
"let g:UltiSnipsJumpForwardTrigger="<c-k>"
"let g:UltiSnipsBackwardTrigger="<c-j>"
"inoremap <c-x><c-k> <c-x><c-k>
map <leader>ue :UltiSnipsEdit<CR>


" -----------------
"  Window
" -----------------
" splitting window
noremap w <C-w>
" Resize horizontal splitted windows with 'c' and 'Ctrl + c'
noremap t :res +2<CR>
noremap <S-t> :res -2<CR>

" Resize vertical splitted windows with '<' and '>'
noremap < 3<C-w><
noremap > 3<C-w>>

" ----------------
"  window swapping
" ----------------
"map <silent> <leader>wy :call WindowSwap#MarkWindowSwap()<CR>
"map <silent> <leader>wp :call WindowSwap#DoWindowSwap()<CR>
"map <silent> <leader>ww :call WindowSwap#EasyWindowSwap()<CR>

" ---------------
"  choose window
" ---------------
"nnoremap <leader>s <Plug>(choosewin)

" ---------------
"  Folding
" ---------------
" Fold a function to the next '}'
nnoremap zz va}zf

" -------------
"  indentation
" -------------
nnoremap I :IndentLinesToggle<CR>

" ------------------
"  mutiple-cursors
" ------------------
"let g:multi_cursor_quit_key 		   = '<Esc>'
"let g:multi_cursor_start_word_key 	   = '<C-n>'
""let g:multi_cursor_select_all_word_key = '<leader>my'
"let g:multi_cursor_start_key           = '<leader>mS'
"let g:multi_cursor_select_all_key      = '<leader>mas'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'

" ---------------
"  Terminal
" ---------------
tnoremap <Esc> <C-\><C-n>

" -----===================-----
"              Coc 
" -----===================-----

" -- snippets
" move between the function args
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'
"noremap <C-f> :CocList -I symbols<CR>
" to move in insert mode
"inoremap <C-l> <Esc>la
"inoremap <C-h> <Esc>ha

" -- Use Ctrl+h to trigger completion.
inoremap <silent><expr> <C-h> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" -------------
"  Other stuff
" -------------

" undo the undo with a latter U
map U <C-r>

" reload the vimrc
map <leader>ir :source ~/.vim/vimrc<CR>

" ---------
"  macros
" ---------
noremap ä q

" ------------------
" Private ones
" ------------------
noremap q :wq<CR>
"noremap <C-x> :w<CR>:bd<CR>
"onoremap <C-x> <Esc>
"vnoremap <C-x> <Esc>
"inoremap <C-x> <Esc>
noremap <leader><Space> :w<CR>
noremap <C-Space> :w<CR>:bd<CR>
onoremap <C-Space> <Esc>
vnoremap <C-Space><Esc>
inoremap <C-Space> <Esc>
inoremap <C-Null> <Esc>
nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

noremap <S-h> 5h
noremap <S-l> 5l
noremap <C-h> 0
noremap <C-l> $
noremap <S-j> 5gj
noremap <S-k> 5gk
vnoremap <S-j> 5gj
vnoremap <S-k> 5gk
nnoremap <buffer> k gk
nnoremap <buffer> j gj
noremap ö i
noremap Ö I
vnoremap <S-j> 5gj

" When After typing a bracket return, it will set place the cursor correctly
inoremap {<CR> {<CR>}<Esc>O
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O

""inoremap " ""<left>
""inoremap ' ''<left>
""inoremap ( ()<left>
""inoremap [ []<left>
""inoremap { {}<left>

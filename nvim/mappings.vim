" leader for plugins
let g:mapleader = " "
let g:maplocalleader = " "

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
"  open test files
" --------------
nnoremap <leader>o1 :vsplit ./text1.txt<CR>
nnoremap <leader>o2 :vsplit ./text2.txt<CR>
nnoremap <leader>o3 :vsplit ./text3.txt<CR>
nnoremap <leader>o4 :vsplit ./text4.txt<CR>

" open all three
nnoremap <leader>oa :vsplit ./text1.txt
            \ <bar> :split ./text2.txt
            \ <bar> :split ./text3.txt
            \ <bar> :split ./text4.txt<CR>

nnoremap <leader>op :CocCommand fzf-preview.ProjectFiles<CR>
nnoremap <leader>oh :FZF ~<CR>

" --------------
"  Runner
" --------------
if index(['c', 'python'], &filetype) == -1
    nnoremap <leader>lr :QuickRun -outputter loclist -hook/time/enable 1 -input "="
endif

" ----------------
"  vim-which-key
" ----------------
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" -----------
"  debugging
" -----------
noremap <F5> :!gcc -g -lm -O0 %<CR> <bar> :call vimspector#Restart()<CR>
noremap <F6> :call vimspector#StepOut()<CR>
noremap <F7> :call vimspector#StepInto()<CR>
noremap <F8> :!gcc -g -lm -O0 %<CR> <bar> :call vimspector#Continue()<CR>
noremap <F9> :call vimspector#ToggleBreakpoint()<CR>
noremap <F10> :call vimspector#ToggleBreakpoint({'condition' : '<here>'})
noremap <F11> :VimspectorWatch 
nnoremap Q :VimspectorReset<CR>

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
nnoremap T :TagbarToggle<CR>
"nnoremap <leader>it :TagbarToggle<CR>

" cloase preview window
"nnoremap <leader>ip :pc<CR>

" syntastic (close error-window)
"nnoremap <leader>e :lclose<CR>

" -------
"  fzf
" -------
noremap <C-f> :FZF<CR>

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
" quickrunner / asyncrun
" ------------------
noremap <localleader>lr :QuickRun -outputter loclist -hook/time/enable 1 -input "="
noremap <localleader>l1 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text1.txt"<CR>
noremap <localleader>l2 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text2.txt"<CR>
noremap <localleader>l3 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text3.txt"<CR>
noremap <localleader>l4 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text4.txt"<CR>

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
noremap <leader>ue :UltiSnipsEdit<CR>

" -----------
" Github 
" -----------
"nnoremap <leader>gp :Git push<CR>
"nnoremap <leader>gd :Gitdiffsplit<CR>
"nnoremap <leader>ga :Gitt add .<CR>

" -----------------
"  Window
" -----------------
" splitting window
noremap w <C-w>
" Resize horizontal splitted windows with 'c' and 'Ctrl + c'
noremap + :res +2<CR>
noremap - :res -2<CR>

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
nnoremap <C-p> :IndentLinesToggle<CR>

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

" ========
" Coc 
" ========
" -----------------
" Coc commands 
" -----------------
nnoremap <leader>cs :CocStart<CR>
nnoremap <leader>cu :CocUpdate<CR>

" -- snippets
" move between the function args
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'

" open terminal
nmap t <Plug>(coc-terminal-toggle)

" default commands
nmap <C-a> :CocAction<CR>
nmap <leader>def <Plug>(coc-definition)
nmap <leader>dec <Plug>(coc-declaration)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>td <Plug>(coc-type-definition)
nmap <leader>refe <Plug>(coc-references)
nmap <leader>refu <Plug>(coc-references-used)
nmap <leader>ren <Plug>(coc-rename)
nmap <leader>f <Plug>(coc-format)
nmap <leader>ca <Plug>(coc-codeaction)
nmap <leader>qf <Plug>(coc-fix-current)
nmap <C-h> <Plug>(coc-float-jump)
nmap <leader>refa <Plug>(coc-refactor)
omap if <Plug>(coc-funcobj-i) " inside function
xmap if <Plug>(coc-funcobj-i) 
xmap af <Plug>(coc-funcobj-a) " around function
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i) " inside class/struct/interface
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a) " around class/struct/interface
omap ac <Plug>(coc-classobj-a)

xnoremap <silent> <S-p> :call CocActionAsync('showSignatureHelp')<CR>
nnoremap <silent> , :call CocActionAsync('showSignatureHelp')<CR>

" -- Use Ctrl+Space to trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()

" open explorer
nnoremap <silent> <C-e> :CocCommand explorer --toggle<CR>

let g:coc_explorer_global_presets = {
            \ 'vim' :  {
            \   'root-uri' : '~/.config/nvim',
            \},
            \ 'c' :  {
            \   'root-uri': '/windows/Programmieren/C',
            \},
            \ 'python' : {
            \   'root-uri' : '/windows/Programmieren/Python',
            \},
            \ 'flutter' :  {
            \   'root-uri' : '/windows/Programmieren/Flutter',
            \},
            \ 'school' : {
            \   'root-uri' : '/windows/Schulzeug',
            \},
            \}
nnoremap <silent> <leader>ef :CocCommand explorer --preset flutter<CR>
nnoremap <silent> <leader>ec :CocCommand explorer --preset c<CR>
nnoremap <silent> <leader>ep :CocCommand explorer --preset python<CR>
nnoremap <silent> <leader>ev :CocCommand explorer --preset vim<CR>
nnoremap <silent> <leader>es :CocCommand explorer --preset school<CR>

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <tab> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" -------------
"  Other stuff
" -------------

" undo the undo with a latter U
map U <C-r>

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
"noremap <C-Space> :w<CR>:bd<CR>
"onoremap <C-Space> <Esc>
"vnoremap <C-Space><Esc>
"inoremap <C-Space> <Esc>
"inoremap <C-Null> <Esc>

" how to leave from different modes
nnoremap <C-l> :w<CR>:bd<CR>
onoremap <C-l> <Esc>
xnoremap <C-l> <Esc>
inoremap <C-l> <Esc>

nnoremap <F4> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i

"noremap <S-h> 5h
"noremap <S-l> 5l
noremap <silent> <S-h> ^
noremap <silent> <S-l> $
noremap <silent> <S-j> 5gj
noremap <silent> <S-k> 5gk
vnoremap <silent> <S-j> 5gj
vnoremap <silent> <S-k> 5gk
nnoremap <silent> <buffer> k gk
nnoremap <silent> <buffer> j gj
"noremap ö i
"noremap Ö I

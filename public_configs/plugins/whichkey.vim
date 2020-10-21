" define prefix dictionary
let g:which_key_map = {}

" use foating window
let g:which_key_use_floating_win = 1

" which kley to exit
let g:which_key_exit = ["\<Esc>", "\<C-j>"]

" display names
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" --------------------------------
" menus on existing key maps
" --------------------------------

" --------------
"  C - settings
" --------------
let g:which_key_map = { 'C' : [':tabnew ~/.vim/plugins/quickrunner.vim', 'edit C compile flags']}

let g:which_key_map.g = { 'name' : 'gcc' }

" ----------
"  windows
" ----------
"let g:which_key_map.w = { 'name' : 'windows'}

" --------------
"  filemanager
" --------------
let g:which_key_map.v = [':EditVifm', "Vifm"]

" -------------
"  quickrunner
" -------------
let g:which_key_map.l = { 'name' : 'language specifique'}
let g:which_key_map.l.r = [ ':QuickRun -outputter loclist -hook/time/enable 1 -input "="' , 'User input']
let g:which_key_map.l.1 = [ ':QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text1.txt"' , 'Run with text1.txt']
let g:which_key_map.l.2 = [ ':QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text2.txt"' , 'Run with text2.txt']
let g:which_key_map.l.3 = [ ':QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text3.txt"' , 'Run with text3.txt']
let g:which_key_map.l.4 = [ ':QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text4.txt"' , 'Run with text4.txt']

" --------
"  saving
" --------
let g:which_key_map = { ' ' : ["w" 	, "Write"]}

" -----------
"  internal
" -----------
let g:which_key_map.i = { 'name' : 'internal'}
let g:which_key_map.i.r = [':source ~/.vim/vimrc', 'reload source file']
let g:which_key_map.i.t = [':TagbarToggle', 'toggle tagbar']

" ------------
"  debugging
" ------------
"let g:which_key_map.d = { 'name' : 'debugging'}
"let g:which_key_map.d.c = ['<Plug>VimspectorContinue', 'continue']
"let g:which_key_map.d.s = ['<Plug>VimspectorStop', 'stop']
"let g:which_key_map.d.r = ['<Plug>VimspectorRestart', 'restart']
"let g:which_key_map.d.p = ['<Plug>VimspectorPause', 'pause']
"let g:which_key_map.d.T = ['<Plug>VimspectorToggleBreakpoint', 'toggle breakpoint']
"let g:which_key_map.d.t = ['<Plug>VimspectorToggleConditionalBreakpoint', 'toggle conditional breakpoint']
"let g:which_key_map.d.a = ['<Plug>VimspectorAddFunctionBreakpoint', 'add function breakpoint']
"let g:which_key_map.d.o = ['<Plug>VimspectorStepOver', 'step over']
"let g:which_key_map.d.I = ['<Plug>VimspectorStepInto', 'step into']
"let g:which_key_map.d.O = ['<Plug>VimspectorStepOut', 'step out']
let g:which_key_map.q = [':VimspectorReset', 'quit']

" -----------
"  aligning
" -----------
let g:which_key_map.a = ['<Plug>(EasyAlign)', 'align']

" ------
"  coc
" ------
" -- todolist
let g:which_key_map.T = {'name' : 'todolist'}
let g:which_key_map.T.l = [':CocList todolist', 'list todolist']
let g:which_key_map.T.a = [':CocCommand todolist.create', "add a task"]
let g:which_key_map.T.c = [':CocCommand todolist.clear', "clear todlist"]

let g:which_key_map.c = { 'name' : 'coc' }
let g:which_key_map.d = ['<Plug>(coc-definition)', "definition"]

let g:which_key_map.c.a = ['<Plug>(coc-codeaction)', 'codeaction']
let g:which_key_map.c.t = ['<Plug>(coc-type-definition)', "type-definition"]
let g:which_key_map.c.i = ['<Plug>(coc-implementation)', "implementation"]
let g:which_key_map.c.r = ['<Plug>(coc-references)', "references"]

" -- marketplace
let g:which_key_map.c.m = [':CocList marketplace', "marketplace"]

" -- renaming
let g:which_key_map.r = ['<Plug>(coc-rename)', "rename"]

" -- Refactor
let g:which_key_map.c.R = ['<Plug>(coc-refactor)', "Refactor"]

" -- formatting
let g:which_key_map.f = ['<Plug>(coc-format)', "format code"]

" -- fixing
let g:which_key_map.c.f = [':CocFix', 'fix current']

" -- editing
let g:which_key_map.c.e = { 'name' : 'edit configs'}
let g:which_key_map.c.e.s = [':CocCommand snippets.editSnippets', 'snippets']
let g:which_key_map.c.e.c = [':CocConfig', 'coc-config']

" -- terminal
let g:which_key_map.t = [ ':CocCommand terminal.Toggle', "Terminal Toggle"]
"let g:which_key_map.T = [ ':CocCommand terminal.Destroy', "Terminal delete"]

" -- find errors
let g:which_key_map.n = ['<Plug>(coc-diagnostic-next)', 'goto next error']
let g:which_key_map.p = ['<Plug>(coc-diagnostic-prev)', 'goto previous error']
let g:which_key_map.c.s = [ ':CocList -I symbols', "list symbols" ]

" -- list
let g:which_key_map.c.l = { 'name' : 'list' }
let g:which_key_map.c.l.a = [':CocList diagnostics', 'diagnostics']
let g:which_key_map.c.l.e = [':CocList extensions', 'extensions']
let g:which_key_map.c.l.p = [':CocList preview', 'preview']
let g:which_key_map.c.l.o = [':CocList outline', 'outline']
let g:which_key_map.c.l.r = [':CocListResume', 'resume']
let g:which_key_map.c.l.n = [':CocNext', 'next']
let g:which_key_map.c.l.c = [':CocList commands', 'commands']

" ----- language specifique -----
let g:which_key_map.l = { 'name' : 'language specifique'}

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

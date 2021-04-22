" define prefix dictionary, also the main key-bindings
let g:which_key_map = {}

" use foating window
let g:which_key_use_floating_win = 1

" which kley to exit
let g:which_key_exit = ["\<Esc>", "\<C-j>"]

" display names
let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" --------------
"  filemanager
" --------------
"let g:which_key_map.v = [':EditVifm', "Vifm"]

" -------------
"  quickrunner
" -------------
let g:which_key_map.l = { 'name' : 'language specifique'}

" --------
"  saving
" --------
let g:which_key_map = { ' ' : ["w" 	, "Write"]}

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
"let g:which_key_map.q = [':VimspectorReset', 'quit vimspector']

" -----------
"  aligning
" -----------
let g:which_key_map.A = ['<Plug>(EasyAlign)', 'align']

" ------
"  coc
" ------
"let g:which_key_map.T = {'name' : 'todolist'}
"let g:which_key_map.T.l = [':CocFzfList todolist', 'list todolist']
"let g:which_key_map.T.a = [':CocCommand todolist.create', "add a task"]
"let g:which_key_map.T.c = [':CocCommand todolist.clear', "clear todlist"]

"let g:which_key_map.c = {
"            \ 'name' : 'coc',
"            \ 'm' : [ ':CocFzfList marketplace', 'marketplace' ],
"            \ 's' : [ ':CocFzfList -I symbols', 'list symbols' ],
"            \ 'l' : {
"            \   'name'  : 'list',
"            \   'a'  : [':CocFzfList diagnostics', 'diagnostics'],
"            \   'e'  : [':CocFzfList extensions', 'extensions'],
"            \   'p'  : [':CocFzfList preview', 'preview'],
"            \   'o'  : [':CocFzfList outline', 'outline'],
"            \   'r'  : [':CocFzfListResume', 'resume'],
"            \   'c'  : [':CocFzfList commands', 'commands'],
"            \   }
"            \ }
"let g:which_key_map.c = { 'name' : 'coc' }

"let g:which_key_map.c.a = ['<Plug>(coc-codeaction)', 'codeaction']
"let g:which_key_map.c.t = ['<Plug>(coc-type-definition)', "type-definition"]
"let g:which_key_map.c.r = ['<Plug>(coc-references)', "references"]

"let g:which_key_map.i = ['<Plug>(coc-implementation)', "implementation"]

" -- marketplace
"let g:which_key_map.c.m = [':CocFzfList marketplace', "marketplace"]

" -- Refactor
"let g:which_key_map.c.R = ['<Plug>(coc-refactor)', "Refactor"]

" -- formatting
"let g:which_key_map.f = ['<Plug>(coc-format)', "format code"]
"
" -- fixing
"let g:which_key_map.c.f = [':CocFix', 'fix current']

" -- find errors
"let g:which_key_map.n = ['<Plug>(coc-diagnostic-next)', 'goto next error']
"let g:which_key_map.p = ['<Plug>(coc-diagnostic-prev)', 'goto previous error']
"let g:which_key_map.c.s = [ ':CocFzfList -I symbols', "list symbols" ]

" -- list
"let g:which_key_map.c.l = { 'name' : 'list' }
"let g:which_key_map.c.l.a = [':CocFzfList diagnostics', 'diagnostics']
"let g:which_key_map.c.l.e = [':CocFzfList extensions', 'extensions']
"let g:which_key_map.c.l.p = [':CocFzfList preview', 'preview']
"let g:which_key_map.c.l.o = [':CocFzfList outline', 'outline']
"let g:which_key_map.c.l.r = [':CocFzfListResume', 'resume']
"let g:which_key_map.c.l.c = [':CocFzfList commands', 'commands']

" --------
" lsp 
" --------
"let g:which_key_map.a = ['<Plug>(lcn-code-action)', 'code action']
"let g:which_key_map.n = ['<Plug>(lcn-diagnostics-next)', 'diagnostic next']
"let g:which_key_map.p = ['<Plug>(lcn-diagnostics-prev)', 'diagnostic prev']

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <localleader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <localleader> :<c-u>WhichKeyVisual '<Space>'<CR>

" -----------------
"  normal configs
" -----------------
let g:leaderGuide_max_size = 10

" Define prefix dictionary
let g:lmap =  {}
let g:llmap = {}
"let g:d_shortcuts = {}

" ------------------
"  default commands
" ------------------
let g:lmap.i = { 'name' : 'internal commands'}
let g:lmap.i.r = ['source ~/.vim/vimrc', 'reload vimrc']

" colorscheme
let g:lmap.i.o = ['colorscheme "onedark" | let g:airline_theme="onedark"', 'colorscheme: onedark']
let g:lmap.i.g = ['colorscheme "gruvbox9" | let g:airline_theme="badwolf"', 'colorscheme: gruvbox9']

" tagbar and preview window
let g:lmap.i.t = ['TagbarToggle', 'toggle tagbar']
let g:lmap.i.c = ['pc', 'close preview window']

" ---------------------------
"  commands and description
" ---------------------------

" ----------------
"  filemanagers
" ----------------
"let g:lmap.f = {'name' : 'filemanagers'}
"let g:lmap.f.r = ['RangerCurrentDirectory', 'ranger']
"let g:lmap.f.n = ['NERDTreeToggle', 'nerdtree']
let g:lmap.v = ['EditVifm', 'vifm']

" ------------------
"  multiple cursors
" ------------------
"let g:lmap.m = { 'name' : 'multiple cursors'}
"
"let g:lmap.m.a = { 'name' : 'select all cursors'}
"let g:lmap.m.a.s = ['call mutiple_cursors#select_all("n", 0)', 'select all']
"
"let g:lmap.m.n = ['call multiple_cursors#new("n", 1)', 'next cursor']
"let g:lmap.m.S = ['call mutiple_cursors#new("n", 0)', 'start cursor']
"let g:lmap.m.y = ['call mutiple_cursors#select_all("n", 1)', 'select all words']

" -----------
"  loclist
" -----------
let g:lmap.e = ['lclose', 'close loclist']

" ----------------
"  choose window

let g:lmap.s = ['ChooseWin', "choose window"]

" --------
"  tabs
" --------
let g:lmap.t = { 'name' : 'tabs'}
let g:lmap.t.j = ['tabprevious', 'previous']
let g:lmap.t.k = ['tabnext', 'next']
let g:lmap.t.q = ['copen', 'quickfix']
let g:lmap.t.T = ['tabnew', 'new tab']
let g:lmap.t.m = ['TMToggle', 'toggle tab manager']
let g:lmap.t.f = ['TMFocus', 'focus tab manager']

" -----------
"  window
" -----------
let g:lmap.w = { 'name' : 'window'}

" ----------------------
"  language specifique
" ----------------------
"call leaderGuide#register_prefix_descriptions(",", "g:llmap")
"let g:llmap.r = ['<Plug>(quickrun)', 'run']

" LaTeX
"autocmd FileType tex let g:llmap.l = { 'name' : 'vimtex'}
call leaderGuide#register_prefix_descriptions(",", "g:llmap")

" ----------
"  arduino
" ----------
"let g:lmap.a = { 'name' : 'arduino'}
"let g:lmap.a.b = ['make --makefile=~/.platformio/Makefile']
"let g:lmap.a.u = ['make --makefile=~/.platformio/Makefile upload']
"let g:lmap.a.c = ['make --makefile=~/.platformio/Makefile clean']

" ------------
"  ultisnips
" ------------
let g:lmap.u = { 'name' : 'ultisnips'}
let g:lmap.ue = ['UltiSnipsEdit', 'edit snippet']

" ----------
"  grammar
" ----------
let g:lmap.g = { 'name' : 'grammar'}
let g:lmap.g.s = ['GrammarousCheck --lang=de', 'activate']

" ------
"  coc
" ------
"let g:lmap.c = { 'name' : 'coc'}
"
"let g:lmap.c.t = ['CocCommand terminal.Toggle', 'terminal toggle']
"let g:lmap.c.d = ['CocCommand terminal.Destroy', 'terminal destroy']
"
"let g:lmap.c.e = { 'name' : 'edit configs'}
"let g:lmap.c.e.s = ['CocCommand snippets.editSnippets', 'snippets']
"let g:lmap.c.e.c = ['CocConfig', 'coc-config']
"
"let g:lmap.c.l = { 'name': 'list'} 
"let g:lmap.c.l.a = ['CocList diagnostics', 'diagnostics']
"let g:lmap.c.l.e = ['CocList extensions', 'extensions']
"let g:lmap.c.l.p = ['CocList preview', 'preview']
"let g:lmap.c.l.o = ['CocList outline', 'outline']
"let g:lmap.c.l.r = ['CocListResume', 'resume']
"let g:lmap.c.l.n = ['CocNext', 'next']
"let g:lmap.c.l.s = ['CocList -I symbols', 'symbols']
"let g:lmap.c.l.c = ['CocList commands', 'commands']

"let g:lmap.c.g = { 'name' : 'goto'}

" ----------------------
"  special description
" "\ '<Plug>(coc-rename)' : 'coc-rename',
""""	\ ':<Plug>(coc-definition)' : 'coc-definition',
""""	\ '<Plug>(coc-diagnostic-next)' : 'coc-diagnostic-next',
""""	\ '<Plug>(coc-diagnostic-prev)' : 'coc-diagnostic-prev',
""""	\ '<Plug>(coc-references)' : 'coc-references',
""""	\ '<Plug>(coc-type-definition)' : 'coc-type-definition',
""""	\ '<Plug>(coc-implementation)' : 'coc-implementation',
""""	\ '<Plug>(coc-format-selected)' : 'format-selected', 
""""	\ '<Plug>(coc-refactor)' : 'coc-refactor',
" ----------------------
let s:value_lookup = {
		\ ':w<CR>' : 'save',
		\ '<Plug>(grammarous-open-info-window)' : 'open-info-window',
		\ '<Plug>(grammarous-fixit)' : 'fixit',
		\ '<Plug>(grammarous-close-info-window)' : 'close-info-window',
		\ '<Plug>(grammarous-move-to-next-error)' : 'next error',
		\ '<Plug>(grammarous-move-to-previous-error)' : 'previous error',
		\ '<Plug>(grammarous-remove-error)' : 'remove error',
		\ '<Plug>(grammarous-disable-rule)' : 'disable rule under cursor',
		\
		\ ':call multiple_cursors#new("n", 1)' : 'next cursor',
		\
		\ ':QuickRun -outputter loclist -input "="' : 'user input',
		\ ':QuickRun -outputter loclist -input "./text1.txt"<CR>' : 'text1.txt',
		\ ':QuickRun -outputter loclist -input "./text2.txt"<CR>' : 'text2.txt',
		\ ':QuickRun -outputter loclist -input "./text3.txt"<CR>' : 'text3.txt'
		\}

function! s:my_displayfunc()
    let g:leaderGuide#displayname =
            \get(s:value_lookup, g:leaderGuide#displayname,
            \g:leaderGuide#displayname)
endfunction
let g:leaderGuide_displayfunc = [function("s:my_displayfunc")]

" -----------------
"  final setup
" -----------------
let g:topdict = {}
let g:topdict[' '] = g:lmap
let g:topdict[' ']['name'] = '<leader>'
let g:topdict[' ']['l'] = g:llmap
let g:topdict[' ']['l']['name'] = 'language specifique'

"let g:topdict['d'] = g:d_shortcuts
"let g:topdict['d']['name'] = 'delete'

" register it with the guide:
call leaderGuide#register_prefix_descriptions("", "g:topdict")

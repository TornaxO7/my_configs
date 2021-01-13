" airline settings
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
let g:airline_symbols.readonly = ' '
"let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.linenr = ' '
"let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '  '
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#coc#enabled = 1

" alternate text of filetype
let g:airline_filetype_overrides = {
    \ 'defx':  ['defx', '%{b:defx.paths[0]}'],
    \ 'gundo': [ 'Gundo', '' ],
    \ 'help':  [ 'Help', '%f' ],
    \ 'minibufexpl': [ 'MiniBufExplorer', '' ],
    \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
    \ 'startify': [ 'startify', '' ],
    \ 'vim-plug': [ 'Plugins', '' ],
    \ 'vimfiler': [ 'vimfiler', '%{vimfiler#get_status_string()}' ],
    \ 'vimshell': ['vimshell','%{vimshell#get_status_string()}'],
    \ }

" enable coc-integration
let g:airline#extensions#coc#enabled = 1

let g:airline_mode_map = {
    \ '__'     : '-',
    \ 'c'      : 'Commandline ',
    \ 'i'      : 'Insert ',
    \ 'ic'     : 'Insert ',
    \ 'ix'     : 'Insert ',
    \ 'n'      : 'Normal  ',
    \ 'multi'  : 'Multi Cursor  ',
    \ 'ni'     : 'N',
    \ 'no'     : 'N',
    \ 'R'      : 'Replace ',
    \ 'Rv'     : 'R',
    \ 's'      : 'Select 礪',
    \ 'S'      : 'Select 礪',
    \ ''     : 'Select 礪',
    \ 't'      : 'Terminal ',
    \ 'v'      : 'Visual-single ﭑ',
    \ 'V'      : 'Visual-lines ﭑ',
    \ ''     : 'Visual-blocks ﭑ',
    \ }

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'short_path'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" scrollbar
"let g:airline_section_x = '%{ScrollStatus()} %y'
"let g:scrollstatus_size = 20
"
let g:airline_statusline_ontop = 0

" display text when window swapping
let g:airline#extensions#windowswap#indicator_text = 'Window Swapping'

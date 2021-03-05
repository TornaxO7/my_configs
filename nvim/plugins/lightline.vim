let g:lightline = {}
let g:lightline.colorscheme='solarized'

let g:lightline.mode_map = {
    \ 'n' : 'Normal',
    \ 'i' : 'Insert',
    \ 'R' : 'Replace',
    \ 'v' : 'Visual',
    \ 'V' : 'V-Line',
    \ "\<C-v>": 'V-Block',
    \ 'c' : 'Command',
    \ 's' : 'Select',
    \ 'S' : 'S-Line',
    \ "\<C-s>": 'S-Block',
    \ 't': 'Terminal',
    \ }

let g:lightline.separator = {
            \ 'left'  : '',
            \ 'right' : ''
            \ }

let g:lightline.subseparator = {
            \ 'left'  : '',
            \ 'right' : ''
            \ }

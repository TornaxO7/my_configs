let g:quickui_color_scheme = "solarized"
let g:quickui_border_style = 3

let content = [
            \ [ 'dl', ':norm dl' ],
            \ [ 'diw', ':norm diw' ],
            \ [ 'daw', ':norm daw' ],
            \ [ 'dib', ':norm dib' ],
            \ [ 'dab', ':norm dab' ],
            \ [ 'das', ':norm das' ],
            \ [ 'diB', ':norm diB' ],
            \ [ 'daB', ':norm daB' ],
            \]
let opts = {'title': 'Deletion',
            \'w' : 10,
            \}
noremap d :call quickui#listbox#open(content, opts)<CR>
nnoremap <C-a> :call quickui#tools#preview_tag('')<cr>

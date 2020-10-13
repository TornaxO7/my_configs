" start a clientserver to connect pdf-file with vim
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

" compiler options
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'nvim',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

" detect latex file
let g:tex_flavor = "latex"

" pdf-viewer (zathura)
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_method = "zathura"
" options for zathura
let g:vimtex_view_zathura_options=''

" autocompiling
let g:livepreview_cursorhold_recompile = 1

" folding
let g:vimtex_fold_enabled = 1
set foldmethod=expr
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()

" auto closing braces
let g:vimtex_complete_close_braces = 1

" enable mappings in insert mode
let g:vimtex_imaps_enabled = 1

" leader of imaps
let g:vimtex_imaps_leader = "´"

function! Synctex()
    execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
    redraw!
	endfunction
map <localleader>lz :call Synctex()<cr>

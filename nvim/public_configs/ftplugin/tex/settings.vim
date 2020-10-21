" start a clientserver to connect pdf-file with vim
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

function! Callback(msg)
  let l:m = matchlist(a:msg, '\vRun number (\d+) of rule ''(.*)''')
  if !empty(l:m)
    echomsg l:m[2] . ' (' . l:m[1] . ')'
  endif
endfunction

" compiler options
let g:vimtex_compiler_latexmk = {
    \ 'backend' : 'nvim',
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'hooks' : [
    \       function('Callback')
    \   ],
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \   '-logfilewarninglist',
    \   '-shell-escape',
    \ ],
    \}

" detect latex file
let g:tex_flavor = "latex"
let g:tex_no_error = 0
let g:tex_conceal = ''

" enable verbose information
let g:vimtex_log_verbose = 1

" pdf-viewer (zathura)
let g:livepreview_previewer = 'zathura'
let g:vimtex_view_method = "zathura"
" options for zathura
let g:vimtex_view_zathura_options=''

" autocompiling
let g:livepreview_cursorhold_recompile = 1

" formatting
let g:vimtex_format_enabled = 1

" folding
let g:vimtex_fold_enabled = 1
set foldmethod=expr
set foldexpr=vimtex#fold#level(v:lnum)
set foldtext=vimtex#fold#text()

" auto-indentation. 
let g:vimtex_indent_delims = {
      \ 'open' : ['{'],
      \ 'close' : ['}'],
      \ 'close_indented' : 1,
      \ 'include_modified_math' : 1,
      \}

" environments which should have an auto indentation
let g:vimtex_indent_lists = [
      \ 'itemize',
      \ 'description',
      \ 'enumerate',
      \ 'thebibliography',
      \]

" auto closing braces
let g:vimtex_complete_close_braces = 1

" enable mappings in insert mode
let g:vimtex_imaps_enabled = 0

" leader of imaps
let g:vimtex_imaps_leader = "´"

function! Synctex()
    execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
    redraw!
	endfunction
map <localleader>lz :call Synctex()<cr>

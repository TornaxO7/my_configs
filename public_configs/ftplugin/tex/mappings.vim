" for long lines
nnoremap j gj
nnoremap k gk

" refresh folds
"noremap <leader>lr :VimtexRefreshFolds<CR>

" compile it
let g:which_key_map.l.n = ['<plug>(vimtex-compile-ss)', 'single shot']
noremap <leader>m vae:VimtexCompileSelected<CR>

" goto LaTeX - Sandbox
map <leader>il :tabnew /windows/Dokumente/Latex_Sandkasten/Dokument.tex<CR>

" --------
"  imaps
" --------
"inoremap <C-i> \textit{}<Esc>i
"inoremap <C-b> \textbf{}<Esc>i
"inoremap <C-u> \underline{}<Esc>i

" -- braces
"inoremap <BS> \left[\right]<Esc>6hi

inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

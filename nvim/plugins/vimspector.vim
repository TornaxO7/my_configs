" -------------
" Settings 
" -------------
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools' ]
"let g:vimspector_enable_mappings = 'HUMAN'

let g:vimspector_sidebar_width = 40
let g:vimspector_bottombar_height = 10

let g:vimspector_terminal_maxwidth = 40
let g:vimspector_terminal_minwidth = 30

" -------------
" Mappings 
" -------------
noremap <F5> :!gcc -g -lm -O0 %<CR> <bar> :call vimspector#Restart()<CR>
noremap <F6> :call vimspector#StepOut()<CR>
noremap <F7> :call vimspector#StepInto()<CR>
noremap <F8> :!gcc -g -lm -O0 %<CR> <bar> :call vimspector#Continue()<CR>
noremap <F9> :call vimspector#ToggleBreakpoint()<CR>
noremap <F10> :call vimspector#ToggleBreakpoint({'condition' : '<here>'})
noremap <F11> :VimspectorWatch 
nnoremap Q :VimspectorReset<CR>

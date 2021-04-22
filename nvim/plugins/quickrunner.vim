" -------------
" Settings 
" -------------
let g:quickrun_no_default_key_mappings = 1
let g:quickrun_config = {}

"\ 'cmdopt' : '-g -lm -Werror -Wfatal-errors -Wall -Wextra'
"\ 'cmdopt' : '-g -lm',
" 		\ 'cmdopt' : '-g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized',


" use gcc to compile c code
let g:quickrun_config.c = {
		\ 'command' : 'gcc',
        \ 'outputter' : 'quickfix',
		\ 'cmdopt' : '-g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized',
		\}

let g:quickrun_config.python = {
        \ 'command' : 'python',
        \ 'outputter' : 'quickfix',
        \}
" ------------
" Mappings
" ------------
if index(['c', 'python'], &filetype) == -1
    nnoremap <localleader>lr :QuickRun -outputter loclist -hook/time/enable 1 -input "="
endif

noremap <localleader>lr :QuickRun -outputter loclist -hook/time/enable 1 -input "="
noremap <localleader>l1 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text1.txt"<CR>
noremap <localleader>l2 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text2.txt"<CR>
noremap <localleader>l3 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text3.txt"<CR>
noremap <localleader>l4 :QuickRun -outputter loclist -hook/time/enable 1 -cmdopt "text4.txt"<CR>

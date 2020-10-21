let g:quickrun_no_default_key_mappings = 1
let g:quickrun_config = {}

"\ 'cmdopt' : '-g -lm -Werror -Wfatal-errors -Wall -Wextra'
"\ 'cmdopt' : '-g -lm',
" 		\ 'cmdopt' : '-g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized',


" use gcc to compile c code
let g:quickrun_config.c = {
		\ 'command' : 'gcc',
		\ 'cmdopt' : '-g -lm -Werror -Wfatal-errors -Wall -Wextra -Wuninitialized',
		\}

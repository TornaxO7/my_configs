let g:syntastic_always_populate_loc_list = 1

" show errors in location-list
let g:syntastic_auto_loc_list = 1

" load syntastic when first loaded
let g:syntastic_check_on_open = 1

" skip checks when closing
let g:syntastic_check_on_wq = 1

" Error format
let g:syntastic_stl_format = "[%E{Error in line: %fe}%B{, }%W{Warn in line: %fw}]"

" highlight errors
" highlight SyntasticErrorSign guifg=white guibg=red

" display height
let g:syntastic_loc_list_height = 5

" ignore files
let g:syntastic_ingore_files = ['tex$']

" -----------------
"  syntax checkers
" -----------------
" LaTeX
let g:syntastic_tex_checkers = []

" assembly
let g:syntastic_asm_checkers = ["nasm"]
let g:syntastic_asm_dialect = "intel"

" arduino
let g:syntastic_ino_checkers = ["avrgcc"]

" C
let g:syntastic_c_checkers = ["gcc", "checkpatch", "clang_check"]

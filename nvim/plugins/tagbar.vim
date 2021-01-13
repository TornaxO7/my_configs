" auto-open tagbar
"autocmd VimEnter * nested :call tagbar#autoopen(1)

" tagbar window width
let g:tagbar_width = 40

" display them in their order
let g:tagbar_sort = 0

" don't show linenumbers
let g:tagbar_show_linenumbers = 0

" don't close when jumping to a function
let g:tagbar_autoclose = 0

" move cursor in tagbar to the current tag in preview window
let g:tagbar_autopreview = 0

" where the preview should show up
"let g:tagbar_previewwin_pos = 'split'

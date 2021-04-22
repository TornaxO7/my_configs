" == indent-blankline ==
let g:indent_blankline_char = '│'
let g:indent_blankline_filetype_exclude = ['help']
let g:indent_blankline_buftype_exclude = ['terminal']
let g:indent_blankline_space_char = ' '
let g:indent_blankline_use_treesitter = v:false
let g:indent_blankline_show_first_indent_level = v:false
let g:indent_blankline_show_end_of_line = v:true
let g:indent_blankline_show_current_context = v:true
let g:indent_blankline_context_highlight = 'Function' 
let g:indent_blankline_context_highlight = [
                                            \ 'class',
                                            \ 'function',
                                            \ 'method',
                                            \ ]
let g:indent_blankline_show_trailing_blankline_indent = v:false
let g:indent_blankline_char_highlight_list = [
                                              \ 'Function',
                                              \ 'Conditional',
                                              \ 'Special',
                                              \ 'Underlined']

" == indentline ==


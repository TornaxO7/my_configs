" ------ GENERAL -----
"  To see the options:
"  :h youcompleteme-options
" ----------------------------

" minimum of chars to activate itself
let g:ycm_min_num_of_chars_for_completion = 2

" minimum of chars of a completion candidate to be in the preview
let g:ycm_min_num_identifier_candidate_chars = 0

" max num in preview
let g:ycm_max_num_candidates = 50
let g:ycm_max_num_identifier_candidates = 10

" enable autotrigger
let g:ycm_auto_trigger = 1

" open loclist
let g:ycm_always_populate_location_list = 0

" Let ycm be activated even in comments
let g:ycm_complete_in_comments = 0

" let ycm be activated even in strings
let g:ycm_complete_in_strings = 1

let g:ycm_collect_identifiers_from_comments_and_strings = 0

" autocompletion for ultisnips
let g:ycm_use_ultisnips_completer = 1

" ---------
"  Symbols
" ---------
let g:ycm_error_symbol = ''
let g:ycm_warning_symbol = ' '

" Where ycm shouldn't be activated
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'leaderf': 1,
      \ 'mail': 1
      \}

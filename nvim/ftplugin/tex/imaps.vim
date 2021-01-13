call vimtex#imaps#add_map({
      \ 'lhs' : '<cr>',
      \ 'rhs' : "\r\\item ",
      \ 'leader'  : '',
      \ 'wrapper' : 'vimtex#imaps#wrap_environment',
      \ 'context' : [
      \   'itemize',
      \   'enumerate',
      \ ],
      \})

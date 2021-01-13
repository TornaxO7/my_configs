augroup local-asyncrun
  au!
  au User AsyncRunStop copen | wincmd p
augroup END

let g:asyncrun_bell=1
let g:asyncrun_save=1

" enable stdin
let g:asyncrun_stdin=1

" open quickfix window with 20 lines
let g:asyncrun_open = 10

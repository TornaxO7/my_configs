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

nnoremap <leader>lm :AsyncRun -mode=term -rows=15 -pos=bottom -strip -cwd="$(VIM_FILEDIR)" -save=2 make
nnoremap <leader>lq :!qemu-system-i386 -kernel build/kernel.bin & disown

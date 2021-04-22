" -------------
" Settings 
" -------------
" fzf layout
" down/up/left/right
let g:fzf_layout={ 'window': { 'width': 0.9, 'height': 0.75 } }
let g:fzf_preview_window=['right:50%', 'ctrl-/']

" -------------
" Mappings 
" -------------
noremap <C-f>f :Files<CR>
noremap <C-f>g :Rg<CR>
noremap <C-f>c :Commands<CR>
noremap <C-f>k :Maps<CR>
noremap <C-f>h :Helptags<CR>
noremap <C-f>b :Buffers<CR>

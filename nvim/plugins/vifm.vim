" -------------
" Settings 
" -------------
" String to executable
let g:vifm = "~/.config/vifm/scripts/vifmrun"

" change active directory while navigting in vifm
let g:vifm_embed_cwd = 0

" -------------
" Mappings 
" -------------
noremap <localleader>v :EditVifm<CR>
noremap <C-t> :TabVifm<CR>

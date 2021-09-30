" -------------
" Settings 
" -------------
" String to executable.
" We can't have image preview in tty, so this should be disabled if
" $TERM is 'linux'
if $TERM == 'linux'
    let g:vifm = 'vifm'
else
    let g:vifm = "~/.config/vifm/scripts/vifmrun"
endif

" change active directory while navigting in vifm
let g:vifm_embed_cwd = 0

" -------------
" Mappings 
" -------------
"noremap <localleader>v :EditVifm<CR>
" noremap <C-t> :TabVifm<CR>

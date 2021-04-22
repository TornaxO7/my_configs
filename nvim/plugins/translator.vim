" -------------
" Settings 
" -------------
let g:translator_target_lang='de'
let g:translator_history_enable=v:true

" -------------
" Mappings 
" -------------
nmap <silent> <localleader>tt <Plug>TranslateW
nmap <silent> <localleader>tr <Plug>TranslateR

vmap <silent> <localleader>tt <Plug>TranslateWV
vmap <silent> <localleader>tr <Plug>TranslateRV

" -----------------
" Highlighting 
" -----------------
" Background of translator window border
hi def link Translator                  NormalFloat
hi def link TranslatorBorder            NormalFloat

" -------------
" Settings 
" -------------
let g:clap_layout = { 'relative': 'editor' }
let g:clap_open_action = { 
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' 
            \ }
"let g:clap_theme = { 'search_text': {'guifg': 'red', 'ctermfg': 'red'} }
let g:clap_theme = 'solarized_light'
let g:clap_insert_mode_only = v:true
let g:clap_enable_icon = 1
let g:clap_open_preview = 'never'

" -------------
" Mappings 
" -------------
nnoremap <C-f>f :Clap files<CR>
nnoremap <C-f>h :Clap help_tags<CR>
nnoremap <C-f>m :Clap maps<CR>
nnoremap <C-f>c :Clap command<CR>
nnoremap <C-f>g :Clap grep<CR>

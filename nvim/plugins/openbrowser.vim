" -------------
" Settings 
" -------------
let g:openbrowser_search_engines = {
            \ 'ecosia' : 'https://www.ecosia.org/search?q={query}',
            \ 'vimawesome' : 'https://vimawesome.com/?q={query}',
            \ 'pons' : 'https://de.pons.com/',
            \ 'ctan' : 'https://www.ctan.org/search?phrase={query}'
            \ }

" -------------
" Mappings 
" -------------
nnoremap <localleader>be :OpenBrowserSearch -ecosia 
nnoremap <localleader>bv :OpenBrowserSearch -vimawesome 
nnoremap <localleader>bp :OpenBrowserSearch -pons placeholder<CR>

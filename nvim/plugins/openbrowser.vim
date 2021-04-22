" -------------
" Settings 
" -------------
let g:openbrowser_search_engines = {
            \ 'ecosia' : 'https://www.ecosia.org/search?q={query}',
            \ 'vimawesome' : 'https://vimawesome.com/?q={query}',
            \ 'ctan' : 'https://www.ctan.org/search?phrase={query}',
            \ }

" -------------
" Mappings 
" -------------
nnoremap <localleader>be :OpenBrowserSearch -ecosia 
nnoremap <localleader>bv :OpenBrowserSearch -vimawesome 
nnoremap <localleader>bp :!chromium https://de.pons.com/ & disown<CR>
nnoremap <localleader>bl :!chromium https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md & disown<CR>

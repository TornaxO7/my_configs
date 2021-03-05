" -------------
" Settings 
" -------------
" open Nerdtree when startup
"autocmd vimenter * NERDTree

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:NERDTreeNaturalSort=0
let g:NERDTreeSortHiddenFirst=0
let g:NERDTreeChDirMode=1

" -------------
" Mappings 
" -------------
nnoremap <C-e> :NERDTreeToggle<CR>

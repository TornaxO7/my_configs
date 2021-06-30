" -------------
" Settings 
" -------------
" open Nerdtree when startup
"autocmd vimenter * NERDTree

" Exit Vim if NERDTree is the only window left.
augroup NERDTree
    autocmd!
    autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
augroup END

let NERDTreeNaturalSort=0
let NERDTreeSortHiddenFirst=0
let NERDTreeChDirMode=0
let NERDTreeShowLineNumbers=1
let NERDTreeUseTCD=0
let NERDTreeHijackNetrw=0

" -------------
" Mappings 
" -------------
nnoremap <C-e> :NERDTreeToggle<CR>

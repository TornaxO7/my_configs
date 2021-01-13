" -------------
"  auto stuff
" -------------
let g:coc_start_at_startup = 0
" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

let g:node_client_debug = 1

" which plugins
let g:coc_global_extensions = [
            \ "coc-ultisnips",
            \ "coc-todolist",
            \ "coc-terminal",
            \ "coc-tag",
            \ "coc-prettier",
            \ "coc-marketplace",
            \ "coc-highlight",
            \ "coc-yaml",
            \ "coc-vimtex",
            \ "coc-tsserver",
            \ "coc-tslint-plugin",
            \ "coc-tslint",
            \ "coc-toml",
            \ "coc-texlab",
            \ "coc-sh",
            \ "coc-pyright",
            \ "coc-phpls",
            \ "coc-perl",
            \ "coc-markdownlint",
            \ "coc-json",
            \ "coc-html",
            \ "coc-cmake",
            \ "coc-clangd",
            \ "coc-fzf-preview",
            \ "coc-explorer",
            \ "coc-flutter-tools"
            \]

" -----------
"  functions
" -----------
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" short: When seeing an expression + typing tab => autocompletion
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ coc#refresh()
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-i>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Use Ctrl+d to show documentation in preview window.
nnoremap <silent> <C-d> :call <SID>show_documentation()<CR>
inoremap <silent> <C-d> <Esc>:call <SID>show_documentation()<CR>

" -------------
"  auto stuff
" -------------
let g:coc_start_at_startup=0

let g:node_client_debug = 1

" which plugins
let g:coc_global_extensions = [
            \ "coc-clangd",
            \ "coc-cmake",
            \ "coc-flutter-tools",
            \ "coc-fzf-preview",
            \ "coc-highlight",
            \ "coc-html",
            \ "coc-json",
            \ "coc-markdownlint",
            \ "coc-marketplace",
            \ "coc-perl",
            \ "coc-phpls",
            \ "coc-prettier",
            \ "coc-pyright",
            \ "coc-sh",
            \ "coc-tag",
            \ "coc-texlab",
            \ "coc-todolist",
            \ "coc-toml",
            \ "coc-tslint",
            \ "coc-tslint-plugin",
            \ "coc-tsserver",
            \ "coc-ultisnips",
            \ "coc-vimtex",
            \ "coc-yaml",
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
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-i>"

" -----------------
" autocommands 
" -----------------
augroup CocAutocmds
    autocmd!
    autocmd CursorHold * silent call CocActionAsync('highlight')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

    autocmd User EasyMotionPromptBegin silent! CocDisable
    autocmd User EasyMotionPromptEnd   silent! CocEnable
augroup END

" -------------
" Mappings 
" -------------

nnoremap <localleader>cs :CocStart<CR>
nnoremap <localleader>cu :CocUpdate<CR>

" -- snippets
" move between the function args
let g:coc_snippet_next = '<C-j>'
let g:coc_snippet_prev = '<C-k>'

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" show documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

" translating
nmap <localleader>tt <Plug>(coc-translator-p)
vmap <localleader>tt <Plug>(coc-translator-pv)
nmap <localleader>tr <Plug>(coc-translator-r)
vmap <localleader>tr <Plug>(coc-translator-rv)

" listing
noremap <localleader>cld :CocFzfList diagnostics<CR>
noremap <localleader>cle :CocFzfList extensions<CR>
noremap <localleader>clp :CocFzfList preview<CR>
noremap <localleader>clo :CocFzfList outline<CR>
noremap <localleader>clr :CocFzfListResume<CR>
noremap <localleader>clc :CocFzfList commands<CR>
noremap <localleader>cls :CocFzfList symbols<CR>

" movement
nmap <localleader>n <Plug>(coc-diagnostic-next)
nmap <localleader>p <Plug>(coc-diagnostic-prev)

" default commands
"nmap <C-a> :CocAction<CR>
nmap <localleader>d <Plug>(coc-definition)
"nmap <localleader>dec <Plug>(coc-declaration)
nmap <localleader>i <Plug>(coc-implementation)
"nmap <localleader>td <Plug>(coc-type-definition)
nmap <localleader>refe <Plug>(coc-references)
nmap <localleader>refu <Plug>(coc-references-used)
nmap <localleader>ren <Plug>(coc-rename)
nmap <localleader>ca <Plug>(coc-codeaction)
nmap <localleader>qf <Plug>(coc-fix-current)
nmap <C-h> <Plug>(coc-float-jump)
nmap <localleader>refa <Plug>(coc-refactor)
omap if <Plug>(coc-funcobj-i) " inside function
xmap if <Plug>(coc-funcobj-i) 
xmap af <Plug>(coc-funcobj-a) " around function
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i) " inside class/struct/interface
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a) " around class/struct/interface
omap ac <Plug>(coc-classobj-a)

xnoremap <silent> <S-p> :call CocActionAsync('showSignatureHelp')<CR>

" -- Use Ctrl+Space to trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()

" open explorer
"nnoremap <silent> <C-e> :CocCommand explorer --toggle<CR>

" marketplace for installing extensions
map <localleader>cm :CocList marketplace<CR>

"nnoremap <silent> <localleader>ef :CocCommand explorer --preset flutter<CR>
"nnoremap <silent> <localleader>ec :CocCommand explorer --preset c<CR>
"nnoremap <silent> <localleader>ep :CocCommand explorer --preset python<CR>
"nnoremap <silent> <localleader>ev :CocCommand explorer --preset vim<CR>
"nnoremap <silent> <localleader>es :CocCommand explorer --preset school<CR>

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <tab> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <tab> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" -----------------
" Special file 
" -----------------
nnoremap <localleader>lc :CocCommand clangd.switchSourceHeader<CR>

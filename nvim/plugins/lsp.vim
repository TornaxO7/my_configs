" -------------
" Settings 
" -------------
let g:LanguageClient_serverCommands = {
    \ 'c' : [
    \       'clangd',
    \       '--cross-file-rename',
    \       '--header-insertion=iwyu',
    \       '--header-insertion-decorators',
    \       '--suggest-missing-includes'
    \     ],
    \ 'sh': ['bash-language-server', 'start'],
    \ 'python' : ['pyls'],
    \ 'java': ['jdtls']
    \ }

let g:LanguageClient_hasSnippetSupport=1
let g:LanguageClient_preferredMarkupKind=['markdown', 'plaintext']

augroup LSP autocmd!
    autocmd CursorHold * call LanguageClient#textDocument_documentHighlight()
augroup END

let g:LanguageClient_autoStart=1

" -------------
" Mappings 
" -------------
nmap <silent> <localleader>d <Plug>(lcn-definition)
nmap <silent> <localleader>td <Plug>(lcn-type-definition)
nmap <silent> <C-h> <Plug>(lcn-hover)
nmap <silent> <localleader>ren <Plug>(lcn-rename)
nmap <silent> <localleader>ref <Plug>(lcn-references)
nmap <silent> <localleader>i <Plug>(lcn-implementation)
nmap <silent> <localleader>ss <Plug>(lcn-symbols)
nmap <silent> <localleader>e <Plug>(lcn-explain-error)
nmap <silent> <localleader>f <Plug(lcn-format)

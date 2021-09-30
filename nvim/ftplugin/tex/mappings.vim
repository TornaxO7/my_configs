" for long lines
nnoremap j gj
nnoremap k gk

" compile it
nmap <buffer> <localleader>ln <Plug>(vimtex-compile-ss)
nnoremap <buffer> <localleader>m vae:VimtexCompileSelected<CR>
nnoremap <buffer> <localleader>ld :VimtexDocPackage

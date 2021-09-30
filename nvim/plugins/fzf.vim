" -------------
" Settings 
" -------------
" fzf layout
" down/up/left/right
let g:fzf_layout={ 'window': { 'width': 0.9, 'height': 0.75 } }
let g:fzf_preview_window=['right:50%', 'ctrl-/']

function MyRg()
    let l:search = input('Search after: ', expand('<cword>'))
    if l:search == ''
        call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case ""', 1, fzf#vim#with_preview(), 0)
    else
        call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case ' . l:search, 1, fzf#vim#with_preview(), 0)
    endif
endfunction

" -------------
" Mappings 
" -------------
noremap <C-f>f <Cmd>Files<CR>
noremap <C-f>g <Cmd>Rg<CR>
noremap <C-f>G <Cmd>call MyRg()<CR>
noremap <C-f>c <Cmd>Commands<CR>
noremap <C-f>k <Cmd>Maps<CR>
noremap <C-f>h <Cmd>Helptags<CR>
noremap <C-f>b <Cmd>Buffers<CR>
nnoremap <C-f>r <Cmd>lua vim.lsp.buf.references()<CR>
nnoremap <C-f>s <Cmd>lua vim.lsp.buf.document_symbol()<CR>

"lua require("lsp_fzf")

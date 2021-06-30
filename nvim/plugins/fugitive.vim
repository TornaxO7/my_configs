" -------------
" Mappings
" -------------
nnoremap <localleader>gm :Git merge
nnoremap <localleader>gP :Git pull<CR>
nnoremap <localleader>gp :Git push<CR>
nnoremap <localleader>gs :Git<CR>
nnoremap <localleader>gg :Git
nnoremap <localleader>gb :Gwrite

function! DiffMappingSetter()
    if &diff
        nnoremap <buffer> ]] :diffget //3<CR>
        nnoremap <buffer> [[ :diffget //2<CR>
    endif
endfunction

augroup MyDiffMapps
    autocmd!
    autocmd BufEnter * call DiffMappingSetter()
augroup END

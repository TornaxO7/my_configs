" --------------------
" My autocommands 
" --------------------
augroup MyStuff
    autocmd!
    autocmd FileType * setlocal textwidth=80
    autocmd FileType vim,term setlocal textwidth=0
    autocmd FileType help nnoremap q :q<CR>
    autocmd FileType zsh set nofen
    autocmd FileType nasm set filetype=asm

    " set nasm filetpye
    autocmd BufRead,BufNewFile *asm set ft=nasm

    " enable spell checking
    autocmd FileType markdown setlocal spell

    " close quickfix
    autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif

    if &readonly
        autocmd BufEnter <buffer> nnoremap q :q<CR>
    endif
augroup END

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

    " close quickfix and lsptrouble
    autocmd WinEnter * call s:close()

    " set the keybindings for Cargo files
    autocmd BufWinEnter Cargo.toml call s:adjust_cargo()
augroup END

function s:close()
    if winnr('$') == 1
        if &buftype == 'quickfix' || &ft == 'LspTrouble' || &ft == 'vista' || &ft == ''
            q
        endif
    endif
endfunction

function s:adjust_cargo()
    " if we are in a Cargo file, make it possible to run the
    " default rust stuff in Cargo.toml
    if expand("%:t") == 'Cargo.toml'
        nnoremap <buffer> <localleader>lt :AsyncRun -mode=term -rows=15 -pos=bottom -strip -save=2 cargo
        nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -pos=tab -save=2 cargo
        nnoremap <buffer> <localleader>lb :AsyncRun -mode=term -pos=tab -save=2 cargo build
        nnoremap <buffer> <localleader>lc :AsyncRun -mode=term -pos=tab -save=2 cargo check
    endif
endfunction

" --------------------
" My autocommands 
" --------------------
augroup MyStuff
    autocmd!
    autocmd FileType * setlocal textwidth=80
    autocmd FileType vim,term setlocal textwidth=0
    " autocmd FileType zsh set nofen
    " autocmd FileType nasm set filetype=asm

    " set nasm filetpye
    autocmd BufRead,BufNewFile *asm set ft=nasm

    " Update the cwd of the current stuff
    autocmd BufEnter * silent! lcd %:p:h

    " change some settings, when we are editing rust
    autocmd FileType rust setlocal textwidth=100

    " close quickfix and lsptrouble
    autocmd WinEnter * call s:close()

    " set the keybindings for Cargo files
    autocmd BufWinEnter Cargo.toml call s:adjust_cargo()

    autocmd BufEnter * call s:isCheck()

    autocmd TermOpen * setlocal list
    autocmd TermOpen,TermEnter * startinsert
augroup END

function s:isCheck()
    if expand("%:p") =~ 'dev/furniture'
        setlocal textwidth=120
    endif
endfunction

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

augroup MyStuff
    autocmd!
    autocmd FileType * setlocal textwidth=80
    autocmd FileType vim,term setlocal textwidth=0
    autocmd BufRead,BufNewFile *asm set ft=nasm
    autocmd BufEnter * silent! lcd %:p:h
    autocmd FileType rust setlocal textwidth=100
    autocmd WinEnter * call s:close()
    autocmd TermOpen * setlocal list
    autocmd TermOpen,TermEnter * startinsert
augroup END

augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end

function s:close()
    if winnr('$') == 1
        if &buftype == 'quickfix' || &ft == 'LspTrouble' || &ft == 'vista' || &ft == ''
            norm <cmd>Bufferclose<cr>
        endif
    endif
endfunction

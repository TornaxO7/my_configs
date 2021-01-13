" autoreload of my vimrc if something changes
autocmd BufWritePost .vimrc,_vimrc source $MYVIMRC

" set nasm filetpye
autocmd BufRead,BufNewFile *asm set ft=nasm

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')
"autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" autoclose quickfix
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
aug END

" for latex
autocmd FileType tex let b:coc_pairs = [["$", "$"]]

" close automatically the quickfix window if it's last
au BufEnter * call s:close_quickfix()
function! s:close_quickfix()

  " if the window is quickfix go on
  if &buftype=="quickfix"

    " if this window is last on screen quit without warning
    if winbufnr(2) == -1
      quit!
    endif

  endif
endfunction

" for displaying the vertical colomn
augroup TextWidth
  autocmd!
  autocmd FileType * setlocal textwidth=80
  autocmd FileType tex,vim,term setlocal textwidth=0
augroup END

" disable folding for some files
autocmd FileType zsh set nofen

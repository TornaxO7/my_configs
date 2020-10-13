" autoreload of my vimrc if something changes
autocmd BufWritePost .vimrc,_vimrc source $MYVIMRC

" set nasm filetpye
autocmd BufRead,BufNewFile *asm set ft=nasm

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" autoclose quickfix
aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
aug END

" for latex
autocmd FileType tex let b:coc_pairs = [["$", "$"]]

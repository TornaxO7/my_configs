" ==============
" Functions 
" ==============
" ----------------------------------------------
" Close viewers when vimtex buffers are closed 
" ----------------------------------------------
function! CloseViewers()
  " Close viewers on quit
  if executable('xdotool') && exists('b:vimtex')
      \ && exists('b:vimtex.viewer') && b:vimtex.viewer.xwin_id > 0
    call system('xdotool windowclose '. b:vimtex.viewer.xwin_id)
  endif
endfunction

" -------------------
" Enable synctex 
" -------------------
function! Synctex()
    execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " " . g:syncpdf
    redraw!
endfunction

" ===========================
" Enabling the functions 
" ===========================
" start a clientserver to connect pdf-file with vim
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

augroup vimtex_event_2
  au!
  au User VimtexEventQuit call CloseViewers()
augroup END

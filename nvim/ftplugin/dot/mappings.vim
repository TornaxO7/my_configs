nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -rows=15 -pos=bottom -strip -cwd="$(VIM_FILEDIR)" -save=2 dot -Tpdf "$(VIM_FILENAME)" -o output.pdf
nnoremap <buffer> <localleader>ln :AsyncRun -mode=term -rows=15 -pos=bottom -strip -cwd="$(VIM_FILEDIR)" -save=2 dot -Tpdf "$(VIM_FILENAME)" -o output.pdf && zathura output.pdf
nnoremap <buffer> <localleader>ld :!zathura /windows/Dokumente/rest/Tipps/dotguide.pdf & disown

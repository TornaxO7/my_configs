nnoremap <buffer> <localleader>lr :AsyncRun -mode=term -rows=15 -pos=bottom -save=2 dot -Tpdf % -o output.pdf
nnoremap <buffer> <localleader>ln :!dot -Tpdf % -o output.pdf && zathura output.pdf & disown
nnoremap <buffer> <localleader>ld :!zathura /windows/Dokumente/rest/Tipps/dotguide.pdf & disown

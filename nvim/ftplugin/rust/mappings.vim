nnoremap <buffer> <localleader>lt :AsyncRun -mode=term -rows=15 -pos=tab -strip -save=2 cargo
nnoremap <buffer> <localleader>r :AsyncRun -mode=term -pos=right -save=2 cargo
nnoremap <buffer> <localleader>b :AsyncRun -mode=term -pos=right -save=2 cargo build
nnoremap <buffer> <localleader>c :AsyncRun -mode=term -pos=right -save=2 cargo check

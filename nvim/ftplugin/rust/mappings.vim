nnoremap <buffer> <localleader>lt :AsyncRun -mode=term -rows=15 -pos=tab -strip -save=2 cargo
nnoremap <buffer> <localleader>r :AsyncRun -mode=term -pos=right -save=2 cargo
nnoremap <buffer> <localleader>b :AsyncRun -mode=term -pos=right -save=2 cargo build
nnoremap <buffer> <localleader>c :AsyncRun -mode=term -pos=right -save=2 cargo check
nnoremap <buffer> <localleader>ld :call GetProjectName()

function GetProjectName()
    let l:my_pwd = split(FindRootDirectory(), '/')
    let l:root_path = tolower(l:my_pwd[-1])
    echo 'target/debug/'.l:root_path
    call asyncrun#run("", {'mode': 'term', 'pos': 'tab', 'save': 2}, 'cargo build && rust-gdb target/debug/'.l:root_path)
endfunction

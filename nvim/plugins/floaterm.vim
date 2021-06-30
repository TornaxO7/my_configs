" -------------
" Settings 
" -------------
let g:floaterm_title = "Terminal($1/$2)"
let g:floaterm_autoclose=0
let g:floaterm_autohide=0

" -------------
" Mappings 
" -------------
tnoremap <silent> <Esc> <C-\><C-n>
tnoremap <silent> <C-q> <C-\><C-n>:FloatermToggle<CR>

noremap <silent> tj :FloatermPrev<CR>
noremap <silent> tt :FloatermToggle<CR>
noremap <silent> tn :FloatermNew<CR>
noremap <silent> tk :FloatermNext<CR>
noremap <silent> tp :call MyPythonTerm()<CR>
noremap <silent> <localleader>v :FloatermNew --width=0.8 --height=0.8 --title=Vifm vifm<CR>
noremap <silent> <localleader>kp :FloatermNew --width=0.8 --height=0.8 --title=Vifm vifm -c tree<CR>

let g:my_python_term = 0

function MyPythonTerm()
    if !g:my_python_term
        :FloatermNew --name=py_term python
        let g:my_python_term = 1
    else
        :FloatermToggle py_term
    endif
endfunction

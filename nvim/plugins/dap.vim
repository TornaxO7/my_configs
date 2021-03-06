augroup NvimDap
    autocmd!
    au FileType dap-repl lua require('dap.ext.autocompl').attach()
augroup END

let g:my_dap_repl_is_open = v:false

function OpenRepl()
    " open repl if it isn't opened yet
    if !g:my_dap_repl_is_open
        lua require('dap').repl.open()
        let g:my_dap_repl_is_open = v:true
    endif

    lua require('dap').continue()
endfunction

nnoremap <F5> :call OpenRepl()<CR>
nnoremap <F6> :lua require('dap').step_over()<CR>
nnoremap <F7> :lua require('dap').step_into()<CR>
nnoremap <F8> :lua require('dap').step_out()<CR>
nnoremap <F9><F9> :lua require('dap').toggle_breakpoint()<CR>
nnoremap <F9><F10> :lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
nnoremap <F9><F7> :lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
"nnoremap <silent> <leader>dl :lua require'dap'.run_last()<CR>

lua require("dap_conf")

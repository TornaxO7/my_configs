nnoremap <localleader>kd :LspTroubleToggle<CR>
" nnoremap <localleader>kr :LspTroubleToggle lsp_references<CR>
nnoremap <localleader>kq :LspTroubleToggle quickfix<CR>
nnoremap <localleader>kl :LspTroubleToggle loclist<CR>

lua require("lsp_trouble")

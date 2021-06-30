" Find files using Telescope command-line sugar.
nnoremap <C-f>f <cmd>Telescope find_files<cr>
nnoremap <C-f>b <cmd>Telescope file_browser<cr>
nnoremap <C-f>m <cmd>Telescope marks<cr>
nnoremap <C-f>g <cmd>Telescope live_grep<cr>
nnoremap <C-f>v <cmd>Telescope vim_options<cr>
nnoremap <C-f>c <cmd>Telescope commands<cr>
nnoremap <C-f>k <cmd>Telescope keymaps<cr>
nnoremap <C-f>l <cmd>Telescope symbols<cr>
nnoremap <C-f>h <cmd>Telescope help_tags<cr>

" for lsp
nnoremap <C-f>s <cmd>Telescope lsp_document_symbols<cr>
nnoremap <C-f>r <cmd>Telescope lsp_references<cr>

lua require("telescope_settings")

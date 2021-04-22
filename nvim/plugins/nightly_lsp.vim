" ---------------------
" Helper functions
" -------------------- 
function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
  else
        lua vim.lsp.buf.hover()
  endif
endfunction

" ============
" Vim-LSP 
" ============
" -----------------
" Autocommands 
" -----------------
augroup lsp_document_highlight
    autocmd!
    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    "autocmd CursorHold <buffer> lua vim.lsp.buf.signature_help()
    autocmd CursorHold,CursorHoldI <buffer> lua require'nvim-lightbulb'.update_lightbulb()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
augroup END

" ------------
" Looking 
" ------------
hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow

sign define LspDiagnosticsSignError text= texthl=LspDiagnosticsSignError linehl= numhl=
sign define LspDiagnosticsSignWarning text= texthl=LspDiagnosticsSignWarning linehl= numhl=
sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsSignInformation linehl= numhl=
sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsSignHint linehl= numhl=

" -------------
" Mappings 
" ------------
nnoremap <localleader>a <Cmd>lua vim.lsp.buf.code_action()<CR>
"nnoremap <localleader>d <Cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <localleader>d <Cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <localleader>i <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <localleader>ks <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <localleader>ka <cmd>lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap <localleader>kr <cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap <localleader>kw <cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
"nnoremap <localleader>ks <cmd>lua vim.lsp.buf.document_symbol()<CR>
"nnoremap <localleader>td <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <localleader>r <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <localleader>ref <cmd>lua vim.lsp.buf.references()<CR>
"nnoremap <localleader>ö <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <localleader>p <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <localleader>n <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <localleader>kD <cmd>lua vim.lsp.diagnostic.set_loclist()<CR>
nnoremap <localleader>kd <cmd>lua vim.lsp.diagnostic.get()<CR>
"nnoremap <localleader>f <cmd>lua vim.lsp.buf.formatting()<CR>

" saga stuff
"nnoremap <silent><localleader>a <cmd>lua require('lspsaga.codeaction').code_action()<CR>
"vnoremap <silent><localleader>a :<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>
"nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>
"nnoremap <silent><localleader>ks <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>
"nnoremap <silent><localleader>r <cmd>lua require('lspsaga.rename').rename()<CR>
"nnoremap <silent>gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>
"nnoremap <silent><localleader>kd <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>
"nnoremap <silent><localleader>p <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>
"nnoremap <silent><localleader>n <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>

lua require("lsp")
lua require("lightbulb")

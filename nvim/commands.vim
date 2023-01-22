command! Cp let @+=expand('%:p')
command! FilePath :echo expand("%:p")
command! CmpStop lua require('cmp').setup.buffer { enabled = false }
command! CmpStart lua require('cmp').setup.buffer { enabled = true }

command! DapStop lua require("dap").terminate()
command! NotificantionDismiss lua require("notify").dismiss()
"command! LspRustTools lua require('rust-tools').setup({}); require("lsp_settings.keybindings")(0)
command! Message tabnew <bar> put =execute('messages')

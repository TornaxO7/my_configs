vim.api.nvim_create_user_command("LspReloadKeybinding", ':lua require("lsp_settings.keybindings")', {})
vim.api.nvim_create_user_command("LspLinesToggle", ':lua require("lsp_lines").toggle()', {})

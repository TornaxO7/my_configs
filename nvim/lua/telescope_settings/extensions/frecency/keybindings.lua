local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "mm", "<Cmd>lua require('telescope').extensions.frecency.frecency()<CR>", opts)

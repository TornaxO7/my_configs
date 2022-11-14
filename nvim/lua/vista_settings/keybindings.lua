local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "T", "<cmd>Vista!!<cr>", opts)

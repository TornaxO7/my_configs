local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<localleader>lf", "<cmd>Neoformat<cr>", opts)

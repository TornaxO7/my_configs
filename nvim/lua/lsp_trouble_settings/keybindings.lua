local opts = {noremap = true, silent = true}

vim.api.nvim_set_keymap("n", "<localleader>kd", "<cmd>TroubleToggle<cr>", opts)

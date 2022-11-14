local opts = {noremap = true, silent = true}

local function telescope_wrapper(command)
    local git_program = io.popen("git rev-parse --show-toplevel", "r")

    if git_program ~= nil then
        print("hi")
    end

    local root_dir = git_program:read("a")
    git_program:close()
    vim.api.nvim_exec(command .. " cwd=" .. vim.api.fnameescape(root_dir))
end

vim.api.nvim_set_keymap("n", "mf", "<cmd>telescope_wrapper('Telescope find_files')<cr>", opts)
vim.api.nvim_set_keymap("n", "mg", "<cmd>telescope_wrapper('Telescope live_grep')<cr>", opts)
vim.api.nvim_set_keymap("n", "ml", "<cmd>Telescope symbols<cr>", opts)
vim.api.nvim_set_keymap("n", "mh", "<cmd>Telescope help_tags<cr>", opts)
vim.api.nvim_set_keymap("n", "mc", "<cmd>Telescope commands<cr>", opts)

vim.api.nvim_set_keymap("n", "ms",
                        "<cmd>Telescope lsp_documend_symbols<cr>", opts)

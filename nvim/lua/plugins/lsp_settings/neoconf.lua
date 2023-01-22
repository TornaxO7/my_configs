local global_settings = require("global_settings")

local key = require("which-key")

require("neoconf").setup({
    local_settings = ".nvim/neoconf.json",
})

key.register({
    c = {
        name = "+ Neoconf",
        n = {function() vim.api.nvim_command("Neoconf local") end, "local"},
        r = {function() vim.api.nvim_command("Neoconf global") end, "global"},
        s = {function() vim.api.nvim_command("Neoconf lsp") end, "lsp"},
        g = {function() vim.api.nvim_command("Neoconf show") end, "show"},
    }
}, {prefix = "<localleader>"})

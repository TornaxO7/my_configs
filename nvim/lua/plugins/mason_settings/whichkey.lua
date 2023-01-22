local key = require("which-key")

key.register({
    M = {function() vim.api.nvim_command(':Mason') end, "Mason"},
}, {prefix = "<localleader>"})

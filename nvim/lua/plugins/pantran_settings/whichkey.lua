local pantran = require("pantran")

local opts = {noremap = true, silent = true, expr = true}
vim.keymap.set("n", "mt", pantran.motion_translate, opts)
vim.keymap.set("x", "mt", pantran.motion_translate, opts)

local telescope = require("telescope")
local key = require("which-key")

telescope.load_extension("dap")

key.register({
    name = "+DAP",
    c = {telescope.extensions.dap.commands, "commands"},
    C = {telescope.extensions.dap.configurations, "configurations"},
    l = {telescope.extensions.dap.list_breakpoints, "breakpoints"},
    v = {telescope.extensions.dap.variables, "variables"},
    f = {telescope.extensions.dap.frames, "frames"},
}, {prefix = "md"})

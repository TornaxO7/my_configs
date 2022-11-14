local lualine = require("lualine")

lualine.setup({
    options = {
        -- theme = "solarized_light",
        -- theme = "solarized_dark",
        theme = "auto",
        disabled_filetypes = {'TelescopePrompt'},
        globalstatus = true,
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"branch", "diagnostic"},
        lualine_c = { {"filename", path = 1}},
        lualine_x = {"fileformat", "encoding", "require('dap').status()"},
        lualine_y = {"require('lsp-status').status()", "filetype"},
        lualine_z = {"progress", "location"}
    },
    extensions = {
        'chadtree'
    }
})

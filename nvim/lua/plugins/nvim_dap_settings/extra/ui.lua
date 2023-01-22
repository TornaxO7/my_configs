local dap_ui = require('dapui')

dap_ui.setup({
    icons = {expanded = "⯆", collapsed = "⯈", circular = "↺"},
    mappings = {expand = "<CR>", open = "o", remove = "d"},
    layouts = {
        {
            elements = {
                -- You can change the order of elements in the sidebar
                "scopes",
                "watches",
                "stacks"
            },
            size = 40,
            position = "left" -- Can be "left" or "right"
        },
        {
            elements = {"repl"},
            size = 10,
            position = "bottom" -- Can be "bottom" or "top"
        }
    },
    floating = {
        max_height = nil, -- These can be integers or a float between 0 and 1.
        max_width = nil -- Floats will be treated as percentage of your screen.
    }
})

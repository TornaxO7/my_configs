local dap = require('dap')
local dap_ui = require('dapui')

dap_ui.setup(
{
        icons = {
            expanded = "⯆",
            collapsed = "⯈",
            circular = "↺"
        },
        mappings = {
            expand = "<CR>",
            open = "o",
            remove = "d"
        },
        sidebar = {
            elements = {
                -- You can change the order of elements in the sidebar
                "scopes",
                "stacks",
                "watches"
            },
            width = 40,
            position = "left" -- Can be "left" or "right"
        },
        tray = {
            elements = {
                "repl"
            },
            height = 10,
            position = "bottom" -- Can be "bottom" or "top"
        },
        floating = {
            max_height = nil, -- These can be integers or a float between 0 and 1.
            max_width = nil   -- Floats will be treated as percentage of your screen.
        }
})

vim.g.dap_virtual_text = true

-- request variable values for all frames (experimental)
--vim.g.dap_virtual_text = 'all frames'

dap.adapters.python = {
type = 'executable';
command = "/usr/bin/python";
args = { '-m', 'debugpy.adapter'};
}

dap.configurations.python = {
{
type = 'python';
request = "launch";
name = "Launch file";
program = "${file}";
pythonPath = function()
return "/usr/bin/python"
end;
};
}

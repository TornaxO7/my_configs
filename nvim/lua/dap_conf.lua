local dap = require('dap')
local dap_ui = require('dapui')
-- dap.set_log_level('TRACE')
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

-- DAP CONFIG --
dap.adapters.python_local = {
    type = 'executable';
    command = 'python3';
    args = {'-m', 'debugpy.adapter'};
}

dap.adapters.python_remote = {
    type = 'server';
    host = '127.0.0.1';
    port = 5678;
}

dap.configurations.python = {
    {
        name = 'Launch file';
        type = 'python_local';
        request = 'launch';
        program = '${file}';
    },
}

dap.adapters.php_remote = {
    type = 'server';
    host = '127.0.0.1';
    port = 5678;
}

dap.configurations.php = {
    {
        type = 'php_remote';
        request = 'launch';
        name = 'Remote file';
        port = 5678;
    }
}

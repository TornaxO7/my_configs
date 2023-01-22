local dap = require("dap")

dap.adapters = {
    python_local =  {
        type = 'executable',
        command = "debugpy-adapter",
        args = {},
    },
    lldb = {
        type = 'executable',
        command = "codelldb",
        name = 'lldb',
    },
    python_remote = {
        type = 'server',
        host = '127.0.0.1',
        port = 5678,
    },
    php_remote = {
        type = 'server',
        host = '127.0.0.1',
        port = 5678,
    },
}

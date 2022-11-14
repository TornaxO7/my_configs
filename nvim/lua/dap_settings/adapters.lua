local dap = require("dap")

dap.adapters = {
    python_local =  {
        type = 'executable',
        command = 'python3',
        args = {'-m', 'debugpy.adapter'},
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
    lldb = {
        type = 'executable',
        command = 'lldb-vscode',
        name = 'lldb',
    },
}

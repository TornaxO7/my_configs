local dap = require("dap")

dap.configurations = {
	python = {
		{
			name = "Launch file",
			type = "python_local",
			request = "launch",
			program = "${file}",
		},
	},
	php = {
		{
			name = "Remote file",
			type = "php_remote",
			request = "launch",
			port = 5678,
		},
	},
	c = {
		{
			name = "Launch file",
			type = "lldb_local",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = false,
			args = {},
			runInTerminal = false,
		},
	},
    rust = {
        {
            name = "Rust debugger",
            type = "rt_lldb",
            request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
			end,
			cwd = "${workspaceFolder}",
			stopOnEntry = false,
			args = {},
			runInTerminal = false,
        }
    },
}

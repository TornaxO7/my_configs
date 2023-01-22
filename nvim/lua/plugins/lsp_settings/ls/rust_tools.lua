local rt = require("rust-tools")

local function loader(on_attach, capabilities)
	rt.setup({
        dap = {
            adapter = {
                name = "rt_lldb",
                type = "executable",
                command = "codelldb",
            },
        },
		server = {
			on_attach = on_attach,
			capabilities = capabilities,
            settings = {
                ["rust-analyzer"] = {
                    inlayHints = {
                        locationLinks = false,
                    }
                }
            },
        },
	})
end

return loader

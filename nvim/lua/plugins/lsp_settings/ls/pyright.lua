local nvim_lsp = require('lspconfig')

local function loader(on_attach, capabilities)
    nvim_lsp.pyright.setup({
        on_attach = on_attach,
        autostart = true,
        settings = {
            python = {
                pythonPath = "python3",
                analysis = {logLevel = "Trace"}
            }
        },
        capabilities = capabilities
    })
end

return loader

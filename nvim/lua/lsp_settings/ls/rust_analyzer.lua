local nvim_lsp = require('lspconfig')

local function loader(on_attach, capabilities)
    nvim_lsp.rust_analyzer.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
            ["rust-analyzer"] = {
                cargo = {
                    -- features = {"all"},
                }
            }
        }
    })
end


return loader

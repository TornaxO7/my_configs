local nvim_lsp = require('lspconfig')

local function loader(on_attach, capabilities)
    nvim_lsp.jsonls.setup({
        on_attach = on_attach,
    
        commands = {
            Format = {
                function()
                    vim.lsp.buf.range_function({}, {0, 0}, {vim.fn.line("$"), 0})
                end
            }
        },
        capabilities = capabilities,
        autostart = false
    })
end

return loader

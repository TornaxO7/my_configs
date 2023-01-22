local nvim_lsp = require('lspconfig')

local function loader(on_attach, capabilities)
    nvim_lsp.jsonls.setup({
        -- cmd = {vim.fn.expand("~/Apps/nvim_mason_dir/bin/vscode-json-language-server"), "--stdio"},
        on_attach = on_attach,
        commands = {
            Format = {
                function()
                    vim.lsp.buf.range_function({}, {0, 0}, {vim.fn.line("$"), 0})
                end
            }
        },
        capabilities = capabilities,
    })
end

return loader

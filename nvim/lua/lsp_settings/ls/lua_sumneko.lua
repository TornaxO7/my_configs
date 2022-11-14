local nvim_lsp = require('lspconfig')

local function loader(on_attach, capabilities)
    nvim_lsp.sumneko_lua.setup({
        on_attach = on_attach,
        cmd = {'lua-language-server'},
        settings = {
            Lua = {
                runtime = {
                    -- Tell the language server which version of Lua you're using
                    -- (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT',
                    -- Setup your lua path
                    path = vim.split(package.path, ';')
                },
                diagnostics = {
                    -- Get the language server to recognize the `vim` global
                    globals = {'vim'}
                },
                workspace = {
                    -- Make the server aware of Neovim runtime files
                    library = vim.api.nvim_get_runtime_file("", true),
                }
            }
        },
        capabilities = capabilities,
        autostart = true
    })
end

return loader

local nvim_lsp = require('lspconfig')

local function loader(on_attach, capabilities)
    nvim_lsp.clangd.setup({
        on_attach = on_attach,
    
        cmd = {
            'clangd', '--cross-file-rename', '--header-insertion=iwyu',
            '--header-insertion-decorators', '--suggest-missing-includes'
        },
        filetypes = {"c", "cpp", "objc", "objcpp"},
        autostart = true,
        capabilities = capabilities
    })
end

return loader

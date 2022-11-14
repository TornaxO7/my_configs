local nvim_lsp = require('lspconfig')

local function loader(on_attach, capabilities)
    nvim_lsp.vimls.setup({on_attach = on_attach, capabilities = capabilities})
end

return loader

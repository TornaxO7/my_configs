local function loader(on_attach, capabilities)
    local config = {
        on_attach = on_attach,
        capabilities = capabilities,
    }
    require('jdtls').start_or_attach(config)
end

return loader

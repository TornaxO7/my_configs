local rt = require("rust-tools")

local function loader(on_attach, capabilities)

    rt.setup({
        server = {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    })
end

return loader

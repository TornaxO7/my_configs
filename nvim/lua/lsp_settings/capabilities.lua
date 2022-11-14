local cmp_nvim_lsp = require('cmp_nvim_lsp')

local capabilities = vim.lsp.protocol.make_client_capabilities();
capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
return capabilities

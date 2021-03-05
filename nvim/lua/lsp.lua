-- -----------------------------
-- Neovim lsp general setup 
-- -----------------------------
local nvim_lsp = require('lspconfig')

-- --------------------------
-- Language server setup 
-- --------------------------
nvim_lsp.pyls.setup {
    settings = {
        pyls = { 
            plugins = {
                pylint = {
                    enabled = true
                }
            }
        }
    },
}

nvim_lsp.jsonls.setup {
    commands = {
        Format = {
            function()
                vim.lsp.buf.range_function(
                    {},
                    {0, 0},
                    { 
                        vim.fn.line("$"),
                        0
                    }
                )
            end
        }
    }
}

nvim_lsp.clangd.setup {
    cmd = {
        'clangd',
        '--cross-file-rename',
        '--header-insertion=iwyu',
        '--header-insertion-decorators',
        '--suggest-missing-includes'
    },
    filetypes = { "c", "cpp", "objc", "objcpp" },
}

nvim_lsp.texlab.setup {}

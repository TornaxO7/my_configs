-- -----------------------------
-- Neovim lsp general setup 
-- -----------------------------
local nvim_lsp = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local border_chars = {
    TOP_LEFT = '┌',
    TOP_RIGHT = '┐',
    MID_HORIZONTAL = '─',
    MID_VERTICAL = '│',
    BOTTOM_LEFT = '└',
    BOTTOM_RIGHT = '┘'
}

vim.g.lsp_utils_location_opts = {
    height = 40,
    mode = 'editor',
    preview = {
        title = 'Location Preview',
        border = true,
        broder_chars = border_chars
    },
    keymaps = {n = {['<C-n>'] = 'j', ['<C-p>'] = 'k'}},
    list = {
        border = true,
        numbering = true,
        title = 'References',
        border_chars = border_chars,
        highlight = 'Normal',
        selection_highlight = 'Visual',
        matching_highlight = 'Identifier'
    }
}

local function on_attach(client, bufnr)
    -- Find the clients capabilities
    local cap = client.resolved_capabilities

    if cap.document_highlight then
        vim.cmd('augroup LspHighlight')
        vim.cmd('autocmd!')
        vim.cmd(
            'autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()')
        vim.cmd(
            'autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
        vim.cmd('augroup END')
    end
end

-- --------------------------
-- Language server setup 
-- --------------------------
nvim_lsp.pyright.setup {
    on_attach = on_attach,
    autostart = true}

nvim_lsp.sumneko_lua.setup {
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
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                }
            }
        }
    },
    capabilities = capabilities,
    autostart = true
}

nvim_lsp.jsonls.setup {
    on_attach = on_attach,

    commands = {
        Format = {
            function()
                vim.lsp.buf.range_function({}, {0, 0}, {vim.fn.line("$"), 0})
            end
        }
    },
    capabilities = capabilities,
    autostart = true
}

nvim_lsp.clangd.setup {
    on_attach = on_attach,

    cmd = {
        'clangd', '--cross-file-rename', '--header-insertion=iwyu',
        '--header-insertion-decorators', '--suggest-missing-includes'
    },
    filetypes = {"c", "cpp", "objc", "objcpp"},
    autostart = false,
    capabilities = capabilities
}

nvim_lsp.texlab.setup {
    on_attach = on_attach,

    -- commented, because otherwise mappings wouldn't work
    autostart = false
}

nvim_lsp.rust_analyzer.setup {
    on_attach = on_attach,
    autostart = false}

nvim_lsp.vimls.setup {
    on_attach = on_attach,
}

nvim_lsp.bashls.setup {
    on_attach = on_attach,
}

-- require("fzf_lsp").setup()
require("neodev").setup({})
require("lsp_lines").setup()

vim.diagnostic.config({virtual_text = false})

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
    local cap = client.server_capabilities

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
local ls_dir = "plugins/lsp_settings/ls"
local ls_files = {
    "bashls",
    "lua_sumneko",
    -- "rust_analyzer",
    "rust_tools",
    "tsserver",
    "clangd",
    "phpactor",
    "tailwindcss",
    "vimls",
    "json",
    "pyright",
    "texlab",
    "cssls",
    -- "jdtls",
}

local capabilities = require("plugins.lsp_settings.capabilities")
for _, file in pairs(ls_files) do
    require(ls_dir .. "/" .. file)(on_attach, capabilities)
end

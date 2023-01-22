local key = require("which-key")
local table_contains = require("helper.table_contains")

local function get_documentation()
    if table_contains({ "help", "vim" }, vim.bo.filetype) then
        vim.api.nvim_command("h " .. vim.fn.expand("<cword>"))
    else
        vim.lsp.buf.hover()
    end
end

vim.keymap.set("n", "K", get_documentation, { desc = "documentation" })

key.setup({
    l = {
        name = "+ LSP",
        a = { vim.lsp.buf.code_action, "code action" },
        D = { vim.lsp.buf.declaration, "goto declaration" },
        d = { vim.lsp.buf.definition, "goto definition" },
        i = { vim.lsp.buf.implementation, "implementation" },
        s = { vim.lsp.buf.signature_help, "signature help" },
        r = { vim.lsp.buf.rename, "rename" },
        p = { vim.diagnostic.goto_prev, "previous diagnostic" },
        n = { vim.diagnostic.goto_next, "next diagnostic" },
        f = { vim.lsp.buf.format, "format" },
    },
}, { prefix = "<localleader>" })

key.setup({
    r = { vim.lsp.buf.references, "references" },
}, { prefix = "m" })

local table_contains = require("helper.table_contains")

local function get_documentation()
    if table_contains({ "help", "vim" }, vim.bo.filetype) then
        vim.api.nvim_command("h " .. vim.fn.expand("<cword>"))
    else
        vim.lsp.buf.hover()
    end
end

vim.keymap.set("n", "<localleader>la", vim.lsp.buf.code_action, { desc = "code action" })
vim.keymap.set("n", "<localleader>lD", vim.lsp.buf.declaration, { desc = "goto declaration" })
vim.keymap.set("n", "<localleader>ld", vim.lsp.buf.definition, { desc = "goto definition" })
vim.keymap.set("n", "K", get_documentation, { desc = "documentation" })
vim.keymap.set("n", "<localleader>li", vim.lsp.buf.implementation, { desc = "implementation" })
vim.keymap.set("n", "<localleader>ls", vim.lsp.buf.signature_help, { desc = "signature help" })
vim.keymap.set("n", "<localleader>lr", vim.lsp.buf.rename, { desc = "rename" })
vim.keymap.set("n", "mr", vim.lsp.buf.references, { desc = "references" })
vim.keymap.set("n", "<localleader>lp", vim.diagnostic.goto_prev, { desc = "previous diagnostic" })
vim.keymap.set("n", "<localleader>ln", vim.diagnostic.goto_next, { desc = "next diagnostic" })
vim.keymap.set("n", "<localleader>lf", vim.lsp.buf.format, { desc = "format" })

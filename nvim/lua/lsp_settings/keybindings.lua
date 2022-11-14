local merge_tables = require("helper.merge_tables")
local table_contains = require("helper.table_contains")

local set_keybindings = function()
    local default_opts = {noremap=true, silent=true}

    -- some options
    local action_opts = merge_tables(default_opts, {
        callback = function() vim.lsp.buf.code_action() end
    })

    local declaration_opts = merge_tables(default_opts, {
        callback = function() vim.lsp.buf.declaration() end
    })

    local definition_opts = merge_tables(default_opts, {
        callback = function() vim.lsp.buf.definition() end
    })

    local documentation_opts = merge_tables(default_opts, {
        callback = function()
            if table_contains({"help", "vim"}, vim.bo.filetype) then
                vim.api.nvim_command("h " .. vim.fn.expand("<cword>"))
            else
                vim.lsp.buf.hover()
            end
        end
    })

    local implementation_opts = merge_tables(default_opts, {
        callback = function() vim.lsp.buf.implementation() end
    })

    local signature_help_opts = merge_tables(default_opts, {
        callback = function() vim.lsp.buf.signature_help() end
    })

    local rename_opts = merge_tables(default_opts, {
        callback = function() vim.lsp.buf.rename() end
    })

    local references_opts = merge_tables(default_opts, {
        callback = function() vim.lsp.buf.references() end
    })

    local goto_prev_opts = merge_tables(default_opts, {
        callback = function() vim.diagnostic.goto_prev() end
    })

    local goto_next_opts = merge_tables(default_opts, {
        callback = function() vim.diagnostic.goto_next() end
    })

    -- setting the keybindings
    vim.api.nvim_set_keymap("n", "<localleader>la", "", action_opts)
    vim.api.nvim_set_keymap("n", "<localleadel>lD", "", declaration_opts)
    vim.api.nvim_set_keymap("n", "<localleader>ld", "", definition_opts)
    vim.api.nvim_set_keymap("n", "K", "", documentation_opts)
    vim.api.nvim_set_keymap("n", "<locallleader>li", "", implementation_opts)
    vim.api.nvim_set_keymap("n", "<localleader>ls", "", signature_help_opts)
    vim.api.nvim_set_keymap("n", "<localleader>lr", "", rename_opts)
    vim.api.nvim_set_keymap("n", "mr", "", references_opts)
    vim.api.nvim_set_keymap("n", "<localleader>lp", "", goto_prev_opts)
    vim.api.nvim_set_keymap("n", "<localleader>ln", "", goto_next_opts)
end

return set_keybindings

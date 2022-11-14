-- =================
-- Requirements
-- =================
local telescope = require('telescope')
local actions = require('telescope.actions')
require('telescope.previewers')

vim.cmd("source ~/.config/nvim/lua/telescope_settings/keybindings.vim")
require("telescope_settings/whichkey")

-- ============
-- Settins
-- ============
telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<C-l>"] = actions.close,
                ["<C-u>"] = false,
                ["<C-d>"] = actions.close,
                ["<C-k>"] = actions.preview_scrolling_up,
                ["<C-j>"] = actions.preview_scrolling_down,
            }
        }
    }
}

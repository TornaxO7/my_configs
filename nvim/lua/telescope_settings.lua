-- =================
-- Requirements
-- =================
local telescope = require('telescope')
local actions = require('telescope.actions')
local previewers = require('telescope.previewers')

-- ============
-- Settins
-- ============
telescope.setup {
    defaults = {
        mappings = {
            i = {
                ["<C-l>"] = actions.close,
                ["<C-u>"] = false,
                ["<C-d>"] = false,
                ["<C-k>"] = actions.preview_scrolling_up,
                ["<C-j>"] = actions.preview_scrolling_down,
            }
        }
    }
}

local merge_tables = require("helper.merge_tables")
local open_vifm = require("fm_settings.vifm_window")

local fterm = require("FTerm")

local opts = {noremap = true, silent = true}

local vifm_settings = merge_tables(opts, {
    callback = function()
        open_vifm()
    end
})

vim.api.nvim_set_keymap("n", "<localleader>v", "", vifm_settings)

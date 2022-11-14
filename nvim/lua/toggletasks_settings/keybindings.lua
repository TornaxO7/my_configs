local merge_tables = require("helper.merge_tables")
local telescope = require("telescope")

local opts = {noremap = true, silent = true}

vim.keymap.set("n", "mne", telescope.extensions.toggletasks.spawn, merge_tables(opts, {
    desc = "toggletask: spawn"
}))

vim.keymap.set("n", "mni", telescope.extensions.toggletasks.edit, merge_tables(opts, {
    desc = "toggletask: edit"
}))

vim.keymap.set("n", "mnt", telescope.extensions.toggletasks.select, merge_tables(opts, {
    desc = "toggletask: select"
}))

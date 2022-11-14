local dap = require("dap")
local merge_tables = require("helper.merge_tables")
local callback_functions = require("dap_settings.keybindings.callback_functions")

local opts = {noremap = true, silent = true}

-- keybinding settings
local start_dap = merge_tables(opts, {
    callback = function()
        callback_functions.open_repl()
    end
})

local step_over_settings = merge_tables(opts, {
    callback = function() callback_functions.step_over() end
})

local step_into_settings = merge_tables(opts, {
    callback = function() callback_functions.step_into() end
})

local continue_settings = merge_tables(opts, {
    callback = function() callback_functions.continue() end
})

local toggle_breakpoint_settings = merge_tables(opts, {
    callback = function() callback_functions.toggle_breakpoint() end
})

local set_breakpoint_settings = merge_tables(opts, {
    callback = function() callback_functions.set_breakpoint() end
})

local toggle_ui_settings = merge_tables(opts, {
    callback = function() callback_functions.toggle_ui() end
})

local evaluate_symbol = merge_tables(opts, {
    callback = function() callback_functions.evaluate_symbol() end
})

vim.api.nvim_set_keymap("n", "<F5>", "", start_dap)
vim.api.nvim_set_keymap("n", "<F6>", "", continue_settings)
vim.api.nvim_set_keymap("n", "<F7>", "", step_into_settings)
vim.api.nvim_set_keymap("n", "<F8>", "", step_over_settings)
vim.api.nvim_set_keymap("n", "<F9><F9>", "", toggle_breakpoint_settings)
vim.api.nvim_set_keymap("n", "<F9><F10>", "", set_breakpoint_settings)
vim.api.nvim_set_keymap("n", "<F10>", "", toggle_ui_settings)
vim.api.nvim_set_keymap("n", "<F11>", "", evaluate_symbol)

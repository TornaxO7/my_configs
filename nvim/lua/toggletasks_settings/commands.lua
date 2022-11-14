vim.api.nvim_create_user_command("CreateToggleTaskFile", ':lua file = io.open(".toggletasks.json",  "w"); file:close()', {})

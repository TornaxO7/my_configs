local telescope = require("telescope")

vim.api.nvim_create_user_command("TelescopeNotification", telescope.extensions.notify.notify, {})

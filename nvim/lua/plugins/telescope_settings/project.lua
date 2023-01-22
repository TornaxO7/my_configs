local telescope = require("telescope")
telescope.load_extension("project")

vim.keymap.set("n", "mp", telescope.extensions.project.project, { desc = "projects" })

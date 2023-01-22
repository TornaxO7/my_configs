local key = require("which-key")
local telescope = require("telescope")

key.register({
	name = "toggletasks",
	e = { telescope.extensions.toggletasks.spawn, "spawn" },
	i = { telescope.extensions.toggletasks.edit, "edit" },
	t = { telescope.extensions.toggletasks.select, "select" },
}, { prefix = "mn" })

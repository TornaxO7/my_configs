return {
	"anuvyklack/hydra.nvim",
	lazy = false,
	init = function()
		local hydra = require("hydra")
		hydra({
			name = "<C-w>",
			mode = "n",
			body = "<C-w>",
			config = {
				color = "pink",
			},
			heads = {
				{ "<", "3<C-w><", { nowait = true } },
				{ ">", "3<C-w>>", { nowait = true } },
				{ "+", "3<C-w>+", { nowait = true } },
				{ "-", "3<C-w>-", { nowait = true } },
			},
		})
	end,
}

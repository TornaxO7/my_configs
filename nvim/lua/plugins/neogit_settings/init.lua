return {
	"TimUntersberger/neogit",
	dependencies = {
		"sindrets/diffview.nvim",
		"folke/which-key.nvim",
	},
	init = function()
		local neogit = require("neogit")

		neogit.setup({
			integrations = {
				diffview = true,
			},
		})

		require("plugins.neogit_settings.whichkey")
	end,
}

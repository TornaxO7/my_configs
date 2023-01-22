return {
	"lewis6991/gitsigns.nvim",
    lazy = false,
	tag = "release",
	init = function()
		require("gitsigns").setup({
			numhl = true,
			current_line_blame = true,
		})
	end,
}

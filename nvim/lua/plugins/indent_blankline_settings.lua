return {
	"lukas-reineke/indent-blankline.nvim",
	init = function()
        vim.opt.list = true

        -- vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]
        -- vim.cmd [[highlight IndentBlanklineContextChar guifg=#000FFF gui=NONE]]

        vim.cmd [[highlight IndentBlanklineSpaceCharBlankline guifg=Gray]]
        vim.cmd [[highlight IndentBlanklineSpaceChar guifg=Gray]]
        vim.cmd [[highlight IndentBlanklineContextStart gui=underline]]

        require("indent_blankline").setup {
            show_current_context_start = true,
            show_current_context = true,
            show_end_of_line = true
            -- char_highlight_list = {
            --     "IndentBlanklineIndent1",
            --     "IndentBlanklineIndent2",
            --     "IndentBlanklineIndent3",
            --     "IndentBlanklineIndent4",
            --     "IndentBlanklineIndent5",
            --     "IndentBlanklineIndent6",
            -- },
        }
    end,
}

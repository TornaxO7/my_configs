return {
    "ahmedkhalf/project.nvim",
    init = function()
        require("project_nvim").setup({
            patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".nvim" },
        })
    end,
}

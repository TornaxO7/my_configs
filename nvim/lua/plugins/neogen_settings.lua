return {
    "danymat/neogen",
    init = function()
        require("neogen").setup({ snippet_engine = "luasnip" })
    end,
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "L3MON4D3/LuaSnip",
    },
}

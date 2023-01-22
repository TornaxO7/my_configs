return {
    "simrat39/symbols-outline.nvim",
    init = function()
        require("symbols-outline").setup()

        vim.keymap.set("n", "T", "<cmd>:SymbolsOutline<cr>", {});
    end
}

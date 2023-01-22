return {
    "nvim-neotest/neotest",
    lazy = false,
    enabled = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim",

        "nvim-neotest/neotest-python",
        "rouge8/neotest-rust",
    },
    init = function()
        require("neotest-python")({
            dap = {justMyCode = false},
            runner = "python -m pytest",
        })

        require("neotest-rust")
    end,
}

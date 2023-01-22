return {
    "folke/which-key.nvim",
    init = function()
        local key = require("which-key")
        key.setup {
            show_help = false,
            show_keys = false,
        }

        key.register({
            L = {require("lazy").home, "Lazy"}
        }, {prefix = "<localleader>"})
    end,
}

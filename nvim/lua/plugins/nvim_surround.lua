return {
    "kylechui/nvim-surround",
    init = function()
        local surround = require("nvim-surround")

        surround.setup({
            pairs = {
                ["$"] = { add = { "$", "$" } },
            },
        })
    end,
}

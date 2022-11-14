local surround = require("nvim-surround")

surround.setup({
        pairs = {
            ["$"] = { add = { "$", "$" } },
        }
})

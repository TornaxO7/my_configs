local key = require("which-key")

key.register({
    l = {
        name = "+LSP",
        f = {"format"},
    }
}, {prefix = "<localleader>"})

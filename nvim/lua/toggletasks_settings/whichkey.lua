local key = require("which-key")

key.register({
    t = {
        name = "toggletasks",
        s = {"spawn"},
        e = {"edit"},
        c = {"select"},
    },
}, {prefix = "<localleader>"})

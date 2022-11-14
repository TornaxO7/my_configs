local key = require("which-key")

key.setup {}

key.register({
    ["w"] = {"Write"},
    s = {
        name = "+spelling",
        d = {"german"},
        e = {"english (us)"},
        g = {"english (gb)"},
    },
}, {prefix = "<localleader>"})

local key = require("which-key")

key.setup {}

key.register({
    v = {"vifm"},
    l = {
        name = "+LSP",
        a = {"action"},
        f = {"format"},
        n = {"next diagnostic"},
        p = {"previous diagnostic"},
        D = {"goto declaration"},
        d = {"goto definition"},
        i = {"implementation"},
        t = {"LSP Trouble"},
        s = {"signature help"},
        r = {"rename"},
    },
    ["w"] = {"Write"},
    s = {
        name = "+spelling",
        d = {"german"},
        e = {"english (us)"},
        g = {"english (gb)"},
    },
}, {prefix = "<localleader>"})

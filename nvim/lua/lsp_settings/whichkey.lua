local key = require("which-key")

key.register({
    l = {
        name = "+LSP",
        a = {"action"},
        n = {"next diagnostic"},
        p = {"previous diagnostic"},
        D = {"goto declaration"},
        d = {"goto definition"},
        i = {"implementation"},
        t = {"LSP Trouble"},
        s = {"signature help"},
        r = {"rename"},
    },
}, {prefix = "<localleader>"})

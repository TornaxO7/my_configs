local wk = require("which-key")

wk.register({
    ["f"] = {"files"},
    ["g"] = {"grep"},
    ["S"] = {"symbols"},
    ["h"] = {"help tags"},
    ["c"] = {"commands"},
    ["s"] = {"lsp documend symbols"},
    ["r"] = {"references"},
}, {prefix = "m"})

local key = require("which-key")

key.setup {}

key.register(
    {
        f = { "format" },
        a = { "action" },
        D = { "declaration" },
        d = { "definition" },
        i = { "implementation" },
        n = { "next diagnostic" },
        p = { "previous diagnostic" },
        r = { "rename" },
        v = { "vifm" },
        l = { "+language" },
        ["<Space>"] = { "Write" },
        s = {
            name = "+spelling",
            d = { "deutsch" },
            e = { "english (us)" },
            g = { "english (gb)" },
            c = { "LanguageToolCheck" },
        },
        t = {
            name = "+translate",
            r = { "replace" },
            t = { "translate" },
        },
        b = {
            name = "+browser",
            l = { "lspconfig" },
            p = { "pons" },
            v = { "vimawesome" }
        },
        g = {
            name = "+git",
            P = { "Pull" },
            b = { "write" },
            g = { ":Git" },
            h = { "Difference from left" },
            l = { "Difference from right" },
            m = { "Merge" },
            p = { "push" },
            s = { "status" },
        },
        o = {
            name = "+open file",
            ["1"] = { "text1.txt" },
            ["2"] = { "text2.txt" },
            ["3"] = { "text3.txt" },
            ["4"] = { "text4.txt" },
            a = { "all" }
        },
        k = {
            name = "+LSP",
            D = { "Diagnostic loclist" },
            a = { "Add to Workspaces" },
            d = { "LSP Trouble" },
            r = { "Remove Workspace" },
            s = { "signature help" },
            w = { "Get workspace folders" },
            p = { "Project structure" },
        },
    },
    {
        prefix = "<localleader>",
    }
)

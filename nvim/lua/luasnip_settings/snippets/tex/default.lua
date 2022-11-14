local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")

return {
    s("de", {
        t({
            "\\documentclass[a4paper, 12pt]{scrartcl}",
            "",
            "\\usepackage[ngerman]{babel}",
            "\\usepackage[utf8]{inputenc}",
            "\\usepackage[T1]{fontenc}",
            "\\usepackage{amsmath, amsthm, amssymb}",
            "\\usepackage{tocloft} % TOC settings",
            "",
            "% == Commands ==",
            "\\renewcommand{\\cftsecleader}{\\cftdotfill{\\cftdotsep}}",
            "",
            "% == Custom environments ==",
            "",
            "% == Settings ==",
            "\\newtheorem{theorem}{Theorem}",
            "",
            "% == Document ==",
            "\\title{",
        }), i(1, "Title"),
        t({"}", "\\author{"}), i(2, "Author"),
        t({"}", "\\date{\\today}"}),
        t({"", "", "\\begin{document}", ""}),
        c(3, {
            i(nil),
            t({"\\maketitle", ""}),
            t({"\\maketitle", "\\tableofcontents", ""}),
        }),
        i(0),
        t({"", "\\end{document}"})
    })
}

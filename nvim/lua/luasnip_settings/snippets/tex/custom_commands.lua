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
    s("cabs", t({
        "\\newcommand{\\abs}[1] {",
        "\t\\left\\vert#1\\right\\vert",
        "}"})
    ),
    s("abs", {
        t("\\abs{"), i(1), t("}")
    }),
}

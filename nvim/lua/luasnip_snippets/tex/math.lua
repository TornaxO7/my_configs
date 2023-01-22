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

local is_in_mathzone = function(line_to_cursor, matched_trigger, captures)
    return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
    s({
        trig = "frac",
        name = "fraction",
    }, {
        t("\\frac{"), i(1), t("}{"), i(2), t("}"), i(0)
    }),
    s({
        trig = "lim",
        name = "limes",
    }, {
        t("\\lim\\limits_{"), i(1, "n"), t(" \\to \\infty}")
    }),
    s({
        trig = "ub",
        name = "underbrace",
    }, {
        t("\\underbrace{"), i(1), t("}_{"), i(2), t("}"), i(0),
    }, { condition = is_in_mathzone}),
    s({
        trig = "ob",
        name = "overbrace",
    }, {
        t("\\overbrace{"), i(1), t("}_{"), i(2), t("}"), i(0),
    }, {condition = is_in_mathzone}),
    s({
        trig = "sum",
        name = "sum",
    }, {
        t("\\sum\\limits^{"), i(1), t("}_{"), i(2), t("}"),
    }, {condition = is_in_mathzone}),
    s({
        trig = "prod",
        name = "product",
    }, {
        t("\\prod\\limits^{"), i(1), t("}_{"), i(2), t("}"),
    }, {condition = is_in_mathzone}),
    s({
        trig = "inf",
        name = "infinity",
    }, {
        t("\\infty"),
    }, {condition = is_in_mathzone}),
    s({
        trig = "int",
        name = "integral",
    }, {
        t("\\int_{"), i(1), t("}^{"), i(2), t("} \\, dx"), i(0),
    }, {condition = is_in_mathzone}),
}

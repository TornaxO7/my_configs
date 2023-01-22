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
    s("tm", {
        t({
            "#[cfg(test)]",
            "mod tests {",
            "",
            "\t#[test]",
            "\tfn ",
        }),
        i(0)
    }),
    s("t", {
        t({"#[test]", "fn "})
    }),
    s("tp", {
        t({"#[test]", "#[should_panic]", "fn "})
    }),
}

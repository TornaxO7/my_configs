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

local env_setter = function(env_name)
    if env_name then
        return {
            t({"\\begin{" .. env_name .. "}", ""}),
            t("\t"), i(0),
            t({"", "\\end{" .. env_name .. "}", ""}),
        }
    else
        return {
            t("\\begin{"), i(1), t({"}", ""}),
            t("\t"), i(0),
            f(function(args)
                    return {"", "\\end{" .. args[1][1] .. "}"}
                end,
                {1}
            )
        }
    end
end

return {
    s("beg", env_setter(nil)),
    s("align", env_setter("align*")),
    s("item", env_setter("itemize")),
    s("theo", env_setter("theorem")),
    s("proof", env_setter("proof")),
    s("minted", env_setter("minted")),
    s("algo", env_setter("algorithm")),
    s("algoc", env_setter("algorithmic")),
    s("enum", env_setter("enumerate")),
    s("fig", env_setter("figure")),
}

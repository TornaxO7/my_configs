local concat_lists = require("helper.concat_lists")

local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")

local add_task = function(prefix)
    return {
        t({
            prefix .. '{',
            prefix .. '\t"name": "',
        }),
        i(1),
        t({
            '",',
            prefix .. '\t"cwd": "${lsp_root}',
        }),
        t({
            '",',
            prefix .. '\t"cmd": "',
        }),
        i(0),
        t({
            '"',
            prefix .. '}'
        })
    }
end

local default_prefix = {
    t({
        '{',
        '\t"tasks": [',
        '',
    })
}

local default_post = {
    t({
        '',
        '\t]',
        '}',
    }),
}

return {
    s("de", concat_lists(default_prefix, concat_lists(add_task("\t\t"), default_post))),
    s("t", add_task("")),
}

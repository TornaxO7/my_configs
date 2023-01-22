local ls = require("luasnip")
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

local function curr_filename(args, parent, user_args)
	return vim.fn.expand("%:h")
end

return {
	s("de", {
		t("public class "),
		f(curr_filename, {}, {}),
		t({ " {", "\tpublic static void main(String args[]) {", "\t\t" }),
		i(0),
		t({ "", "\t}", "}" }),
	}),
}

local tree_cb = require("nvim-tree.config").nvim_tree_callback

vim.g.nvim_tree_bindings = {
    ["_"] = tree_cb("cd"),
    ['c'] = tree_cb("close_node"),
    ['<C-s>'] = tree_cb("split"),
}

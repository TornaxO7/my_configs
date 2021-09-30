local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = "maintained",

    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {'latex'} -- list of language that will be disabled
    },

    indent = {enable = false},

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gs",
            node_incremental = "<C-k>",
            -- scope_incremental = "<C-j>",
            node_decremental = "<C-j>"
        }
    },

    tree_setter = {enable = true},

    query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = {"BufWrite", "CursorHold"}
    }
}

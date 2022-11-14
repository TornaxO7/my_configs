local treesitter = require('nvim-treesitter.configs')

require("nvim-treesitter.parsers").list.xml = {
	install_info = {
		url = "https://github.com/Trivernis/tree-sitter-xml",
		files = { "src/parser.c" },
		generate_requires_npm = true,
		branch = "main",
	},
	filetype = "xml",
}

treesitter.setup({
    ensure_installed = "all",

    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {'latex', "dap-repl", "help", "vim"} -- list of language that will be disabled
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

    query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = {"BufWrite", "CursorHold"}
    },

    autotag = {
        enable = true,
    }
})

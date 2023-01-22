return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
        {
            "LhKipp/nvim-nu",
            init = function()
                require("nu").setup({})
            end
        },
		{ "nvim-treesitter/playground", cmd = "TSPlaygroundToggle" },
		{
			"nvim-treesitter/nvim-treesitter-context",
			init = function()
				require("plugins.treesitter_settings.treesitter_context")
			end,
		},
		{
			"Wansmer/treesj",
			init = function()
				require("treesj").setup({ use_default_keymaps = true })
			end,
		},
	},
	build = function()
		vim.api.nvim_command(":TSUpdate")
	end,
	init = function()
		local treesitter = require("nvim-treesitter.configs")
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

		parser_config.xml = {
			install_info = {
				url = "https://github.com/Trivernis/tree-sitter-xml",
				files = { "src/parser.c" },
				generate_requires_npm = true,
				branch = "main",
			},
		}

        parser_config.d2 = {
            install_info = {
              url = 'https://github.com/pleshevskiy/tree-sitter-d2',
              revision = 'main',
              files = { 'src/parser.c', 'src/scanner.cc' },
            },
            filetype = 'd2',
        };

		treesitter.setup({
			ensure_installed = "all",

			highlight = {
				enable = true, -- false will disable the whole extension
				disable = { "latex", "dap-repl"},
			},

			indent = { enable = false },

			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gs",
					node_incremental = "<C-k>",
					-- scope_incremental = "<C-j>",
					node_decremental = "<C-j>",
				},
			},

			query_linter = {
				enable = true,
				use_virtual_text = true,
				lint_events = { "BufWrite", "CursorHold" },
			},

			autotag = {
				enable = true,
			},
		})
	end,
}

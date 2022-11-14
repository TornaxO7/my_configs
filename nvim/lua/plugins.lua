local packer = require("packer")

packer.startup(function(use)
    use "wbthomason/packer.nvim"

    use "nvim-lua/plenary.nvim"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function() require("treesitter_settings.settings") end
    }
    use "windwp/nvim-ts-autotag"

    use {"nvim-treesitter/playground", opt = true, cmd = "TSPlaygroundToggle"}

    use {
        "liuchengxu/vista.vim",
        opt = true,
        keys = "T",
        config = function() require("vista_settings.settings") end
    }

    use {"gelguy/wilder.nvim", config = function() require("wilder_settings.settings") end}

    -- LSP
    use {
        "neovim/nvim-lspconfig",
        config = function() require("lsp_settings.settings") end
    }
    use "simrat39/rust-tools.nvim"
    use "folke/lsp-colors.nvim"
    use "gfanto/fzf-lsp.nvim"
    use "jubnzv/virtual-types.nvim"
    use {"j-hui/fidget.nvim", config = function() require("fidget_settings.settings") end}
    use {
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function() require("lsp_lines").setup() end
    }
    ----

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function() require("lsp_trouble_settings.settings") end
    }

    use {
        "hrsh7th/nvim-cmp",
        config = function() require("nvim_cmp_settings.settings") end,
        requires = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind-nvim",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "lukas-reineke/cmp-rg",
        }
    }

    use "norcalli/nvim-colorizer.lua"

    -- use "lifepillar/vim-solarized8"
    -- use "ishan9299/nvim-solarized-lua"
    use 'folke/tokyonight.nvim'
    -- use {
	   --  "catppuccin/nvim",
	   --  as = "catppuccin",
	   --  config = function() require("catpuccin_settings.settings") end,
    -- }

    use {"rcarriga/nvim-notify", config = function() require("notify_settings.settings") end}
    use {"romgrk/barbar.nvim", requires = {"kyazdani42/nvim-web-devicons"}}

    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function() require("indent_blankline_settings.settings") end
    }

    use {
        "is0n/fm-nvim",
        requires = {
            {
                "numToStr/FTerm.nvim",
                config = function() require("fterm_settings.settings") end
            },
        },
        config = function() require("fm_settings.settings") end}

    -- use {
    --     "ms-jpq/chadtree",
    --     branch = "chad",
    --     run = "python3 -m chadtree deps",
    --     config = function() require("chadtree_settings.settings") end
    -- }

    use {"kevinhwang91/nvim-bqf", opt = true, ft = "qf"}

    -- use {
    --     "jedi2610/nvim-rooter.lua",
    --     config = function() require("nvim_rooter_settings.settings") end
    -- }

    use {"sbdchd/neoformat", config = function() require("neoformat_settings.settings") end}

    use {"folke/which-key.nvim", config = function() require("whichkey_settings.settings") end}

    use {"andweeb/presence.nvim", config = function() require("presence_settings.settings") end}

    use {
        "kylechui/nvim-surround",
        config = function() require("nvim_surround_settings.settings") end
    }

    use "vim-scripts/loremipsum"

    use {
        "junegunn/vim-easy-align",
        config = function() require("easy_align_settings.settings") end
    }

    use "lervag/vimtex"

    use {"L3MON4D3/LuaSnip", config = function() require("luasnip_settings.config") end}

    use {"nvim-lualine/lualine.nvim", config = function() require("lualine_settings.settings") end}

    use {
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap", "theHamsta/nvim-dap-virtual-text"},
        config = function() require("dap_settings.settings") end
    }

    use {
        'eraserhd/parinfer-rust',
        requires = {"elkowar/yuck.vim"},
        run = "cargo build --release"
    }

    use {
        'lewis6991/gitsigns.nvim',
        tag = 'release', -- To use the latest release
        config = function() require("gitsigns_settings.settings") end
    }

    use {"potamides/pantran.nvim", config = function() require("pantran_settings.settings") end}

    use {
        'TimUntersberger/neogit',
        requires = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim',
        },
        config = function() require("neogit_settings.settings") end
    }

    use {
        "jedrzejboczar/toggletasks.nvim",
        requires = {
            'akinsho/toggleterm.nvim',
        },
        config = function() require("toggletasks_settings.settings") end
    }

    use {
        "yamatsum/nvim-cursorline",
        config = function() require("nvim_cursorline_settings.settings") end
    }

    use "vimwiki/vimwiki"

    -- telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {
                "nvim-telescope/telescope-frecency.nvim",
                config = function() require("telescope_settings.extensions.frecency.settings") end,
                requires = {"kkharji/sqlite.lua"}
            },
            {
                "nvim-telescope/telescope-project.nvim",
                config = function() require("telescope_settings.extensions.project.settings") end,
            },
        },
        config = function() require("telescope_settings.settings") end
    }

    use {
        'xiyaowong/nvim-transparent',
        config = function() require("nvim_transparent_settings.settings") end,
    }
    ----

    use {
        "ellisonleao/glow.nvim",
        config = function() require("glow_settings.settings") end,
    }

    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }

    use {
        "nvim-treesitter/nvim-treesitter-context",
        config = function() require("nvim_treesitter_context_settings.settings") end
    }
end)

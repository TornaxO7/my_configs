return {
    "nvim-neorg/neorg",
    ft = "norg",
    dependencies = {
        "nvim-neorg/neorg-telescope",
		"folke/which-key.nvim",
		"nvim-telescope/telescope.nvim",
        {
            "folke/zen-mode.nvim",
            init = function()
                require("zen-mode").setup({})
            end,
        },
    },
    build = function()
        vim.api.nvim_command(":Neorg sync-parsers")
    end,
    init = function()
        local neorg = require("neorg")
        neorg.setup({
            load = {
                ["core.defaults"] = {},
                ["core.norg.dirman"] = {
                    config = {
                        workspaces = {
                            main = "/main/Dokumente/NeorgNotes",
                        }
                    }
                },
                ["core.norg.completion"] = {
                    config = {
                        engine = "nvim-cmp",
                    }
                },
                ["core.export"] = {},
                ["core.norg.concealer"] = {},
                ["core.presenter"] = {
                    config = {
                        zen_mode = "zen-mode",
                    }
                },
                ["core.integrations.telescope"] = {},
            }
        })

        require("plugins.neorg_settings.whichkey")
    end,
}

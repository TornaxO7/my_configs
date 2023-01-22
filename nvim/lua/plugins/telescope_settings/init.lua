return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-ui-select.nvim",
        "folke/which-key.nvim",
        {
            "nvim-telescope/telescope-project.nvim",
            init = function()
                require("plugins.telescope_settings.project")
            end,
        },
        {
            "nvim-telescope/telescope-dap.nvim",
            dependencies = {
                "mfussenegger/nvim-dap",
            },
            init = function()
                require("plugins.telescope_settings.dap")
            end,
        },
    },
    init = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-l>"] = actions.close,
                    },
                },
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({}),
                },
            },
        })
        telescope.load_extension("ui-select")

        require("plugins.telescope_settings.whichkey")
    end,
}

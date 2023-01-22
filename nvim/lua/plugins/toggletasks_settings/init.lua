return {
    "jedrzejboczar/toggletasks.nvim",
    dependencies = {
        "akinsho/toggleterm.nvim",
        "nvim-telescope/telescope.nvim",
        "folke/which-key.nvim",
    },
    init = function()
        local toggletasks = require("toggletasks")

        toggletasks.setup({
            scan = {
                global_cwd = true,
                tab_cwd = false,
                win_cwd = false,
                lsp_root = false,
                rtp_ftplugin = true,
                dirs = {},
            },
            toggleterm = {
                close_on_exit = false,
                hidden = false,
            },
        })

        require("plugins.toggletasks_settings.telescope")
        require("plugins.toggletasks_settings.whichkey")
    end,
}

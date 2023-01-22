return {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "theHamsta/nvim-dap-virtual-text",
        "anuvyklack/hydra.nvim",
    },
    init = function()
        require("plugins.nvim_dap_settings.hydra")

        require("plugins.nvim_dap_settings.extra.ui")
        require("plugins.nvim_dap_settings.extra.virtual_text")

        require("plugins.nvim_dap_settings.adapters")
        require("plugins.nvim_dap_settings.configurations")
    end,
}

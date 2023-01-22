return {
    "rcarriga/nvim-notify",
    init = function()
        vim.o.termguicolors = true

        local notify = require("notify")
        notify.setup({
            max_width = 80,
        })

        vim.notify = notify
    end,
}

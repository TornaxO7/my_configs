local toggletasks = require("toggletasks")

toggletasks.setup {
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
}

require("toggletasks_settings.telescope")
require("toggletasks_settings.keybindings")
require("toggletasks_settings.whichkey")
require("toggletasks_settings.commands")

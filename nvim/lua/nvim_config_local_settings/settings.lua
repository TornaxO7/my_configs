local config_local = require("config-local")
config_local.setup({
    config_files = {".vimrc.lua"},
    hashfile = vim.fn.stdpath("data") .. "/config-local",
    autocommands_create = true,
    commands_create = true,
    silent = false,
    lookup_parents = false,
})

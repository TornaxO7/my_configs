local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = "maintained",

    highlight = {
        enable = true,  -- false will disable the whole extension
        disable = { 'latex' },  -- list of language that will be disabled
    },

    indent = {
        enable = false,
    },

    rainbow = {
        enable = false,
    },
}

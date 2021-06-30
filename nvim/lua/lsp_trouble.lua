local trouble = require('trouble')

trouble.setup {
    action_keys = {
        close_folds = { "zc" },
        open_folds  = { "zo" },
        toggle_fold = { "zt" },
    }
}

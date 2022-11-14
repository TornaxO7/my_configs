local nr = require("nvim-rooter")

nr.setup({
    rooter_patterns = {'.git', '.nvim_rooter_stop'},
    trigger_patterns = {"*"},
    manual = false,
})

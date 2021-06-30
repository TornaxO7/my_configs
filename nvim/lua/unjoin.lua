local revj = require("revj")

revj.setup {
    brackets = {first = '([{<', last = ')]}>'}, -- brackets to consider surrounding arguments
    new_line_before_last_bracket = true, -- add new line between last argument and last bracket (only if no last seperator)
    add_seperator_for_last_parameter = true, -- if a seperator should be added if not present after last parameter
    enable_default_keymaps = false, -- enables default keymaps without having to set them below
    keymaps = {
       operator = '<localleader>J', -- for operator (+motion)
       line = '<localleader>j', -- for formatting current line
       visual = '<localleader>j', -- for formatting visual selection
    },
}

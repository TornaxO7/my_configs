local neogit = require("neogit")
local key = require("which-key")

key.register({
    n = { neogit.open, "Open neogit" },
}, { prefix = "<localleader>" })

local fterm = require("FTerm")

local open_window = function()
    local tmp_file = vim.fn.tempname()
    local current_dir = vim.fn.expand("%:p:h")

    local window = fterm:new({
        ft = "vifm-window",
        cmd = "vifm --choose-files " .. tmp_file .. " " .. current_dir,
        on_exit = function()
            if tmp_file ~= nil then
                local file = io.open(tmp_file, "r")
                local path = file:read()
                vim.api.nvim_command("e " .. path)
                file:close()
            end
        end
    })

    window:toggle()
end

return open_window

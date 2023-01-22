local function open_vifm()
    local fterm = require("FTerm")
    local tmp_file = vim.fn.tempname()
    local current_dir = vim.fn.expand("%:p:h")

    local window = fterm:new({
        ft = "vifm-window",
        cmd = "vifm --choose-files " .. tmp_file .. " " .. current_dir,
        on_exit = function()
            if tmp_file ~= nil then
                local file = io.open(tmp_file, "r")
                local path = file:read()
                if path then
                    vim.api.nvim_command("e " .. path)
                end
                file:close()
            end
        end
    })

    window:toggle()
end

return {
    "is0n/fm-nvim",
    dependencies = {
        "numToStr/FTerm.nvim",
    },
    init = function()
        require('fm-nvim').setup {
            ui = {
                float = {
                    border = "rounded",
                },
            },
            -- Terminal commands used w/ file manager (have to be in your $PATH)
            cmds = {
                vifm_cmd = "(vifm " .. vim.fn.expand("%:h") .. ")",
            },
        }

        vim.keymap.set("n", "<localleader>v", open_vifm, {desc = "vifm"})
    end,
}

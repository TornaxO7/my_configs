return {
    "andweeb/presence.nvim",
    init = function()
        -- The setup config table shows all available config options with their default values:
        require("presence"):setup({
            neovim_image_text   = "Vimming", -- Text displayed when hovered over the Neovim image
            enable_line_number  = true,                      -- Displays the current line number instead of the current project
            blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
            -- Rich Presence text options
            editing_text        = "Vimming %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
            plugin_manager_text = "Vimming plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
        })
    end
}

------ Awesome library ------
local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local helpers = require("helpers")
local gears = require("gears")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

--local popup = require("widgets.prompt_popup.popup")

local prompt = awful.widget.prompt {
    with_shell = true,
    prompt = "WHY: ",
    opacity = 1,
    visible = true,
    bg = "#FFFFFF",
    fg = "#000000",

    --done_callback = function()
    --    --awful.spawn("notify-send 'ok?' 'yes'")
    --    popup.visible = false
    --end
}

return prompt

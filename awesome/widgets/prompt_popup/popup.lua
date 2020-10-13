------ Awesome library ------
local awful = require("awful")
local wibox = require("wibox")
local beautiful = require("beautiful")
local helpers = require("helpers")
local gears = require("gears")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

local prompt = require("widgets.prompt_popup.prompt")

--local prompt_popup = awful.popup {
--    widget = wibox.widget {
--        prompt,
--        margins = 4,
--        widget  = wibox.container.margin,
--    },
--    input_passthrough = true,
--    border_color = beautiful.border_color,
--    border_width = beautiful.border_width,
--    placement    = awful.placement.centered,
--    minimum_height = dpi(50),
--    minimum_width = dpi(500),
--    ontop        = true,
--    visible      = false,
--    shape        = gears.shape.rounded_rect,
--    window = "prompt_popup",
--    bg = beautiful.popup.bg,
--}

local prompt_popup = wibox.widget {

    {
        prompt,
        margins = dpi(5),
        widget = wibox.container.margin,
    },

    forced_height = dpi(50),
    forced_width = dpi(500),
    opacity = 1,
    visible = true,
    widget = wibox.container.place
}

return {prompt_popup, prompt}

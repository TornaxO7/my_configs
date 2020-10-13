------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local watch = require("awful.widget.watch")
local beautiful = require("beautiful")
local gears = require("gears")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

-- max minus min will return the values for the progressbar
local max_cpu_value = 100
local min_cpu_value = 0

local cpu_bar = wibox.widget {
	max_value = max_cpu_value,

	min_value = min_cpu_value,

	forced_height = popup_values.cpu.bar_height,
	forced_width = popup_values.cpu.bar_width,

	step_width = popup_values.graphs.step_width,
	step_spacing = popup_values.graphs.step_spacing,

	color = {
        type = "linear",
        from = {0, 0},
        to = {0, popup_values.cpu.bar_height},
        stops = {
            {0, "#ff0000"},
            {0.5, "#ffff00"},
            {1, "#00ff00"}
        }
    },
	background_color = beautiful.popup.bg,
	opacity = 1,
	visible = true,

	widget = wibox.widget.graph
}

local cpu_icon = wibox.widget {
		image = awesome_dir .. "/favicons/cpu.ico",
		resize = true,
		opacity = 1,
		visible = true,
		forced_height = popup_values.icons.height,
		forced_width = popup_values.icons.width,

		widget = wibox.widget.imagebox
}

local cpu_frequency = wibox.widget {
		text = "ROFL",
		font = "Liberation Sans Bold 10",
		opacity = 1,
		visible = true,
		align = "center",
		valign = "center",
		widget = wibox.widget.textbox
}

----- Functions -----
local function refresh_values(widget, value, _, _, _)
	value = tonumber(value)
	widget:add_value(value)

	cpu_frequency.text = value .. "%"
end

watch(awesome_dir .. "/scripts/cpu.sh", 1, refresh_values, cpu_bar)

----- The widget -----
local cpu_widget = {
	layout = wibox.layout.fixed.horizontal,
	cpu_icon,
	{
		{
			layout = wibox.layout.stack,
			cpu_bar,
			cpu_frequency
		},

		top = dpi(7),
		bottom = dpi(7),
		right = dpi(0),
		left = dpi(17),
		widget = wibox.container.margin
	}
}

return cpu_widget

------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local watch = require("awful.widget.watch")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
-----------------------------

local ram_max = 11.917
local swap_max = 12.288
local layout_height = dpi(37)

----- Ram -----
local ram_icon = wibox.widget {
		image = awesome_dir .. "/favicons/ram.ico",
		resize = true,
		opacity = 1,
		visible = true,
		forced_width = popup_values.icons.width,
		forced_height = popup_values.icons.height,

		widget = wibox.widget.imagebox
	}

local ram_description = wibox.widget {
	text = "ROFL",
	align = "center",
	valign = "center",
	font = "Liberation Sans Bold 13",
	opacity = 1,
	visible = true,
	widget = wibox.widget.textbox,
}

local ram_bar = wibox.widget {
	max_value = ram_max,

	forced_height = popup_values.bars.height,

	shape = gears.shape.powerline,
	bar_shape = gears.shape.powerline,

	margins = popup_values.bars.margins,

	color = beautiful.popup.ram,
	background_color = beautiful.popup.bg,
	widget = wibox.widget.progressbar,
}

----- Swap -----
local swap_description = wibox.widget {
	text = "ROFL",
	align = "center",
	valign = "center",
	font = "Liberation Sans Bold 13",
	opacity = 1,
	visible = true,
	widget = wibox.widget.textbox,
}

local swap_bar = wibox.widget {
	max_value = swap_max,

	forced_height = popup_values.bars.height,

	shape = gears.shape.powerline,
	bar_shape = gears.shape.powerline,

	margins = popup_values.bars.margins,

	color = beautiful.popup.swap,
	background_color = beautiful.popup.bg,
	widget = wibox.widget.progressbar,
}

----- Functions -----
local function refresh(widget, ram_usage, _, _, _)
	local ram_usage = tonumber(ram_usage) / 1000

	awful.spawn.easy_async(awesome_dir .. "/scripts/ram.sh 'swap'", function(stdout)
		local swap_usage = tonumber(stdout) / 1000
		--swap_bar:set_value(swap_usage)

		swap_bar.value = swap_usage
		swap_description.text = swap_usage .. "G of " .. swap_max .. "G"
	end)

	--widget:set_value(ram_usage)
	widget.value = ram_usage

	ram_description.text = ram_usage .. "G of " .. ram_max .. "G"
end

watch(awesome_dir .. "/scripts/ram.sh 'usage'", 1, refresh, ram_bar)

local ram_widget = {
	layout = wibox.layout.fixed.horizontal,
	spacing = popup_values.spacing,
	ram_icon,
	{
		{ ---- Ram ----
			layout = wibox.layout.stack,
			forced_height = layout_height,
			ram_bar,
			ram_description,
		},
		{ ----- Swap -----
			layout = wibox.layout.stack,
			forced_height = layout_height,
			swap_bar,
			swap_description
		},

		layout = wibox.layout.align.vertical
	}
}

return ram_widget

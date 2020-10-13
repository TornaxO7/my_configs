------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local cairo = require("lgi").cairo
local dpi = xresources.apply_dpi
local gears = require("gears")
local helpers = require("helpers")
-----------------------------

local function vertical_pad(height)
	return wibox.widget({
			forced_height = height,
			layout = wibox.layout.fixed.vertical
	})
end

---- Variables ----
local popup_width = dpi(400)
local popup_height = dpi(825)
----- Widgets -----
local current_time = require("widgets.current_time")
local current_date = require("widgets.date")
local volume_bar = require("widgets.volumebar")
local ram_bar = require("widgets.ram")
local cpu = require("widgets.cpu")
local network = require("widgets.network")
local filesystem = require("widgets.filesystem")
local music = require("widgets.music")

local separator = wibox.widget(
	{
		text = "─────  ─────",
		font = "Liberation Sans Bold 20",
		align = "center",
		valing = "top",

		widget = wibox.widget.textbox
	}
)

local popup = awful.popup {

	----- Widgets ----
	border_width = 5,
	border_color = beautiful.fg_normal,
	ontop = true,
	visible = false,
	opacity = 1,

	forced_width = popup_width,
	forced_height = popup_height,
	screen = 1,

	bg = beautiful.bg_normal,
	fg = beautiful.fg_normal,
	placement = awful.placement.right,

	shape = helpers.rounded_rect(25),

	widget = {
		screen = 1,
		forced_width = popup_width,
		forced_height = popup_height,
		{ ----- Top widgets
			current_time,
			top = dpi(25),
			left = dpi(20),
			right = dpi(20),
			bottom = dpi(10),

			widget = wibox.container.margin
		},

		{ ----- Middle Widgets -----
			{
				current_date,
				separator,
				vertical_pad(dpi(10)),
				volume_bar,
				vertical_pad(dpi(10)),
				ram_bar,
				vertical_pad(dpi(10)),
				cpu,
				vertical_pad(dpi(10)),
				network,
				vertical_pad(dpi(10)),
				filesystem,
				separator,

				layout = wibox.layout.fixed.vertical
			},

			top = 0,
			left = dpi(20),
			right = dpi(20),
			bottom = 0,

			layout = wibox.container.margin
		},

		{ ----- Bottom Widgets -----
			music,
			top = dpi(25),
			left = dpi(20),
			right = dpi(20),
			bottom = dpi(10),
			layout = wibox.container.margin
		},

		layout = wibox.layout.fixed.vertical
	}
}

return popup

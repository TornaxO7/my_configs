------ Awesome library ------
local wibox = require("wibox")
local awful = require("awful")
local gears = require("gears")
local watch = require("awful.widget.watch")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local cairo = require("lgi").cairo
-----------------------------

local helpers = {

	-- rounded rectangle
	rounded_rect = function(radius)
		return function(cairo, width, height)
			gears.shape.rounded_rect(cairo, width, height, radius)
		end
	end,

    rounded_rect = function(radius)
        return function(cairo, width, height)
            gears.shape.rounded_rect(
                cairo, width, height, radius
            )
        end
    end,

	-- partially rounded rectangle
	part_round_rect = function(radius, tl, tr, br, bl)
		return function(cairo, width, height)
			gears.shape.partially_rounded_rect(cairo, width, height, tl, tr, br, bl, radius)
		end
	end,

	-- merge two themes
	merge_tables = function(table1, table2)
		for key, value in pairs(table2) do
			table1[key] = value
		end

		return table1
	end
}

return helpers

----- Awesome Library -----
require("awful.autofocus")
local gears = require("gears")
local awful = require("awful")
---------------------------

local tmp = gears.table.join(
	awful.button({ }, 1, 
		function (c)
    		if c == client.focus then
                c.minimized = true
            else
            	c:emit_signal(
                    "request::activate",
                    "tasklist",
                    {raise = true}
                )
            end
        end),
    awful.button({ }, 3, 
		function()
    		awful.menu.client_list({ theme = { width = 250 } })
        end),
    awful.button({ }, 4, 
		function ()
            awful.client.focus.byidx(1)
        end),
    awful.button({ }, 5,
		function ()
        	awful.client.focus.byidx(-1)
        end)
)

return tmp

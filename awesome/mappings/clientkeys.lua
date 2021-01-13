------- Awesome Library ------
local gears = require("gears")
local awful = require("awful")
------------------------------

local tmp = gears.table.join(

	-- Fullscreen
    awful.key({ modkey,           }, "f",
        function (c)
            c.fullscreen = not c.fullscreen
            c:raise()
        end,
        {description = "toggle fullscreen", group = "client"}),

	-- close window
    awful.key({ modkey, "Shift"   }, "q",      function (c) c:kill() end,
              {description = "close", group = "client"}),
	
	-- toggle floating window
    awful.key({ modkey, "Shift" }, "space",  awful.client.floating.toggle,
              {description = "toggle floating", group = "client"}),
	
	-- move back to master
    awful.key({ modkey, "Shift" }, "Return", function (c) c:swap(awful.client.getmaster()) end,
              {description = "move to master", group = "client"}),
	
	-- move window to other screen
    awful.key({ modkey,           }, "o",      function (c) c:move_to_screen() end,
              {description = "move to screen", group = "client"}),

	-- toggle keep on top
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop end,
              {description = "toggle keep on top", group = "client"}),
	
	-- minimize
    awful.key({ modkey, "Shift"          }, "-",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end ,
        {description = "minimize", group = "client"}),

	-- maximize
	awful.key({ modkey, "Shift"}, "f",
		function(client)
			
			if client.maximized then
				client.maximized = false
			else
				client.maximized = true
			end
	end)
)

return tmp

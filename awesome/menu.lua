----- Awesome Library -----
local awful = require("awful")
local beautiful = require("beautiful")
---------------------------

myawesomemenu = {
   { "Hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
   { "Manual", terminal .. " -e man awesome" },
   { "Edit config", editor_cmd .. " " .. awesome.conffile },
   { "Restart", awesome.restart },
   { "Quit", function() awesome.quit() end },
}

mymainmenu = awful.menu(
	{ 
		items = { 
			{ "Awesome", myawesomemenu, beautiful.awesome_icon },
			{ "Open terminal", terminal }
        }
	}
)

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it

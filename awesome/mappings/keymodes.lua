------ Awesome Library ------
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")
-----------------------------
local layout_popup = require("widgets.layout_popup")

----- Functions ----
local function go_to(tag_number)
	-- This will open "tag_number"
	local tags_dp = {1, 3, 6, 8, 10}
	local index = 0
	local tmp_screen = ""
	local tag = 0

	-- Look if tag_number is in the list
	while ((index < 5) and (tag_number ~= tags_dp[index])) do
		index = index + 1
	end

	-- Is the tag in the left screen?
	if (index < 5) then
		awful.screen.focus(1)
	else
		awful.screen.focus(2)
	end

	tag = awful.tag.find_by_name(awful.screen.focused(), tostring(tag_number))

	-- Open the tag if possible
	if tag then
		tag:view_only()
	end
end

local function write_mode(string)
	-- This function will write "string" into a file which is read after the restart
	awful.spawn("/home/tornax/.config/awesome/scripts/theme.sh " .. string)
	awful.spawn("notify-send 'Theme' 'Theme set to " .. string .. "'")
end 

----- Modes -----
tmp = gears.table.join( {

	-----===== Browsers =====-----
	browser = gears.table.join (
		-- firefox 
	    awful.key({}, "f", function()
			go_to(2)
			awful.spawn("firefox")
			root.keys(globalkeys)
			end,
			{description="open firefox", group="browser"}
		),
	
		-- chromium 
	    awful.key({}, "c", function()
			go_to(2)
			awful.spawn("chromium")
			root.keys(globalkeys)
			end,
			{description="open chromium", group="browser"}
		),
	
		-- exit
		awful.key({}, "Escape", function() root.keys(globalkeys) end)
	),

	-----===== Programming =====-----
	programming = gears.table.join (
		-- jetbrains
	    awful.key({}, "j", function()
			awful.tag.viewidx("3")
			awful.screen.focus(1)
			awful.spawn("jetbrains-toolbox")
			root.keys(globalkeys)
			end,
			{description="open jetbrains-toolbox", group="programming"}
	),

	-- vim
    awful.key({}, "v", function()
		awful.tag.viewidx("3")
		awful.screen.focus(1)
		awful.spawn(terminal)
		root.keys(globalkeys)
		end,
		{description="open jetbrains-toolbox", group="programming"}
	),

	-- exit
	awful.key({}, "Escape", function() root.keys(globalkeys) end)
	),

	-----===== Social stuff =====-----
	social = gears.table.join (
		-- Discord
	    awful.key({}, "d", function()
			go_to(5)
			awful.spawn("discord")
			root.keys(globalkeys)
			end,
			{description="open discord", group="social"}
		),
	
		-- rambox
	    awful.key({}, "r", function()
			go_to(5)
			awful.spawn("rambox")
			root.keys(globalkeys)
			end,
			{description="open rambox", group="social"}
		),
	
		-- exit
		awful.key({}, "Escape", function() root.keys(globalkeys) end)
	),

    -----===== Filemanager =====-----
    filemanagers = gears.table.join(

        -- pcmanfm
	    awful.key({}, "p", function()
			go_to(4)
			awful.spawn("pcmanfm")
			root.keys(globalkeys)
			end,
			{description="open pcmanfm", group="filemanger"}
		),

        -- vifm
	    awful.key({}, "v", function()
			go_to(4)
			awful.spawn.with_shell("alacritty -e ~/.config/vifm/scripts/vifmrun.sh")
			root.keys(globalkeys)
			end,
			{description="open vifm", group="filemanger"}
		),
	-- exit
		awful.key({}, "Escape", function() root.keys(globalkeys) end)
    ),

	-----===== Music stuff =====-----
	music = gears.table.join(
		-- spotify
	    awful.key({}, "s", function()
			go_to(7)
			awful.spawn("spotify")
			root.keys(globalkeys)
			end,
			{description="open spotify", group="music"}
		),
		
		-- sayonara
	    awful.key({}, "m", function()
			go_to(7)
			awful.spawn("sayonara")
			root.keys(globalkeys)
			end,
			{description="open sayonara", group="music"}
		),
		
		-- auryo
	    awful.key({}, "a", function()
			go_to(7)
			awful.spawn("auryo")
			root.keys(globalkeys)
			end,
			{description="open auryo", group="music"}
		),
	
		-- exit
		awful.key({}, "Escape", function() root.keys(globalkeys) end)
	),

	-----===== Music visualizer =====-----
	music_visualizer = gears.table.join (
		-- spawn
	    awful.key({}, "s", function()
			awful.spawn("glava --desktop")
			root.keys(globalkeys)
		end,
			{description="start glava", group="music visualizer"}
		),
	
		-- kill
	    awful.key({}, "k", function()
			awful.spawn("killall glava")
			root.keys(globalkeys)
		end,
			{description="stop glava", group="music visualizer"}
		),
	
		-- restart
	    awful.key({}, "r", function()
			awful.spawn("killall glava && glava --desktop") 
			root.keys(globalkeys)
		end,
			{description="restart glava", group="music visualizer"}
		),
	
		-- exit
		awful.key({}, "Escape", function() root.keys(globalkeys) end)
	),
	
	-----===== Theme =====-----
	background = gears.table.join(
		-- Kaneki
	    awful.key({}, "k", function()
			root.keys(globalkeys)
			write_mode("tokyo_ghoul")
		end,
			{description="set wallpaper to tokyo ghoul", group="theme"}
		),
	
		-- Miku
	    awful.key({}, "m", function()
			root.keys(globalkeys)
			write_mode("miku")
		end,
			{description="set wallpaper to miku_split", group="theme"}
		),
	
		-- Grass
	    awful.key({}, "w", function()
			gears.wallpaper.maximized("/windows/Images/anime_images/grass.jpg")
			root.keys(globalkeys)
		end,
			{description="set wallpaper to grass", group="theme"}
		),

        -- Violet Evergarden
        awful.key({}, "v", function()
            root.keys(globalkeys)
            write_mode("violet_evergarden")
        end,
            {description="Set theme to violet evergarden", group="theme"}
        ),

		-- exit
		awful.key({}, "Escape", function() root.keys(globalkeys) end)
	),

	-----===== Layout =====-----
	switch_layout = gears.table.join(
		-- Right
		awful.key({}, "Right", function()
			awful.layout.inc(1)
		end,
			{description="increase layoutindex", group="layout"}
		),

		awful.key({}, "l", function()
			awful.layout.inc(1)
		end,
			{description="increase layoutindex", group="layout"}
		),

		awful.key({}, "k", function()
			awful.layout.inc(1)
		end,
			{description="increase layoutindex", group="layout"}
		),

		awful.key({}, " ", function()
			awful.layout.inc(1)
		end,
			{description="increase layoutindex", group="layout"}
		),

		-- Left
		awful.key({}, "Left", function()
			awful.layout.inc(-1)
		end,
			{description="decrease layoutindex", group="layout"}
		),

		awful.key({modkey}, " ", function()
			awful.layout.inc(-1)
		end,
			{description="increase layoutindex", group="layout"}
		),

		awful.key({}, "j", function()
			awful.layout.inc(-1)
		end,
			{description="decrease layoutindex", group="layout"}
		),

		-- quit
		awful.key({}, "Escape", function()
			layout_popup.visible = false
			root.keys(globalkeys)
		end,
			{description="quit", group="layout"}
		),

		awful.key({}, "Return", function()
			layout_popup.visible = false
			root.keys(globalkeys)
		end,
			{description="quit", group="layout"}
		),

		awful.key({}, "q", function()
			layout_popup.visible = false
			root.keys(globalkeys)
		end,
			{description="quit", group="layout"}
		),
		
		-- Screenshot
    	awful.key({"Shift"}, "#107", function() 
			awful.spawn.with_shell("import -window root Screenshot.png")
		end)
	),
})

return tmp

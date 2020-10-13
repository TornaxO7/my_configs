------ Awesome Library ------
local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
local hotkeys_popup = require("awful.hotkeys_popup")
-----------------------------

-- needed layout
--local treetile = require("treetile")

----- Widgets -----
-- layout popup
local layout_popup = require("widgets.layout_popup")

-- sidebar popup
local sidebar_popup = require("widgets.sidebar_popup")

-- prompt_popup
--local prompt_popup = require("widgets.prompt_popup")
local prompt_popup = require("scripts.run-shell")

-- notification-bar-popup
local notification_bar = require("widgets.notification.notification_bar")

----- Functions ------
local function move_mouse_onto_focused_client()
    local c = client.focus 
	if c then
		local geometry = c:geometry()
        local x = geometry.x + geometry.width/2
        local y = geometry.y + geometry.height/2
        mouse.coords({x = x, y = y}, true)
    end
end

--client.connect_signal("swapped", move_mouse_onto_focused_client)

local function go_to(tag_number, move_client)
	-- This will open "tag_number"
	local tags_dp = {1, 3, 6, 8, 10}
	local index = 0
	local tmp_screen
	local tag

	-- Look if tag_number is in the list
	while ((index < 5) and (tag_number ~= tags_dp[index])) do
		index = index + 1
	end

	-- Is the tag in the left screen?
	if (index < 5) then
		tmp_screen = 1
		mouse.coords({x = 960, y = 540}, true)
	else
		tmp_screen = 2
		mouse.coords({x = 2880, y = 540}, true)
	end

	tag = awful.tag.find_by_name(awful.screen[tmp_screen - 1], tostring(tag_number))

	-- Open the tag if possible
	if (tag and move_client == nil) then
		tag:view_only()
	else
		-- move the client to the tag
		client.focus:move_to_tag(tag)
	end

	awful.screen.focus(tmp_screen)
end

local keymodes = require("mappings.keymodes")

local tmp = gears.table.join(

	-----===== Move to tags =====------
	----- display tag with alt + number -----
    awful.key({ modkey 			 }, "1",  function () go_to(1) end,
    	{description = "open terminal tag", group = "tags"}),

    awful.key({ modkey 			 }, "2",  function () go_to(2) end,
    	{description = "open browser tag", group = "tags"}),

    awful.key({ modkey 			 }, "3",  function () go_to(3) end,
    	{description = "open programming tag", group = "tags"}),

    awful.key({ modkey 			 }, "4",  function () go_to(4) end,
    	{description = "open filemanager", group = "tags"}),

    awful.key({ modkey 			 }, "5",  function () go_to(5) end,
    	{description = "open social stuff", group = "tags"}),

    awful.key({ modkey 			 }, "6",  function () go_to(6) end,
    	{description = "open microsoft teams", group = "tags"}),

    awful.key({ modkey 			 }, "7",  function () go_to(7) end,
    	{description = "open music stuff", group = "tags"}),

    awful.key({ modkey 			 }, "8",  function () go_to(8) end,
    	{description = "open texstudio", group = "tags"}),

    awful.key({ modkey 			 }, "9",  function () go_to(9) end,
    	{description = "open printer/scanner", group = "tags"}),

    awful.key({ modkey 			 }, "0",  function () go_to(10) end,
    	{description = "open VirtualBox", group = "tags"}),
	
	----- display tag with special keybindings (win + name) -----
    awful.key({ modkey2 			 }, "t",  function () go_to(1) end,
    	{description = "open terminal tag", group = "tags"}),

    awful.key({ modkey2 			 }, "f",  function () go_to(2) end,
    	{description = "open browser tag", group = "tags"}),

    awful.key({ modkey2 			 }, "c",  function () go_to(3) end,
    	{description = "open programming tag", group = "tags"}),

    awful.key({ modkey2 			 }, "v",  function () go_to(4) end,
    	{description = "open filemanager", group = "tags"}),

    awful.key({ modkey2 			 }, "r",  function () go_to(4) end,
    	{description = "open filemanager", group = "tags"}),

    awful.key({ modkey2 			 }, "d",  function () go_to(5) end,
    	{description = "open social stuff", group = "tags"}),

    awful.key({ modkey2 			 }, "w",  function () go_to(6) end,
    	{description = "open microsoft teams", group = "tags"}),

    awful.key({ modkey2 			 }, "m",  function () go_to(7) end,
    	{description = "open music stuff", group = "tags"}),

    awful.key({ modkey2 			 }, "l",  function () go_to(8) end,
    	{description = "open texstudio", group = "tags"}),

    awful.key({ modkey2 			 }, "p",  function () go_to(9) end,
    	{description = "open printer/scanner", group = "tags"}),

    awful.key({ modkey2 			 }, "b",  function () go_to(10) end,
    	{description = "open VirtualBox", group = "tags"}),

	-----===== Open Programs =====-----
	-- open terminal
    awful.key({ modkey,           }, "Return", 
		function () 
			awful.spawn(terminal) 
		end,
            {description = "open a terminal", group = "launcher"}),

    awful.key({ modkey2,           }, "Return", 
		function () 
			go_to(1)
			awful.spawn(terminal) 
		end,
            {description = "open a terminal in tag 1", group = "launcher"}),
	
	-- keepassxc
    awful.key({ "Control", "Shift" }, "k", 
		function () 
			awful.spawn.with_shell("QT_SCALE_FACTOR=1.2 keepassxc") 
		end,
            {description = "open keepassxc", group = "launcher"}),

	-- vifm
    awful.key({ "Control", "Shift" }, "r", 
		function () 
			go_to(4)
			awful.spawn.with_shell("alacritty" .. " -e " .. "~/.config/vifm/scripts/vifmrun") 
		end,
            {description = "open keepassxc", group = "launcher"}),
	
	-- microsoft teams
    awful.key({ "Control", "Shift" }, "w", 
		function () 
			go_to(6)
			awful.spawn("teams")
		end,
            {description = "open microsoft teams", group = "launcher"}),
	
	-- scanner
    awful.key({ "Control", "Shift" }, "p", 
		function () 
			go_to(9)
			awful.spawn("xsane")
		end,
            {description = "open xsane", group = "launcher"}),

	----- Modes -----
	-- Browsers
    awful.key({ "Control", "Shift" }, "f", 
		function () 
			root.keys(keymodes.browser)
		end,
            {description = "open browser mode", group = "launcher"}),
	
	-- Programming
    awful.key({ "Control", "Shift" }, "j", 
		function () 
			root.keys(keymodes.programming)
		end,
            {description = "open browser mode", group = "launcher"}),

	-- Social stuff
    awful.key({ "Control", "Shift" }, "d", 
		function () 
			root.keys(keymodes.social)
		end,
            {description = "open social mode", group = "launcher"}),
	
	-- Music
    awful.key({ "Control", "Shift" }, "m", 
		function () 
			root.keys(keymodes.music)
		end,
            {description = "open music mode", group = "launcher"}),
	
	-- Music Visualizer
    awful.key({ modkey2 }, "g", 
		function () 
			root.keys(keymodes.music_visualizer)
		end,
            {description = "open glava mode", group = "launcher"}),
	
	-- Theme
	awful.key({ modkey2 }, "h",
		function()
			root.keys(keymodes.background)
		end,
            {description = "open background settings", group = "launcher"}),
	

	-----===== Music =====-----
	------===== Music: Volume and stop/continuing, next, prev =====-----
	-- increase volume
    awful.key({}, "XF86AudioRaiseVolume", function ()
		awful.spawn("pactl set-sink-volume @DEFAULT_SINK@ +2%")
	end,
              {description = "increase music volume", group = "music volume"}),

	-- decrease volume
    awful.key({}, "XF86AudioLowerVolume", function ()
		awful.spawn("pactl set-sink-volume @DEFAULT_SINK@ -2%")
	end,
              {description = "decrease music volume", group = "music volume"}),
	
	-- toggle volume
    awful.key({}, "XF86AudioMute", function ()
		awful.spawn("pactl set-sink-volume @DEFAULT_SINK@ toggle")
	end,
              {description = "toggle music volume", group = "music volume"}),

	-- next song
    awful.key({}, "XF86AudioNext", function ()
		awful.spawn("playerctl --player=sayonara,spotify next")
	end,
              {description = "play next song", group = "music action"}),
	
	-- previous song
    awful.key({}, "XF86AudioPrev", function ()
		awful.spawn("playerctl --player=sayonara,spotify previous")
	end,
              {description = "toggle music volume", group = "music action"}),
	
	-- pause/play song
    awful.key({}, "XF86AudioPlay", function ()
		awful.spawn("playerctl --player=sayonara,spotify play-pause")
	end,
              {description = "toggle music volume", group = "music action"}),
	

	-----===== Change values/amounts/master clients/width; resize =====-----
	-- width
    awful.key({ modkey,           }, "Right",     function () 

		--if awful.layout.get(awful.screen.focused()) == treetile then
		--	treetile.resize_client(0.1)

		--else -- For every other layout
		--	awful.tag.incmwfact(0.05)          
		--end
		awful.tag.incmwfact(0.05)          
	end,
              {description = "increase master width factor", group = "layout"}),

    awful.key({ modkey,           }, "Left",     function () 
		--if awful.layout.get(awful.screen.focused()) == treetile then
    	--        treetile.resize_client(-0.1) 
    	--        -- increase or decrease by percentage of current width or height, 
    	--        -- the value can be from 0.01 to 0.99, negative or postive

		--else -- For every other layout
		--	awful.tag.incmwfact(-0.05)      
		--end
		awful.tag.incmwfact(-0.05)      
	end,
              {description = "decrease master width factor", group = "layout"}),
	
	-- height
    awful.key({ modkey,           }, "Up",     function () 
			--if awful.layout.get(awful.screen.focused()) ~= treetile then
			--	awful.client.incwfact(0.05) 
			--end
			awful.client.incwfact(0.05) 
		end,
              {description = "increase master width factor", group = "layout"}),

    awful.key({ modkey,           }, "Down",     function ()
			--if awful.layout.get(awful.screen.focused()) ~= treetile then
			--	awful.client.incwfact(-0.05)
			--end
			awful.client.incwfact(-0.05)
		end,
              {description = "decrease master width factor", group = "layout"}),

	-- amount of master clients
    awful.key({ modkey, "Shift"		 }, "Up",     function () awful.tag.incnmaster( 1, nil, true) end,
              {description = "increase the number of master clients", group = "layout"}),

    awful.key({ modkey, "Shift"		 }, "Down",     function () awful.tag.incnmaster(-1, nil, true) end,
              {description = "decrease the number of master clients", group = "layout"}),

	-- amount of columns
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1, nil, true)    end,
              {description = "increase the number of columns", group = "layout"}),

    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1, nil, true)    end,
              {description = "decrease the number of columns", group = "layout"}),
	
	-----===== (Un)Minimize windows =====-----
    awful.key({ modkey,   }, "-",
              function ()
                  local c = awful.client.restore()
                  -- Focus restored client
                  if c then
                    c:emit_signal(
                        "request::activate", "key.unminimize", {raise = true}
                    )
                  end
              end,
              {description = "restore minimized", group = "client"}),
	
	-----===== Switch Layouts =====-----
	-- open popup
	awful.key({modkey}, " ", function()
		layout_popup.screen = awful.screen.focused()
		layout_popup.visible = true
		root.keys(keymodes.switch_layout)
	end,
	        {description = "open background settings", group = "launcher"}),

	-- Set to tab-mode
    awful.key({ modkey,   }, "w", function () awful.layout.set(awful.layout.suit.max)          end,
              {description = "select previous", group = "layout"}),
	
	-- set to grid mode
    awful.key({ modkey,           }, "e", function () awful.layout.set(awful.layout.suit.tile.right)  end,
              {description = "set layout to grid mode", group = "layout"}),
	
	-- set to horizontal split
	awful.key({ modkey,           }, "h", function() awful.layout.set(awful.layout.suit.tile.bottom) end,
              {description = "Treesplit: Set to horizontal split", group = "layout"}),

	---- set to vertical split
    --awful.key({ modkey,           }, "v", treetile.vertical,
    --          {description = "Treesplit: Set to vertical split", group = "layout"}),

	-----===== Movement =====-----
	----- Switch focus -----
    awful.key({ modkey }, 		 "j",
        function ()
            awful.client.focus.byidx( 1)
			move_mouse_onto_focused_client()
        end,
        {description = "focus next by index", group = "client"}
    ),
    awful.key({ modkey }, 		"k",
        function ()
            awful.client.focus.byidx(-1)
			move_mouse_onto_focused_client()
        end,
        {description = "focus previous by index", group = "client"}
    ),
	
	-- switch focus to urgent client
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto,
              {description = "jump to urgent client", group = "client"}),

	-----===== Move Windows =====-----
	-- swap windows
    awful.key({ modkey, "Shift"   }, "j", function() 
			awful.client.swap.byidx(  1) 	
			move_mouse_onto_focused_client()
	end,
              {description = "swap with next client by index", group = "client"}),

    awful.key({ modkey, "Shift"   }, "k", function() 
			awful.client.swap.byidx( -1)    
			move_mouse_onto_focused_client()
	end,
              {description = "swap with previous client by index", group = "client"}),
	
	----- Move Window to tag -----
    awful.key({ modkey, "Shift" 			 }, "1",  function () go_to(1, true) end,
    	{description = "open terminal tag", group = "tags"}),

    awful.key({ modkey, "Shift" 			 }, "2",  function () go_to(2, true) end,
    	{description = "open browser tag", group = "tags"}),

    awful.key({ modkey, "Shift"			 }, "3",  function () go_to(3, true) end,
    	{description = "open programming tag", group = "tags"}),

    awful.key({ modkey, "Shift"			 }, "4",  function () go_to(4, true) end,
    	{description = "open filemanager", group = "tags"}),

    awful.key({ modkey, "Shift"  			 }, "5",  function () go_to(5, true) end,
    	{description = "open social stuff", group = "tags"}),

    awful.key({ modkey, "Shift"  			 }, "6",  function () go_to(6, true) end,
    	{description = "open microsoft teams", group = "tags"}),

    awful.key({ modkey, "Shift"			 }, "7",  function () go_to(7, true) end,
    	{description = "open music stuff", group = "tags"}),

    awful.key({ modkey, "Shift" 			 }, "8",  function () go_to(8, true) end,
    	{description = "open texstudio", group = "tags"}),

    awful.key({ modkey, "Shift" 			 }, "9",  function () go_to(9, true) end,
    	{description = "open printer/scanner", group = "tags"}),

    awful.key({ modkey, "Shift"			 }, "0",  function () go_to(10, true) end,
    	{description = "open VirtualBox", group = "tags"}),
	
	-----===== Screenshots =====-----
	-- of active window
    awful.key({}, "#107", function() 
		awful.spawn.with_shell("deepin-screen-recorder -s ~/Screenshot.png")
	end,
              {description = "screenshot of active window", group = "screenshot"}),
	
	-- of whole screen
    awful.key({"Shift"}, "#107", function() 
		awful.spawn.easy_async_with_shell("sleep 1; import -window root Screenshot.png")
	end,
              {description = "screenshot of both screens", group = "screenshot"}),
	
	-- flameshot
    awful.key({}, "#78", function() 
		awful.spawn.with_shell("flameshot gui")
	end,
              {description = "screenshot of both screens", group = "screenshot"}),

	-----===== "Awesome"s functions =====-----
	-- display shortcuts-help
	awful.key( 	{modkey}, 		"s", 		hotkeys_popup.show_help,
        {description="show help", group="awesome"}),
	
	-- go one history-tag back
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end,
        {description = "go back", group = "client"}),

	-- reload awesome
    awful.key({ modkey, "Shift" }, "r", awesome.restart,
              {description = "reload awesome", group = "awesome"}),

	-- exit awesome
    awful.key({ modkey, "Shift"   }, "e", function()

		awful.spawn.with_shell("~/.config/awesome/scripts/close.sh")
		end,
              {description = "quit awesome", group = "awesome"}),

	-- start mini-shell (prompt)
    --awful.key({ modkey },            "d",     function () awful.screen.focused().promptbox:run() end,
    --          {description = "run prompt", group = "launcher"}),
    awful.key({ modkey },            "d",     function () prompt_popup.launch() end,
              {description = "run prompt", group = "launcher"}),

	-- toggle sidebar_popup
    awful.key({ modkey },            "m",     function ()
		if sidebar_popup.visible then
			sidebar_popup.visible = false
		else
			sidebar_popup.visible = true
		end
	end,
        {description = "Toggle sidebar-popup", group = "launcher"}),

	-- toggle prompt_popup
    awful.key({ modkey },            "n",     function ()
        if notification_bar.visible then
            notification_bar.visible = false
        else
            notification_bar.visible = true
        end
    end,
        {description = "Toggle prompt_popup", group = "launcher"})
)

return tmp

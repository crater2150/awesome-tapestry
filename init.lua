local beautiful = require("beautiful")
local gears     = require("gears")
local awful     = require("awful")

local wallpaperrc = awful.util.getdir("config") .. "/tapestry/wallpaperrc.lua"

local function set_wallpaper(walls, s)
	local wall= walls[s.index] or walls.default or walls[next(walls)] or { gears.wallpaper.set, "black" }
	local f = io.open(wall[2], "r")
	if f~= nil then
		io.close(f)
		wall[1](wall[2],s,wall[3],wall[4])
	end
end

function update_wallpapers()
	local f=io.open(wallpaperrc,"r")
	if f~=nil then
		io.close(f)
		walls = dofile(wallpaperrc)
		for s in screen do
			set_wallpaper(walls, s)
		end
		screen.connect_signal("property::geometry", function(s)
			set_wallpaper(walls, s)
		end)
	elseif beautiful.wallpaper then
		f = io.open(beautiful.wallpaper)
		if  f ~= nil then
			io.close(f)
			screen.connect_signal("property::geometry", function(s)
				gears.wallpaper.maximized(beautiful.wallpaper, s, true)
			end)
		end
	end
end

update_wallpapers()

return update_wallpapers

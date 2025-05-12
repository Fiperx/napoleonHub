if napoleonLoaded then
    return
end

pcall(function()
    getgenv().napoleonLoaded = true
end)

local TeleportService: TeleportService = cloneref(game:GetService("TeleportService"))

local repo = 'https://raw.githubusercontent.com/raydjs/Obsidian/main/'
local discord_link = 'discord.gg/bWzCFPk83g'
local Library = nil

while true do task.wait()
	local success, data = pcall(function()
		return loadstring(game:HttpGet(repo .. 'Library.lua'))()
	end)

	if success then
		Library = data
		break
	end
end

local ID = game.GameId

local script_id = if ID == 6931042565 then
    '10231c45388ada5c77add5a7583a2b19'
elseif ID == 7018190066 then
    '6cb8843504e7bbaf2c12ad7fe51d8e60'
elseif ID == 6945584306 then
    'd48f6f73e12d8c126f3075f73224ea83'
elseif ID == 1054526971 then
    '2e637d8f45504b786dccd6c6478e468f'
else
    nil

if not script_id then
	return
end

local Window = Library:CreateWindow({
	Title = "Napoleon Hub",
	Footer = discord_link,
	Icon = 105747086514734,
	NotifySide = "Right",
	ShowCustomCursor = false,
    MobileButtonsSide = "Left",
})

-- You can continue from here to load the actual functionality of your hub,
-- such as adding tabs for features, UI controls, etc.

Library:Notify("Napoleon Hub Loaded Successfully (No Key Required)", 4)

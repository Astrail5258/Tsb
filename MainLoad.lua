loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/Load2.lua'))()
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local humanoid = player.Character.Humanoid
while true do
    humanoid.AutoRotate = true
    wait(0)
end

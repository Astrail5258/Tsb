local cinematicGui = Instance.new("ScreenGui")
cinematicGui.Name = "CinematicGui"
cinematicGui.Parent = playerGui

local function createMangaText(parent, text)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 150, 0, 350)
    billboardGui.AlwaysOnTop = true
    billboardGui.LightInfluence = 0
    billboardGui.Parent = parent

    local borderFrame = Instance.new("Frame", billboardGui)
    borderFrame.Size = UDim2.new(1, 0, 1, 0)
    borderFrame.BackgroundColor3 = Color3.new(1, 1, 1)
    borderFrame.BorderSizePixel = 5
    borderFrame.BorderColor3 = Color3.new(0, 0, 0)

    local shadowLabel = Instance.new("TextLabel", borderFrame)
    shadowLabel.Size = UDim2.new(1, -20, 1, -20)
    shadowLabel.Position = UDim2.new(0.5, 2, 0.5, 2)
    shadowLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    shadowLabel.BackgroundTransparency = 1
    shadowLabel.Text = text
    shadowLabel.Font = Enum.Font.Arcade
    shadowLabel.TextSize = 28
    shadowLabel.TextColor3 = Color3.new(0, 0, 0)
    shadowLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    shadowLabel.TextStrokeTransparency = 0.7
    shadowLabel.TextWrapped = true

    local textLabel = Instance.new("TextLabel", borderFrame)
    textLabel.Size = UDim2.new(1, -20, 1, -20)
    textLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
    textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = text
    textLabel.Font = Enum.Font.Arcade
    textLabel.TextSize = 28
    textLabel.TextColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeColor3 = Color3.new(1, 1, 1)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextWrapped = true

    return billboardGui
end

local leftText = createMangaText(cinematicGui, "*Laugh*")
local rightText = createMangaText(cinematicGui, "You're such an annoying brat")
leftText.Enabled = false
rightText.Enabled = false

local function updateTextOrientation()
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")
    leftText.Adornee = head
    rightText.Adornee = head

    leftText.StudsOffset = Vector3.new(-6, -2, 0)
    rightText.StudsOffset = Vector3.new(6, -2, 0)
end

game:GetService("RunService").RenderStepped:Connect(updateTextOrientation)

local soundEffect = Instance.new("Sound")
soundEffect.SoundId = "rbxassetid://6537618720"
soundEffect.Name = "NightmodeSound"
soundEffect.Volume = 15
soundEffect.Parent = game:GetService("SoundService")

local function showTextsAndPlaySound()
    leftText.Enabled = true
    rightText.Enabled = true

    soundEffect:Play()

    task.delay(2, function()
        leftText.Enabled = false
        rightText.Enabled = false
    end)
end

showTextsAndPlaySound()

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")

local function setHotbarToolName(slot, name)
    local baseButton = hotbarFrame:FindFirstChild(tostring(slot)).Base
    if baseButton and baseButton:FindFirstChild("ToolName") then
        baseButton.ToolName.Text = name
    end
end

setHotbarToolName(1, "Soul Protect Counter")
setHotbarToolName(2, "World Cutting Slash")
setHotbarToolName(3, "Fire Arrow")
setHotbarToolName(4, "Domain Expansion: Malevolent Shrine")


local animationId = 11343318134


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")


for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end


local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://18450698238"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0

Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime
message = "Know your place, fool..."
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua"))()
Wait(10)
Anim:Stop()
 
Anim:AdjustSpeed(0.5)
        
    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)
-- 2nd ultimate move Table Flip to World Cutting Slash
 local animationId = 11365563255 
 
 
local player = game.Players.LocalPlayer
 
local character = player.Character or player.CharacterAdded:Wait()
 
local humanoid = character:WaitForChild("Humanoid")
 
 
local function onAnimationPlayed(animationTrack)
 
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
 
local p = game.Players.LocalPlayer
 
local Humanoid = p.Character:WaitForChild("Humanoid")
 
 
for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do
 
    animTrack:Stop()
 
end
 
 
local AnimAnim = Instance.new("Animation")
 
AnimAnim.AnimationId = "rbxassetid://14406991505"
 
local Anim = Humanoid:LoadAnimation(AnimAnim)
 
 
local startTime = 0
 
Anim:Play()
 
Anim.TimePosition = startTime

Anim:AdjustSpeed(0.10)
 message = "Scale of the dragon."
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
wait(3)
message = "Recoil."
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
wait(1)
message = "Twin meteors."
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
wait(2)
message = "WORLD CUTTING SLASH!"
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua"))()
        
    end
 
end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)
-- 3rd Ultimate Move Serious Punch to Fuga
local animationId = 12983333733 


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")


for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end


local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://17861840167"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0.1


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(0.2)
message = "Fūga."
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua"))()
        
    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 13927612951


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then


local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")


for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

end

message = "Domain Expansion..."
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")

message = "Malevolent Shrine!"
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://18459220516"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua"))()

Anim:AdjustSpeed(0)

Anim:AdjustSpeed(1)

wait(0)

Anim:AdjustSpeed(0)

wait(0)

Anim:AdjustSpeed(1)
        
    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

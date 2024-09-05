-- Services
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

-- Local Player
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Color tweening function
local function tweenColor(imageLabel, startColor, endColor, duration)
    local tweenInfo = TweenInfo.new(duration, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true)
    local goal = {ImageColor3 = endColor}
    local tween = TweenService:Create(imageLabel, tweenInfo, goal)
    tween:Play()
end

-- GUI and color adjustment function
local function updateBarColor()
    -- Find the ScreenGui on the screen
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    if not screenGui then return end

    -- Find the MagicHealth Frame
    local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
    if not magicHealthFrame then return end

    -- Find the Health Frame
    local healthFrame = magicHealthFrame:FindFirstChild("Health")
    if not healthFrame then return end

    -- Find the Bar Frame
    local barFrame = healthFrame:FindFirstChild("Bar")
    if not barFrame then return end

    -- Find the ImageLabel with ImageColor3 property inside the Bar Frame
    local imageLabel = barFrame:FindFirstChild("Bar")
    if not imageLabel or not imageLabel:IsA("ImageLabel") then return end

    -- Set initial color to dark red
    imageLabel.ImageColor3 = Color3.fromRGB(139, 0, 0) -- Dark red

    -- Smooth transition from dark red to none
    tweenColor(imageLabel, Color3.fromRGB(139, 0, 0), Color3.fromRGB(139, 0, 0), 2)
end

-- Check the GUI again when the character resets
local function onCharacterAdded(character)
    -- Update the GUI
    updateBarColor()
end

-- Check the local player's character
local function onPlayerAdded()
    local character = player.Character or player.CharacterAdded:Wait()
    onCharacterAdded(character)

    -- Check again when the character changes
    player.CharacterAdded:Connect(onCharacterAdded)
end

-- Check when the player is added
Players.PlayerAdded:Connect(onPlayerAdded)
if player then
    onPlayerAdded()
end
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local hotbar = playerGui:FindFirstChild("Hotbar")
local backpack = hotbar:FindFirstChild("Backpack")
local hotbarFrame = backpack:FindFirstChild("Hotbar")

-- Function to set tool name in hotbar
local function setHotbarToolName(slot, name)
    local baseButton = hotbarFrame:FindFirstChild(tostring(slot)).Base
    if baseButton and baseButton:FindFirstChild("ToolName") then
        baseButton.ToolName.Text = name
    end
end

-- Set names for tools in the hotbar
setHotbarToolName(1, "Soul Protect Counter")
setHotbarToolName(2, "World Cutting Slash")
setHotbarToolName(3, "Fūga")
setHotbarToolName(4, "Domain Expansion: Malevolent Shrine")

-- Function to set text in the MagicHealth frame
local function findGuiAndSetText()
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    if screenGui then
        local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
        if magicHealthFrame then
            local textLabel = magicHealthFrame:FindFirstChild("TextLabel")
            if textLabel then
                textLabel.Text = "KING OF CURSES"
            end
        end
    end
end

playerGui.DescendantAdded:Connect(findGuiAndSetText)
findGuiAndSetText()

-- Ultimate move 1 Death Counter to Soul Protect Counter
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
Wait(10)
Anim:Stop()
 
Anim:AdjustSpeed(0.5)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua"))()
        
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
message = "Open."
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

Anim:AdjustSpeed(0)

Anim:AdjustSpeed(1)

wait(0)

Anim:AdjustSpeed(0)

wait(0)

Anim:AdjustSpeed(1)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua"))()
        
    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

-- Create the Cinematic GUI
local cinematicGui = Instance.new("ScreenGui")
cinematicGui.Name = "CinematicGui"
cinematicGui.Parent = playerGui

-- Function to create manga-style text
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

-- Create left and right text elements
local leftText = createMangaText(cinematicGui, "*Laugh*")
local rightText = createMangaText(cinematicGui, "You're such an annoying brat")
leftText.Enabled = false
rightText.Enabled = false

-- Update the orientation of the text relative to the character's head
local function updateTextOrientation()
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")
    leftText.Adornee = head
    rightText.Adornee = head

    leftText.StudsOffset = Vector3.new(-6, -2, 0)
    rightText.StudsOffset = Vector3.new(6, -2, 0)
end

game:GetService("RunService").RenderStepped:Connect(updateTextOrientation)

-- Sound effect setup
local soundEffect = Instance.new("Sound")
soundEffect.SoundId = "rbxassetid://6537618720"
soundEffect.Name = "NightmodeSound"
soundEffect.Volume = 15
soundEffect.Parent = game:GetService("SoundService")

-- Show text and play the sound
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

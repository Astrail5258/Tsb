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

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("1").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Black Flash"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("2").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Divergent Barrage"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Manji Kick"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Upperkick"


local Players = game:GetService("Players")

local player = Players.LocalPlayer

local playerGui = player:WaitForChild("PlayerGui")


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


local animationId = 10468665991


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

AnimAnim.AnimationId = "rbxassetid://18896127525"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)
local final1 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
final1.Parent = game.Players.LocalPlayer.Character["Head"]
for _, child in ipairs(final1:GetChildren()) do
    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
        child:Emit(50) -- Emit 1 particles
    end
end
local final4 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
final4.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(final4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(3) -- Emit 1 particles
        end
    end

    end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10466974800


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

AnimAnim.AnimationId = "rbxassetid://15090141089"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(3)

task.wait(1.7)

local AnimAnim2 = Instance.new("Animation")

AnimAnim2.AnimationId = "rbxassetid://15957361339"

local Anim2 = Humanoid:LoadAnimation(AnimAnim2)


local startTime = 0


Anim:Stop()

Anim2:Play()

Anim2:AdjustSpeed(0)

Anim2.TimePosition = startTime

Anim2:AdjustSpeed(200)

    end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10471336737


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

AnimAnim.AnimationId = "rbxassetid://17838619895"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0.5


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)


delay(1.8,function()

    Anim:Stop()

end)


    end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 12510170988


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

AnimAnim.AnimationId = "rbxassetid://18179181663"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)


    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

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

loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua'))()

    end

end
humanoid.AnimationPlayed:Connect(onAnimationPlayed)
 
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

loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua'))()

    end
 
end
humanoid.AnimationPlayed:Connect(onAnimationPlayed)

local animationId = 15955393872


local player = game.Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local function onAnimationPlayed(animationTrack)

    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then

local p = game.Players.LocalPlayer

local Humanoid = p.Character:WaitForChild("Humanoid")


for _, animTrack in pairs(Humanoid:GetPlayingAnimationTracks()) do

    animTrack:Stop()

local final1 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
final1.Parent = game.Players.LocalPlayer.Character["Head"]
for _, child in ipairs(final1:GetChildren()) do
    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
        child:Emit(50) -- Emit 20 particles
    end
end
local final4 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
final4.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(final4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(3) -- Emit 20 particles
        end
    end

end

local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://15943915877"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0.05


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)


    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)

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

loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua'))()

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

message = "MALEVOLENT SHRINE!"
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

loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriNameBack.lua'))()

    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 12447707844


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

AnimAnim.AnimationId = "rbxassetid://16746808371"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(1)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)

wait(1)

loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/ItadoriUlt.lua'))()

    end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10479335397


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

AnimAnim.AnimationId = "rbxassetid://10479335397,7807831448"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(0.7)


delay(1.2, function()

    Anim:Stop()

end)


    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10503381238


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

AnimAnim.AnimationId = "rbxassetid://14900168720"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 1.3


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)


    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local animationId = 10470104242


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

AnimAnim.AnimationId = "rbxassetid://17859015788"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


wait(0.2)

Anim:Play()

Anim:AdjustSpeed(2)

Anim.TimePosition = startTime

Anim:AdjustSpeed(2)


    end

end

humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local Players = game:GetService("Players")

local player = Players.LocalPlayer

local character = player.Character or player.CharacterAdded:Wait()

local humanoid = character:WaitForChild("Humanoid")


local animationIdsToStop = {

    [10469493270] = true,

    [10469630950] = true,

    [10469639222] = true,

    [10469643643] = true,

}


local replacementAnimations = {

    ["10469643643"] = "rbxassetid://17889290569",

    ["10469639222"] = "rbxassetid://17889471098",

    ["10469630950"] = "rbxassetid://17889461810",

    ["10469493270"] = "rbxassetid://17889458563",

}


local queue = {}

local isAnimating = false


local function playReplacementAnimation(animationId)

    if isAnimating then

        table.insert(queue, animationId)

        return

    end

   

    isAnimating = true

    local replacementAnimationId = replacementAnimations[tostring(animationId)]

    if replacementAnimationId then

        local AnimAnim = Instance.new("Animation")

        AnimAnim.AnimationId = replacementAnimationId

        local Anim = humanoid:LoadAnimation(AnimAnim)

        Anim:Play()

       

        Anim.Stopped:Connect(function()

            isAnimating = false

            if #queue > 0 then

                local nextAnimationId = table.remove(queue, 1)

                playReplacementAnimation(nextAnimationId)

            end

        end)

    else

        isAnimating = false

    end

end


local function stopSpecificAnimations()

    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do

        local animationId = tonumber(track.Animation.AnimationId:match("%d+"))

        if animationIdsToStop[animationId] then

            track:Stop()

        end

    end

end


local function onAnimationPlayed(animationTrack)

    local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))

    if animationIdsToStop[animationId] then

        stopSpecificAnimations()

        animationTrack:Stop()

       

        local replacementAnimationId = replacementAnimations[tostring(animationId)]

        if replacementAnimationId then

            playReplacementAnimation(animationId)

        end

    end

end


humanoid.AnimationPlayed:Connect(onAnimationPlayed)


local player = game.Players.LocalPlayer

local character = player.Character or player.Chacter or player.CharacterAdded:Wait()

local humanoidRootPart = character:WaitForChild("HumanoidRootPart")


local function onBodyVelocityAdded(bodyVelocity)

    if bodyVelocity:IsA("BodyVelocity") then

        bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)

    end

end


character.DescendantAdded:Connect(onBodyVelocityAdded)


for _, descendant in pairs(character:GetDescendants()) do

    onBodyVelocityAdded(descendant)

end


player.CharacterAdded:Connect(function(newCharacter)

    character = newCharacter

    humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    character.DescendantAdded:Connect(onBodyVelocityAdded)

   

    for _, descendant in pairs(character:GetDescendants()) do

        onBodyVelocityAdded(descendant)

    end

end)local newAnimationId = "16746808371"
local animationIds = { "12447707844" }

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local playerGui = player:WaitForChild("PlayerGui")
local RunService = game:GetService("RunService")
local SoundService = game:GetService("SoundService")

local cinematicGui = Instance.new("ScreenGui")
cinematicGui.Name = "CinematicGui"
cinematicGui.Parent = playerGui

local function createMangaText(parent, text)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Size = UDim2.new(0, 150, 0, 350) 
    billboardGui.AlwaysOnTop = true
    billboardGui.LightInfluence = 0
    billboardGui.Parent = parent

    local borderFrame = Instance.new("Frame")
    borderFrame.Size = UDim2.new(1, 0, 1, 0)
    borderFrame.BackgroundColor3 = Color3.new(1, 1, 1) 
    borderFrame.BorderSizePixel = 5 
    borderFrame.BorderColor3 = Color3.new(0, 0, 0)  
    borderFrame.Parent = billboardGui

    local shadowLabel = Instance.new("TextLabel")
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
    shadowLabel.Parent = borderFrame

    local textLabel = Instance.new("TextLabel")
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
    textLabel.Parent = borderFrame

    return billboardGui
end

local leftText = createMangaText(cinematicGui, "*Laugh*")
local rightText = createMangaText(cinematicGui, "You're such an annoying brat")

leftText.Enabled = false
rightText.Enabled = false

local function updateTextOrientation()
    local head = character:WaitForChild("Head")
    leftText.Adornee = head
    rightText.Adornee = head

    leftText.StudsOffset = Vector3.new(-6, -2, 0)  
    rightText.StudsOffset = Vector3.new(6, -2, 0) 
end

RunService.RenderStepped:Connect(updateTextOrientation)

local soundEffect = Instance.new("Sound")
soundEffect.SoundId = "rbxassetid://6537618720"
soundEffect.Name = "NightmodeSound"
soundEffect.Volume = 15  
soundEffect.Parent = SoundService

local function showTextsAndPlaySound()
    leftText.Enabled = true
    rightText.Enabled = true

    soundEffect:Play()

    task.delay(2, function()
        leftText.Enabled = false
        rightText.Enabled = false
    end)
end

local function stopAnimations()
    for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
        if table.find(animationIds, track.Animation.AnimationId:match("%d+$")) then
            track:Stop()
        end
    end
end

local function playNewAnimation()
    local animation = Instance.new("Animation")
    animation.AnimationId = "rbxassetid://" .. newAnimationId

    local animationTrack = humanoid:LoadAnimation(animation)
    animationTrack:Play()
    animationTrack:AdjustSpeed(1)
end

local function onAnimationTrackStarted(track)
    if table.find(animationIds, track.Animation.AnimationId:match("%d+$")) then
        stopAnimations()
        playNewAnimation()
        showTextsAndPlaySound()
    end
end

humanoid.AnimationPlayed:Connect(onAnimationTrackStarted)

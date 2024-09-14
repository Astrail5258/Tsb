--Move & Ultimate Names

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


ToolName.Text = "Beatdown"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Limitless Round"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Infinity Slam"


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

                textLabel.Text = "LIMITLESS"

            end

        end

    end

end


playerGui.DescendantAdded:Connect(findGuiAndSetText)

findGuiAndSetText()

--[[Animations]]

--[[MOVE 1 ANIM]]

local animationId = 10468665991

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function onAnimationPlayed(animationTrack)
    if animationTrack.Animation.AnimationId == "rbxassetid://" .. animationId then
        -- Stop all playing animations
        for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
            animTrack:Stop()
        end

        -- Play new animation
        local newAnim = Instance.new("Animation")
        newAnim.AnimationId = "rbxassetid://17278415853"
        local loadedAnim = humanoid:LoadAnimation(newAnim)

        local startTime = 8.7
        loadedAnim:Play()
        loadedAnim:AdjustSpeed(0)
        loadedAnim.TimePosition = startTime
        loadedAnim:AdjustSpeed(4)

        delay(9.4, function()
            loadedAnim:Stop()
        end)
 
       -- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sound")

-- Set the Sound ID (example Sound ID from Roblox library)
sound.SoundId = "rbxassetid://1177475221"  -- Replace with your Sound ID

-- Set other properties for the sound
sound.Volume = 0.7
sound.Looped = false  -- Set to true if you want the sound to loop
sound.PlayOnRemove = false

-- Set the playback speed (change speed here)
local playbackSpeed = 1.2 -- Adjust playback speed (1 = normal, 1.5 = faster, 0.5 = slower)
sound.PlaybackSpeed = playbackSpeed

-- Parent the sound to the player's PlayerGui so it plays locally
sound.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

wait(0)

-- Play the sound
sound:Play()

-- Optionally, destroy the sound after it finishes playing
sound.Ended:Connect(function()
    sound:Destroy()
end)

-- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sound")

-- Set the Sound ID (example Sound ID from Roblox library)
sound.SoundId = "rbxassetid://15513083749"  -- Replace with your Sound ID

-- Set other properties for the sound
sound.Volume = 2
sound.Looped = false  -- Set to true if you want the sound to loop
sound.PlayOnRemove = false

-- Set the playback speed (change speed here)
local playbackSpeed = 1 -- Adjust playback speed (1 = normal, 1.5 = faster, 0.5 = slower)
sound.PlaybackSpeed = playbackSpeed

-- Parent the sound to the player's PlayerGui so it plays locally
sound.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

wait(0.5)

-- Play the sound
sound:Play()

-- Optionally, destroy the sound after it finishes playing
sound.Ended:Connect(function()
    sound:Destroy()
end)

wait(0)

-- LocalScript inside StarterGui or StarterPlayerScripts

local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.IgnoreGuiInset = true  -- Covers the full screen, ignoring UI inset
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Function to create a black flash effect that fills the screen
local function showBlackFlashEffect(duration)
    -- Create a new Frame for the black flash effect
    local blackFrame = Instance.new("Frame")
    blackFrame.Size = UDim2.new(1, 0, 1, 0)  -- Full-screen coverage
    blackFrame.Position = UDim2.new(0, 0, 0, 0)  -- Top-left corner
    blackFrame.BackgroundColor3 = Color3.new(255,0,0)  -- Black color
    blackFrame.BorderSizePixel = 0  -- No border
    blackFrame.BackgroundTransparency = 0  -- Fully opaque initially
    blackFrame.ZIndex = 10  -- Ensure itвЂ™s on top of other UI elements

    -- Add the black frame to the screen
    blackFrame.Parent = screenGui

    -- Fade out the black frame over time
    for i = 1, 10 do
        blackFrame.BackgroundTransparency = i * 0.1
        wait(duration / 0)
    end

    -- Remove the black frame after the effect finishes
    blackFrame:Destroy()
end

-- Function to trigger the black flash
local function onBlackFlashTriggered()
    -- Play the black flash effect for 0.5 seconds (adjust as needed)
    showBlackFlashEffect(0.2)

    -- Additional code for the move can be added here if needed
    print("Black Flash triggered!")
end

-- Trigger the black flash effect
onBlackFlashTriggered()  -- Replace with your trigger logic (e.g., move execution)

     wait(0)

        -- Clone and emit particles on the head
        local final1 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
        final1.Parent = player.Character.Head
        for _, child in ipairs(final1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(3) -- Emit 7 particles
            end
        end

        -- Clone and emit particles on the torso
        local final4 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
        final4.Parent = player.Character.Torso
        for _, child in ipairs(final4:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(3) -- Emit 3 particles
            end
        end
    end
end

-- Connect the function to humanoid's animation played event
humanoid.AnimationPlayed:Connect(onAnimationPlayed)

--[[END OF MOVE 1 ANIM]]

--[[Move 2]]


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

AnimAnim.AnimationId = "rbxassetid://18896229321"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0.6


Anim:Play()

Anim:AdjustSpeed(0.5)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1.6)


delay(2, function()

    Anim:Stop()

end)

-- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sound")

-- Set the Sound ID (example Sound ID from Roblox library)
sound.SoundId = "rbxassetid://17799049330"  -- Replace with your Sound ID

-- Set other properties for the sound
sound.Volume = 1
sound.Looped = false  -- Set to true if you want the sound to loop
sound.PlayOnRemove = false

-- Set the playback speed (change speed here)
local playbackSpeed = 1  -- Adjust playback speed (1 = normal, 1.5 = faster, 0.5 = slower)
sound.PlaybackSpeed = playbackSpeed

-- Parent the sound to the player's PlayerGui so it plays locally
sound.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Play the sound
sound:Play()

-- Optionally, destroy the sound after it finishes playing
sound.Ended:Connect(function()
    sound:Destroy()
end)

    end

end

--[[END OF MOVE 2 ANIM]]

--[[Move 3]]


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

AnimAnim.AnimationId = "rbxassetid://18896229321"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 4.7


Anim:Play()

Anim:AdjustSpeed(1)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1.5)


delay(10, function()

    Anim:Stop()

end)

-- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sound")

-- Set the Sound ID (example Sound ID from Roblox library)
sound.SoundId = "rbxassetid://7058337852"  -- Replace with your Sound ID

-- Set other properties for the sound
sound.Volume = 1
sound.Looped = false  -- Set to true if you want the sound to loop
sound.PlayOnRemove = false

-- Set the playback speed (change speed here)
local playbackSpeed = 0.9  -- Adjust playback speed (1 = normal, 1.5 = faster, 0.5 = slower)
sound.PlaybackSpeed = playbackSpeed

-- Parent the sound to the player's PlayerGui so it plays locally
sound.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Play the sound
sound:Play()

-- Optionally, destroy the sound after it finishes playing
sound.Ended:Connect(function()
    sound:Destroy()
end)

    end

end

--[[END OF MOVE 3 ANIM]]

--[[Move 4]]


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

AnimAnim.AnimationId = "rbxassetid://18464362124"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 1.6


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(2)

delay(1.9, function()

    Anim:Stop()

end)

-- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sound")

-- Set the Sound ID (example Sound ID from Roblox library)
sound.SoundId = "rbxassetid://16139752852"  -- Replace with your Sound ID

-- Set other properties for the sound
sound.Volume = 3.5
sound.Looped = false  -- Set to true if you want the sound to loop
sound.PlayOnRemove = false

-- Set the playback speed (change speed here)
local playbackSpeed = 1.4  -- Adjust playback speed (1 = normal, 1.5 = faster, 0.5 = slower)
sound.PlaybackSpeed = playbackSpeed

-- Parent the sound to the player's PlayerGui so it plays locally
sound.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Play the sound
sound:Play()

-- Optionally, destroy the sound after it finishes playing
sound.Ended:Connect(function()
    sound:Destroy()
end)

-- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sound")

-- Set the Sound ID (example Sound ID from Roblox library)
sound.SoundId = "rbxassetid://12376570241"  -- Replace with your Sound ID

-- Set other properties for the sound
sound.Volume = 2.7
sound.Looped = false  -- Set to true if you want the sound to loop
sound.PlayOnRemove = false

-- Set the playback speed (change speed here)
local playbackSpeed = 1.4  -- Adjust playback speed (1 = normal, 1.5 = faster, 0.5 = slower)
sound.PlaybackSpeed = playbackSpeed

-- Parent the sound to the player's PlayerGui so it plays locally
sound.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

wait(0.6)

-- Play the sound
sound:Play()

-- Optionally, destroy the sound after it finishes playing
sound.Ended:Connect(function()
    sound:Destroy()
end)

    end

end

--[[END OF MOVE 4 ANIM]]

--[[Wall combo]]

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

--[[END OF WALL COMBO ANIM]]

--[[Ult Move 1]]

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

AnimAnim.AnimationId = "rbxassetid://13071982935"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play(0)

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(0.3)

delay(20, function()

    Anim:Stop()

end)

    end

end

--[[END OF ULT MOVE 1 ANIM]]

--[[Ult Move 2]]


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

AnimAnim.AnimationId = "rbxassetid://18897118507"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 2


Anim:Play()

Anim:AdjustSpeed(0.5)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)


    end

end

--[[END OF ULT MOVE 2 ANIM]]

--[[Ult Move 3]]


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

AnimAnim.AnimationId = "rbxassetid://16719107050"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(1)

Anim.TimePosition = startTime

Anim:AdjustSpeed(0.3)


delay(20, function()

    Anim:Stop()

end)


    end

end

--[[END OF ULT MOVE 3 ANIM]]

--[[Ult Move 4]]


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


local AnimAnim = Instance.new("Animation")

AnimAnim.AnimationId = "rbxassetid://18459183268"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(1)

-- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sound")

-- Set the Sound ID (example Sound ID from Roblox library)
sound.SoundId = "rbxassetid://1177475221"  -- Replace with your Sound ID

-- Set other properties for the sound
sound.Volume = 1
sound.Looped = false  -- Set to true if you want the sound to loop
sound.PlayOnRemove = false

-- Set the playback speed (change speed here)
local playbackSpeed = 0.7  -- Adjust playback speed (1 = normal, 1.5 = faster, 0.5 = slower)
sound.PlaybackSpeed = playbackSpeed

-- Parent the sound to the player's PlayerGui so it plays locally
sound.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Play the sound
sound:Play()

-- Optionally, destroy the sound after it finishes playing
sound.Ended:Connect(function()
    sound:Destroy()
end)

    end

end

--[[END OF ULT MOVE 4 ANIM]]

--[[Ult Activation]]

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

AnimAnim.AnimationId = "rbxassetid://16065180813"

local Anim = Humanoid:LoadAnimation(AnimAnim)


local startTime = 0


Anim:Play()

Anim:AdjustSpeed(0)

Anim.TimePosition = startTime

Anim:AdjustSpeed(0.6)

delay(10, function()

    Anim:Stop()

end)

-- LocalScript inside StarterGui or StarterPlayerScripts

-- Create a new sound object
local sound = Instance.new("Sou

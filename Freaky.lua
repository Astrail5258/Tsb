-- Function to set move name on the hotbar
local function setMoveName(moveNumber, moveName)
    local player = game.Players.LocalPlayer
    local playerGui = player.PlayerGui
    local hotbar = playerGui:FindFirstChild("Hotbar")
    local backpack = hotbar:FindFirstChild("Backpack")
    local hotbarFrame = backpack:FindFirstChild("Hotbar")
    local baseButton = hotbarFrame:FindFirstChild(tostring(moveNumber)).Base
    local toolName = baseButton.ToolName
    toolName.Text = moveName
end

-- Set all moves' names
setMoveName(1, "BUSSING OUT")
setMoveName(2, "MUDA MUDA MUDA")
setMoveName(3, "KICKABLE")
setMoveName(4, "INFINITY")

-- Function to play animations
local function playMoveAnimation(moveId, animationId, speed, stopAfter)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")

    humanoid.AnimationPlayed:Connect(function(animationTrack)
        if animationTrack.Animation.AnimationId == "rbxassetid://" .. moveId then
            for _, animTrack in pairs(humanoid:GetPlayingAnimationTracks()) do
                animTrack:Stop()
            end

            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://" .. animationId
            local loadedAnim = humanoid:LoadAnimation(anim)

            loadedAnim:Play()
            loadedAnim:AdjustSpeed(speed)
            
            if stopAfter then
                delay(stopAfter, function()
                    loadedAnim:Stop()
                end)
            end
        end
    end)
end

-- Playing animations for each move
playMoveAnimation(10468665991, 13633468484, 1)    -- Move 1
playMoveAnimation(10466974800, 18896229321, 2.5)    -- Move 2
playMoveAnimation(10471336737, 15091452031, 1.7)    -- Move 3
playMoveAnimation(12510170988, 18459183268, 1)    -- Move 4
playMoveAnimation(118614546390, 18614546390 , 1)    -- Ultimate move 1
playMoveAnimation(11365563255,
17278415853 , 1)    -- Ultimate move 2
playMoveAnimation(12983333733, 16719107050, 1)    -- Ultimate move 3
playMoveAnimation(13927612951, 16515850153, 1)    -- Ultimate move 4

-- Additional moves
playMoveAnimation(10479335397, 15295895753, 1.3, 1.8)  -- Dash
playMoveAnimation(10503381238, 14900168720, 0.7, nil)  -- Uppercut
playMoveAnimation(10470104242, 12447247483, 6, nil)    -- Downslam
playMoveAnimation(10470389827 , 15020965094, 1, nil)    -- idk

-- Function to set ultimate move
local function setUltimateName(ultimateName)
    local player = game.Players.LocalPlayer
    local playerGui = player:WaitForChild("PlayerGui")
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    
    if screenGui then
        local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
        if magicHealthFrame then
            local textLabel = magicHealthFrame:FindFirstChild("TextLabel")
            if textLabel then
                textLabel.Text = ultimateName
            end
        end
    end
end

-- Set ultimate name
setUltimateName("IM GONNA BE FREAKY😛")

-- Animation for Ult Activation
playMoveAnimation(12447707844, 16065180813, 1)  -- Ultimate Activation

-- TOOL FAST

local tool = Instance.new("Tool")
tool.Name = "GOTTA GO FAST"

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Transparency = 1
handle.CanCollide = false
handle.Parent = tool

local soundId = "rbxassetid://your_sound_id_here"
local sound = Instance.new("Sound")
sound.SoundId = soundId
sound.Parent = tool

local animationId = "rbxassetid://18897115785"

local function onEquipped()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        local humanoid = character:WaitForChild("Humanoid")
        local rootPart = character:WaitForChild("HumanoidRootPart")

        rootPart.Anchored = false

        local animation = Instance.new("Animation")
        animation.AnimationId = animationId
        local animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play()
        animationTrack:AdjustSpeed(1)

        sound:Play()

        -- Movement logic
        local initialSpeed = 0.5
        local finalSpeed = 3
        local moveSpeed = 250
        local speed = initialSpeed
        local changeTime = 2.3
        local elapsedTime = 0

        local runService = game:GetService("RunService")
        local moveConnection

        local function startMoving()
            moveConnection = runService.RenderStepped:Connect(function(deltaTime)
                elapsedTime = elapsedTime + deltaTime
                if elapsedTime >= changeTime then
                    moveSpeed = 350
                end

                local lookVector = rootPart.CFrame.LookVector
                local newVelocity = lookVector * moveSpeed * speed

                rootPart.Velocity = newVelocity
            end)
        end

        local function stopMoving()
            if moveConnection then
                moveConnection:Disconnect()
                moveConnection = nil
                speed = initialSpeed -- Reset speed for the next use
                elapsedTime = 0 -- Reset elapsed time
                rootPart.Velocity = Vector3.new(0, 0, 0) -- Stop the movement
            end
        end

        animationTrack.Stopped:Connect(stopMoving)
        startMoving()

        tool.Unequipped:Connect(function()
            print("your unequipped text here")
            stopMoving()
            animationTrack:Stop() -- Ensure animation stops when tool is unequipped
            sound:Stop() -- Stop the sound as well
        end)
    end
end

tool.Equipped:Connect(onEquipped)

tool.Parent = game.Players.LocalPlayer.Backpack

-- animation sound and effect


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

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
character:WaitForChild("HumanoidRootPart")
character.HumanoidRootPart.CFrame = character.HumanoidRootPart.CFrame * CFrame.new(0, 150, 0)

-- Get player and camera references
local player = game.Players.LocalPlayer

-- Duration and settings for the cutscene
local cutsceneDuration = 1

-- Function to perform the spinning cutscene
local function startCutscene()
    local startTime = tick()
    local endTime = startTime + cutsceneDuration

    while tick() < endTime do
        -- Calculate the elapsed time and rotation angle
        local elapsedTime = tick() - startTime
    

        -- Apply the rotation to the camera

        -- Yield to the next frame
        wait()
    end

    -- Reset the camera's CFrame to the original state (optional)
end

-- Start the cutscene when the script runs
startCutscene()

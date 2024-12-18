-- Initialize variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local tool = Instance.new("Tool")

-- Tool properties
tool.RequiresHandle = false
tool.Name = "Overflowing Cursed Energy" -- Updated tool name

-- Cooldown variables
local cooldownActive = false
local cooldownTime = 5 -- 5 seconds

-- Animation setup
local animationId = "rbxassetid://15957361339"
local animation = Instance.new("Animation")
animation.AnimationId = animationId
local animator

-- Function to find the closest player
local function getClosestPlayer()
    local closestPlayer = nil
    local closestDistance = math.huge -- Start with a large distance

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).magnitude
            if distance < closestDistance then
                closestDistance = distance
                closestPlayer = player
            end
        end
    end

    return closestPlayer
end

tool.Activated:Connect(function()
    if not cooldownActive then
        cooldownActive = true

        -- Play the animation
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            local humanoid = LocalPlayer.Character.Humanoid
            animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)
            humanoid:LoadAnimation(animation):Play()
        end
        
        -- Get the closest player
        local closestPlayer = getClosestPlayer()
        
        if closestPlayer and closestPlayer.Character and closestPlayer.Character:FindFirstChild("HumanoidRootPart") then
            -- Calculate the position behind the closest player
            local playerPosition = closestPlayer.Character.HumanoidRootPart.Position
            local behindPosition = playerPosition - (closestPlayer.Character.HumanoidRootPart.CFrame.LookVector * 5) -- Teleport 5 studs behind the player
            
            -- Teleport the player
            LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(behindPosition)

            -- Start cooldown
            wait(cooldownTime) -- Wait for cooldown
            cooldownActive = false -- Cooldown is over
        else
            print("No nearby players to teleport behind.")
            cooldownActive = false -- Ensure cooldown is over if no players are found
        end
    else
        print("Tool is on cooldown. Please wait.")
    end
end)

-- Parent the tool to the player's Backpack
tool.Parent = LocalPlayer.Backpack

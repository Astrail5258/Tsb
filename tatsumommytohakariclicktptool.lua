-- Initialize variables
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()
local tool = Instance.new("Tool")

-- Tool properties
tool.RequiresHandle = false
tool.Name = "Grade One Sorcerer" -- Updated tool name

-- Cooldown variables
local cooldownActive = false
local cooldownTime = 5 -- 5 seconds

-- Animation setup
local animationId = "rbxassetid://15957361339"
local animation = Instance.new("Animation")
animation.AnimationId = animationId
local animator

tool.Activated:Connect(function()
    if not cooldownActive then
        cooldownActive = true

        -- Play the animation
        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") then
            local humanoid = LocalPlayer.Character.Humanoid
            animator = humanoid:FindFirstChildOfClass("Animator") or Instance.new("Animator", humanoid)
            humanoid:LoadAnimation(animation):Play()
        end

        -- Get the desired position
        local pos = mouse.Hit + Vector3.new(0, 2.5, 0)
        pos = CFrame.new(pos.X, pos.Y, pos.Z)

        -- Teleport the player
        LocalPlayer.Character.HumanoidRootPart.CFrame = pos
        
        -- Start cooldown
        wait(cooldownTime) -- Wait for 5 seconds
        cooldownActive = false -- Cooldown is over
    else
        print("Tool is on cooldown. Please wait.")
    end
end)

-- Parent the tool to the player's Backpack
tool.Parent = LocalPlayer.Backpack

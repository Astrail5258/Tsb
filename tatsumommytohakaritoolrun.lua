local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Tool = Instance.new("Tool")
Tool.RequiresHandle = true
Tool.Name = "Energy Outburst"

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Size = Vector3.new(1, 1, 1) -- Настройте размер по необходимости
handle.Transparency = 1
handle.Anchored = false
handle.CanCollide = false
handle.Parent = Tool

Tool.Parent = LocalPlayer.Backpack

local running = false
local animator
local runAnimation = Instance.new("Animation")
runAnimation.AnimationId = "rbxassetid://18897115785"
local animationTrack

local function startRunning(character)
    running = true
    
    if character:FindFirstChild("Humanoid") then
        animator = character:FindFirstChild("Humanoid"):FindFirstChildOfClass("Animator")
        if not animator then
            animator = Instance.new("Animator")
            animator.Parent = character:FindFirstChild("Humanoid")
        end
        
        animationTrack = animator:LoadAnimation(runAnimation)
        animationTrack:Play()
    end

    while running do
        wait(0.1) -- Обновление каждую 0.1 секунду

        if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local humanoidRootPart = LocalPlayer.Character.HumanoidRootPart
            local camera = workspace.CurrentCamera

            local direction = camera.CFrame.LookVector
            direction = Vector3.new(direction.X, 0, direction.Z).unit -- Игнорируем вертикальную составляющую
            local moveSpeed = 150 -- Увеличиваем скорость бега

            humanoidRootPart.Velocity = direction * moveSpeed
        end
    end
end

local function stopRunning()
    running = false

    if animationTrack then
        animationTrack:Stop()
        animationTrack = nil
    end

    if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = LocalPlayer.Character.HumanoidRootPart
        humanoidRootPart.Velocity = Vector3.new(0, 0, 0) -- Сброс скорости в ноль, чтобы остановить движение
    end
end

Tool.Equipped:Connect(function()
    local character = LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        startRunning(character) -- Начинаем бег
    end
end)

Tool.Unequipped:Connect(function()
    stopRunning() -- Останавливаем бег
end)

-- Убедитесь, что игрок получает этот инструмент
Tool.Parent = LocalPlayer.Backpack 

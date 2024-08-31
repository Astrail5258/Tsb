local player = game.Players.LocalPlayer
repeat wait() until player.Character
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Define the messages you want to send
local messages = {"Come as close as you like.", "However... this is the last time!"}

-- Function to send messages to the chat
local function sendMessage(text)
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end

-- Send each message one time with a 1-second delay
for _, message in ipairs(messages) do
    sendMessage(message)
    wait(1.7) -- Wait 1 second before sending the next message
end
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

    -- Set initial color to yellow
    imageLabel.ImageColor3 = Color3.fromRGB(255, 0, 0) -- Red

    -- Smooth transition from Red to Dark Red
    tweenColor(imageLabel, Color3.fromRGB(255, 0, 0), Color3.fromRGB(214, 4, 4), 2)
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


ToolName.Text = "Ult name change test wawa"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("2").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Ravage"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("3").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Swift Sweep"


local player = game.Players.LocalPlayer

local playerGui = player.PlayerGui

local hotbar = playerGui:FindFirstChild("Hotbar")

local backpack = hotbar:FindFirstChild("Backpack")

local hotbarFrame = backpack:FindFirstChild("Hotbar")

local baseButton = hotbarFrame:FindFirstChild("4").Base

local ToolName = baseButton.ToolName


ToolName.Text = "Stoic Bomb"


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

                textLabel.Text = "20 SERIES"

            end

        end

    end

end


playerGui.DescendantAdded:Connect(findGuiAndSetText)

findGuiAndSetText()

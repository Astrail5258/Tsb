local player = game.Players.LocalPlayer
repeat wait() until player.Character
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Define the messages you want to send
local messages = {"Domain expansion...", "Malevolent shrine!"}

-- Function to send messages to the chat
local function sendMessage(text)
    ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(text, "All")
end

-- Send each message one time with a 1-second delay
for _, message in ipairs(messages) do
    sendMessage(message)
    wait(2) -- Wait 2 seconds before sending the next message
end

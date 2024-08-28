local ScreenGui2 = Instance.new("ScreenGui2")
local Frame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")

ScreenGui2.Name = "UI"
ScreenGui2.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Size = UDim2.new(0.8, 0, 0.6, 0)
Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.Parent = ScreenGui

TitleLabel.Size = UDim2.new(1, 0, 0.2, 0)
TitleLabel.Position = UDim2.new(0, 0, 0, 0)
TitleLabel.Text = "Welcome to Astra-hub!"
TitleLabel.BackgroundTransparency = 1
TitleLabel.TextColor3 = Color3.fromRGB(160, 32, 240)
TitleLabel.Font = Enum.Font.GothamBold
TitleLabel.TextSize = 28
TitleLabel.Parent = Frame

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.9, 0, 0.2, 0)
Button.Position = UDim2.new(0.05, 0, 0.3, 0)
Button.Text = "Enter"
Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Button.TextColor3 = Color3.fromRGB(160, 36, 240)
Button.Font = Enum.Font.GothamSemibold
Button.TextSize = 24
Button.Parent = Frame

Button.MouseButton1Click:Connect(function()
    ScreenGui2:Destroy()
    loadstring(game:HttpGet("https://githubusercontent.com/Astrail5258/Tsb/Scripts/AstraHubMain"))()
end)

local UICornerButton = Instance.new("UICorner")
UICornerButton.CornerRadius = UDim.new(0, 10)
UICornerButton.Parent = Button

local UICornerFrame = Instance.new("UICorner")
UICornerFrame.CornerRadius = UDim.new(0, 15)
UICornerFrame.Parent = Frame

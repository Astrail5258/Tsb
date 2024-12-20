local Library = loadstring(game: HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(30, 30, 30),
    Background = Color3.fromRGB(0, 0, 0),
    Header = Color3.fromRGB(0, 0, 0),
    TextColor = Color3.fromRGB(255, 255, 255),
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("Roblox GEF script | AstraHub | by Astrail", colors)
local Items = Window:NewTab("Tp to items")
local Weapons = Items:NewSection("Weapons")
Weapons:NewButton("Bat", "Teleport to bat", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Bat.CFrame
end)
Weapons:NewButton("Crowbar", "Teleport to crowbar", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Crowbar.CFrame
end)
Weapons:NewButton("Pistol", "Teleport to pistol", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Handgun.CFrame
end)
Weapons:NewButton("Shotgun", "Teleport to shotgun", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Shotgun.CFrame
end)

local Ammo = Items:NewSection("Ammo")
Ammo:NewButton("Shells", "Teleport to shells", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Shells.CFrame
end)

local Consumables = Items:NewSection("Consumables")
Consumables:NewButton("Medkit", "Teleport to medkit", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Medkit.CFrame
end)
Consumables:NewButton("Food", "Teleport to food", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Food.CFrame
end)
Consumables:NewButton("Soda", "Teleport to soda", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Soda.CFrame
end)

local Other = Items:NewSection("Other")
Other:NewButton("GPS", "Teleport to GPS", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.GPS.CFrame
end)
Other:NewButton("Money", "Teleport to money", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Money.CFrame
end)
Other:NewButton("Lantern", "Teleport to lantern", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Lantern.CFrame
end)
Other:NewButton("Hammer", "Teleport to hammer", function()
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = game:GetService("Workspace").Pickups.Hammer.CFrame
end)

local Esp = Window:NewTab("ESP")
local Highlights = Esp:NewSection("ESP")
Highlights:NewButton("ESP GEFs", "Highlights all the existing GEFs", function()
    local espEnabled = true -- ตั้งค่าเป็น true เพื่อให้ ESP ทำงานทันที

    -- ฟังก์ชันสำหรับสร้าง ESP สำหรับ Hurtbox
    local function createESPForHurtbox(part)
        local espGui = Instance.new("BillboardGui", part)
        espGui.Adornee = part
        espGui.Size = UDim2.new(0, 200, 0, 50)
        espGui.AlwaysOnTop = true
        espGui.StudsOffset = Vector3.new(0, 3, 0)

        local nameLabel = Instance.new("TextLabel", espGui)
        nameLabel.Text = "GEF"
        nameLabel.BackgroundTransparency = 1
        nameLabel.Size = UDim2.new(0, 200, 0, 20)
        nameLabel.Font = Enum.Font.SourceSansBold
        nameLabel.TextSize = 18

        local distanceLabel = Instance.new("TextLabel", espGui)
        distanceLabel.BackgroundTransparency = 1
        distanceLabel.Size = UDim2.new(0, 200, 0, 20)
        distanceLabel.Font = Enum.Font.SourceSansBold
        distanceLabel.TextSize = 18
        distanceLabel.Position = UDim2.new(0, 0, 0, 20)

        -- อัปเดตระยะห่างและสีข้อความ
        game:GetService("RunService").RenderStepped:Connect(function()
            local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - part.Position).magnitude
            distanceLabel.Text = string.format("Distance: %.2f", distance)

            if distance < 50 then
                nameLabel.TextColor3 = Color3.new(1, 0.5, 0)
                distanceLabel.TextColor3 = Color3.new(1, 0.5, 0)
            elseif distance < 100 then
                nameLabel.TextColor3 = Color3.new(1, 1, 0)
                distanceLabel.TextColor3 = Color3.new(1, 1, 0)
            else
                nameLabel.TextColor3 = Color3.new(0, 1, 0)
                distanceLabel.TextColor3 = Color3.new(0, 1, 0)
            end
        end)
    end

    -- ฟังก์ชันสำหรับการเปิด/ปิด ESP และอัปเดต Hurtbox ทุก ๆ 60 วินาที
    local function toggleESP()
        while espEnabled do
            for _, part in pairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and part.Name == "Hurtbox" then
                    if not part:FindFirstChildOfClass("BillboardGui") then
                        createESPForHurtbox(part)
                    end
                end
            end
            wait(60) -- รอ 60 วินาทีก่อนที่จะทำการลูปใหม่
        end
    end

    -- เรียกใช้ฟังก์ชัน toggleESP ทันทีเมื่อปุ่มถูกคลิก
    toggleESP()
end)
Highlights:NewButton("ESP players", "Highlights all the existing players", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
end)

local Misc = Window:NewTab("Miscellaneous")
local Random = Misc:NewSection("Miscellaneous")
Random:NewButton("Infinite yield", "Loads infinite yield script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
Random:NewButton("Fullbright", "Loads fullbright script", function()
    local function setFullbright()
        local lighting = game:GetService("Lighting")
        lighting.Brightness = 1
        lighting.Ambient = Color3.new(1, 1, 1)
        lighting.GlobalShadows = false
        lighting.FogStart = 0
        lighting.FogEnd = 100000
        lighting.FogColor = Color3.new(1, 1, 1)
    end

    setFullbright()
end)
Random:NewButton("Reach", "Sets reach to 20. Still WIP", function()
    for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if v:IsA("Tool") then
            local selectionBox = Instance.new("SelectionBox", v.Handle)
            selectionBox.Adornee = v.Handle
            v.Handle.Size = Vector3.new(20, 20, 20)
            v.GripPos = Vector3.new(0, 0, 0)
        end
    end
end)

local Settings = Window:NewTab("Settings")
local Customization = Settings:NewSection("UI Customization")

local themes = {
    SchemeColor = colors.SchemeColor,
    Background = colors.Background,
    Header = colors.Header,
    TextColor = colors.TextColor,
    ElementColor = colors.ElementColor
}

for theme, color in pairs(themes) do
    Customization:NewColorPicker(theme, "Change your " .. theme, color, function(color3)
        Library:ChangeColor(theme, color3)
    end)
end
-- Создаем ScreenGui для кнопки Toggle
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Создаем квадратную кнопку для включения/выключения интерфейса слева
local isOpen = true
local ToggleButton = Instance.new("TextButton")
ToggleButton.Size = UDim2.new(0, 50, 0, 50) -- Размер кнопки
ToggleButton.Position = UDim2.new(0, 10, 0.5, -25) -- Позиция слева по центру
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Зеленый цвет
ToggleButton.Text = "Astra Hub" -- Текст на кнопке
ToggleButton.TextColor3 = Color3.fromRGB(160, 32, 240) -- Цвет текста
ToggleButton.Parent = ScreenGui

-- Обработчик нажатия на кнопку
ToggleButton.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/GEF.lua'))()
end)
if game.PlaceId == 15135285305 then
    createScript()
end

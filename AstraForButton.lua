local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local colors = {
    SchemeColor = Color3.fromRGB(30, 30, 30), 
    Background = Color3.fromRGB(0, 0, 0), 
    Header = Color3.fromRGB(0, 0, 0), 
    TextColor = Color3.fromRGB(255, 255, 255), 
    ElementColor = Color3.fromRGB(20, 20, 20)
}
local Window = Library.CreateLib("Astra hub | by astrail | The strongest battlegrounds", colors)
local CustomCharacters = Window:NewTab("Custom Movesets")
local SaitamaSection = CustomCharacters:NewSection("Saitama")
SaitamaSection:NewButton("KJ", "BY ASTRAIL", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/KJ2tsbBYastrail.lua'))()
end)
local Animations = Window:NewTab("Animations")
local SpawnAnimations = Animations:NewSection("Spawn Animations")
SpawnAnimations:NewButton("The Strongest Hero", "Runs the strongest hero's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957366251"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
SpawnAnimations:NewButton("Hero Hunter", "Runs hero hunter's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957376722"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
SpawnAnimations:NewButton("Destructive Cyborg", "Runs destructive cyborg's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957374019"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
SpawnAnimations:NewButton("Deadly Ninja", "Runs deadly ninja's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957361339"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
SpawnAnimations:NewButton("Brutal Demon", "Runs brutal demon's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15957371124"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
SpawnAnimations:NewButton("Blade Master", "Runs blade master's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://15983615423"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
SpawnAnimations:NewButton("Martial Artist", "Runs martial artist's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18435303746"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
SpawnAnimations:NewButton("KJ", "Runs KJ's spawn animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://17325160621"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
local Effects = Animations:NewSection("Effects")
Effects:NewButton("Black Flash", "Runs the black flash effect upon clicking", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/kMZJF27h"))()
end)
local UltAnims = Animations:NewSection("Ultimate animations")
UltAnims:NewButton("The Strongest Hero", "Runs the strongest hero's serious mode ultimate animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://12447707844"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
UltAnims:NewButton("Hero Hunter", "Runs hero hunter's rampage ultimate animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://12342141464"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
UltAnims:NewButton("Destructive Cyborg", "Runs destructive cyborg's maximum energy output ultimate animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://12772543293"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)

UltAnims:NewButton("Deadly Ninja", "Runs deadly ninja's can you even see me? ultimate animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://13499771836"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()
wait(2.3)
game.Players.LocalPlayer.Character.Head.Transparency = 1
game.Players.LocalPlayer.Character.Torso.Transparency = 1
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 1
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 1
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 1
game.Players.LocalPlayer.Character.Head.face.Transparency = 1
wait(2)
game.Players.LocalPlayer.Character.Head.Transparency = 0
game.Players.LocalPlayer.Character.Torso.Transparency = 0
game.Players.LocalPlayer.Character["Left Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Right Arm"].Transparency = 0
game.Players.LocalPlayer.Character["Left Leg"].Transparency = 0
game.Players.LocalPlayer.Character["Right Leg"].Transparency = 0
game.Players.LocalPlayer.Character.Head.face.Transparency = 0
local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13497875049"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()
end)
UltAnims:NewButton("Brutal Demon", "Runs brutal demon's pumped up ultimate animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14733282425"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
UltAnims:NewButton("Blade Master", "Runs blade master's scorching blade ultimate animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://15391323441"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)
UltAnims:NewButton("Wild Psychic", "Runs wild psychic's berserk ultimate animation upon clicking", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16734584478"

local playAnim = humanoid:LoadAnimation(anim)
playAnim:Play()

end)
UltAnims:NewButton("KJ", "Runs KJ's 20 series ultimate animation upon clicking", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/QSQysq1J"))()
end)
local Emotes = Animations:NewSection("Emotes")
Emotes:NewButton("Applause", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14056379526"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Emotes:NewButton("Kneel", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13721154327"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Emotes:NewButton("L", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18231574269"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Emotes:NewButton("Bully", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14014580605"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Emotes:NewButton("Sleepy", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://14348083862"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Emotes:NewButton("Bring it", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://13801083337"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
Emotes:NewButton("Tornado", " ", function()
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://18459285150"

local playAnim2 = humanoid:LoadAnimation(anim2)
playAnim2:Play()

end)
local Misc = Window:NewTab("Miscellaneous")
local Scripts = Misc:NewSection("Scripts")
Scripts:NewButton("Infinite Yield", "loads infinite yield script upon clicking", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
Scripts:NewButton("Animation Grabber", "loads animation grabber script upon clicking", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Lvl9999/AnimationGrabber/main/Universal"))()
end)
Scripts:NewButton("Remote Spy", "loads remote spy script upon clicking", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()
end)
Scripts:NewButton("Teleport Maker", "loads teleport maker script upon clicking", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GSgUCJmq"))()
end)
Scripts:NewButton("Dark Explorer", "loads dark explorer script upon clicking", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua'))()
end)
local Settings = Window:NewTab("Settings")
local Moveset = Settings:NewSection("Moveset customization")
local plr = game.Players.LocalPlayer
local hotbar = plr.PlayerGui.Hotbar.Backpack.Hotbar
local ult = plr.PlayerGui.ScreenGui.MagicHealth.TextLabel
local ability1 = hotbar:FindFirstChild("1")
local ability2 = hotbar:FindFirstChild("2")
local ability3 = hotbar:FindFirstChild("3")
local ability4 = hotbar:FindFirstChild("4")

Moveset:NewTextBox(ability1.Base.ToolName.Text, "First Move", function(txt)
	ability1.Base.ToolName.Text = txt
end)

Moveset:NewTextBox(ability2.Base.ToolName.Text, "Second Move", function(txt)
	ability2.Base.ToolName.Text = txt
end)

Moveset:NewTextBox(ability3.Base.ToolName.Text, "Third Move", function(txt)
	ability3.Base.ToolName.Text = txt
end)

Moveset:NewTextBox(ability4.Base.ToolName.Text, "Fourth Move", function(txt)
	ability4.Base.ToolName.Text = txt
end)
local UltCustom = Settings:NewSection("Ultimate customization")
UltCustom:NewTextBox(ult.Text, "Ultimate Name", function(txt)
	ult.Text = txt
end)

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
if game.PlaceId == 10449761463 then
    createScript()
end

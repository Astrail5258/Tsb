-- LocalScript in StarterPlayerScripts to use the GUI library
local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Astrail5258/Tsb/Scripts/TestLib.lua"))()

-- Create a background frame with the Sea theme
local mainFrame = GUI.CreateFrame(nil, UDim2.new(0, 400, 0, 500), nil, "Sea")

-- Create a title label
GUI.CreateTextLabel(mainFrame, UDim2.new(1, 0, 0, 50), UDim2.new(0, 0, 0, 0), "Welcome to the Ocean!", "Sea")

-- Create a play button
GUI.CreateButton(mainFrame, UDim2.new(0, 200, 0, 50), UDim2.new(0.5, -100, 0.5, 0), "Dive In!", "Sea", function()
    print("Button clicked! Let's explore!")
end)

-- Create a checkbox
GUI.CreateCheckbox(mainFrame, UDim2.new(0, 0, 0, 60), "Enable Water Effects", "Sea", function(isChecked)
    print("Checkbox state: ", isChecked)
end)

-- Create a dropdown menu
GUI.CreateDropdown(mainFrame, {"Coral Reefs", "Shipwrecks", "Underwater Caves"}, "Sea", function(selectedOption)
    print("You selected: ", selectedOption)
end)

-- Create a progress bar
local updateProgress = GUI.CreateProgressBar(mainFrame, 0, "Sea")
for i = 0, 100, 10 do
    wait(0.5) -- Simulate progress
    updateProgress(i / 100)
end

-- Create a tooltip for the dive button
local tooltip = GUI.CreateTooltip(mainFrame, "Start your underwater adventure!")
tooltip(GUI.CreateButton(mainFrame, UDim2.new(0, 200, 0, 50), UDim2.new(0, 0, 0, 0), "Dive In!", "Sea"))

local GUI = {}

-- Define themes with distinct color palettes
GUI.Themes = {
    Light = {
        BackgroundColor = Color3.fromRGB(255, 255, 255),
        TextColor = Color3.fromRGB(0, 0, 0),
        AccentColor = Color3.fromRGB(0, 120, 255),
        BorderColor = Color3.fromRGB(200, 200, 200),
        ShadowColor = Color3.fromRGB(150, 150, 150),
        GradientColor = Color3.fromRGB(240, 240, 240),
    },
    Dark = {
        BackgroundColor = Color3.fromRGB(50, 50, 50),
        TextColor = Color3.fromRGB(255, 255, 255),
        AccentColor = Color3.fromRGB(0, 170, 0),
        BorderColor = Color3.fromRGB(100, 100, 100),
        ShadowColor = Color3.fromRGB(0, 0, 0),
        GradientColor = Color3.fromRGB(30, 30, 30),
    },
    Sea = {
        BackgroundColor = Color3.fromRGB(173, 216, 230),
        TextColor = Color3.fromRGB(0, 102, 204),
        AccentColor = Color3.fromRGB(0, 204, 204),
        BorderColor = Color3.fromRGB(100, 150, 200),
        ShadowColor = Color3.fromRGB(0, 0, 0),
        GradientColor = Color3.fromRGB(135, 206, 235),
    },
    Amethyst = {
        BackgroundColor = Color3.fromRGB(230, 230, 250),
        TextColor = Color3.fromRGB(148, 0, 211),
        AccentColor = Color3.fromRGB(138, 43, 226),
        BorderColor = Color3.fromRGB(180, 150, 230),
        ShadowColor = Color3.fromRGB(75, 0, 130),
        GradientColor = Color3.fromRGB(186, 85, 211),
    },
    Sunset = {
        BackgroundColor = Color3.fromRGB(255, 204, 204),
        TextColor = Color3.fromRGB(255, 102, 102),
        AccentColor = Color3.fromRGB(255, 153, 51),
        BorderColor = Color3.fromRGB(255, 128, 64),
        ShadowColor = Color3.fromRGB(255, 0, 0),
        GradientColor = Color3.fromRGB(255, 192, 203),
    },
}

-- Helper function to apply styles for UI elements
local function applyStyle(instance, theme)
    local uiCorner = Instance.new("UICorner")
    uiCorner.CornerRadius = UDim.new(0, 10)
    uiCorner.Parent = instance

    local uiStroke = Instance.new("UIStroke")
    uiStroke.Color = theme.BorderColor
    uiStroke.Thickness = 2
    uiStroke.Parent = instance

    -- Add shadows
    local shadowFrame = Instance.new("Frame")
    shadowFrame.BackgroundColor3 = theme.ShadowColor
    shadowFrame.Size = instance.Size + UDim2.new(0, 10, 0, 10)
    shadowFrame.Position = instance.Position + UDim2.new(0, 5, 0, 5)
    shadowFrame.Parent = instance
    shadowFrame.AnchorPoint = instance.AnchorPoint
    shadowFrame.Visible = false

    -- Add gradient background
    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, theme.GradientColor),
        ColorSequenceKeypoint.new(1, theme.BackgroundColor),
    })
    gradient.Parent = instance
end

-- Create a new Frame
function GUI.CreateFrame(parent, size, position, themeName)
    local theme = GUI.Themes[themeName] or GUI.Themes.Light
    parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = size or UDim2.new(0, 200, 0, 100)
    frame.Position = position or UDim2.new(0.5, -100, 0.5, -50)
    frame.BackgroundColor3 = theme.BackgroundColor
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.Parent = parent

    applyStyle(frame, theme)
    return frame
end

-- Create a new Button
function GUI.CreateButton(parent, size, position, text, themeName, callback)
    local theme = GUI.Themes[themeName] or GUI.Themes.Light
    parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local button = Instance.new("TextButton")
    button.Size = size or UDim2.new(0, 100, 0, 50)
    button.Position = position or UDim2.new(0.5, -50, 0.5, -25)
    button.Text = text or "Button"
    button.TextColor3 = theme.TextColor
    button.BackgroundColor3 = theme.AccentColor
    button.AnchorPoint = Vector2.new(0.5, 0.5)
    button.Parent = parent

    applyStyle(button, theme)

    button.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)

    -- Button hover effect
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = theme.HighlightColor or theme.AccentColor:lerp(Color3.fromRGB(255, 255, 255), 0.2)
    end)

    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = theme.AccentColor
    end)

    return button
end

-- Create a new TextLabel
function GUI.CreateTextLabel(parent, size, position, text, themeName)
    local theme = GUI.Themes[themeName] or GUI.Themes.Light
    parent = parent or game.Players.LocalPlayer:WaitForChild("PlayerGui")

    local label = Instance.new("TextLabel")
    label.Size = size or UDim2.new(0, 200, 0, 50)
    label.Position = position or UDim2.new(0.5, -100, 0.5, -25)
    label.Text = text or "Label"
    label.TextColor3 = theme.TextColor
    label.BackgroundColor3 = theme.BackgroundColor
    label.TextSize = 24
    label.TextScaled = true
    label.AnchorPoint = Vector2.new(0.5, 0.5)
    label.Parent = parent

    applyStyle(label, theme)
    return label
end

-- Create a new Checkbox
function GUI.CreateCheckbox(parent, position, text, themeName, callback)
    local checkboxFrame = GUI.CreateFrame(parent, UDim2.new(0, 20, 0, 20), position or UDim2.new(0, 0, 0, 0), themeName)
    local label = GUI.CreateTextLabel(checkboxFrame, UDim2.new(0, 100, 0, 20), UDim2.new(1, 10, 0, 0), text or "Checkbox", themeName)

    local isChecked = false
    checkboxFrame.MouseButton1Click:Connect(function()
        isChecked = not isChecked
        checkboxFrame.BackgroundColor3 = isChecked and label.BackgroundColor3 or GUI.Themes[themeName].BackgroundColor
        if callback then callback(isChecked) end
    end)

    return checkboxFrame
end

-- Create a Dropdown
function GUI.CreateDropdown(parent, options, themeName, callback)
    local dropdownButton = GUI.CreateButton(parent, UDim2.new(0, 200, 0, 50), UDim2.new(0, 0, 0, 0), "Select an option", themeName)
    local dropdownFrame = GUI.CreateFrame(parent, UDim2.new(0, 200, 0, #options * 30), UDim2.new(0, dropdownButton.Position.X.Offset, 0, dropdownButton.Position.Y.Offset + dropdownButton.Size.Y.Offset), themeName)

    dropdownFrame.Visible = false -- Initially hidden

    for i, option in ipairs(options) do
        GUI.CreateButton(dropdownFrame, UDim2.new(1, 0, 0, 30), UDim2.new(0, 0, 0, (i - 1) * 30), option, themeName, function()
            dropdownButton.Text = option
            dropdownFrame.Visible = false
            if callback then callback(option) end
        end)
    end

    dropdownButton.MouseButton1Click:Connect(function()
        dropdownFrame.Visible = not dropdownFrame.Visible
    end)

    return dropdownButton, dropdownFrame
end

-- Create a Progress Bar
function GUI.CreateProgressBar(parent, initialValue, themeName)
    local theme = GUI.Themes[themeName] or GUI.Themes.Light
    local progressBarFrame = GUI.CreateFrame(parent, UDim2.new(0, 400, 0, 20), UDim2.new(0.5, -200, 0, 0), themeName)

    local fillFrame = Instance.new("Frame")
    fillFrame.Size = UDim2.new(initialValue, 0, 1, 0)
    fillFrame.BackgroundColor3 = theme.AccentColor
    fillFrame.Parent = progressBarFrame

    return function(value)
        fillFrame.Size = UDim2.new(math.clamp(value, 0, 1), 0, 1, 0) -- Update size with a new value
    end
end

-- Create a Tooltip
function GUI.CreateTooltip(parent, text)
    local tooltipLabel = Instance.new("TextLabel")
    tooltipLabel.Text = text
    tooltipLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    tooltipLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    tooltipLabel.Size = UDim2.new(0, 100, 0, 30)
    tooltipLabel.Visible = false
    tooltipLabel.Parent = parent

    return function(target)
        target.MouseEnter:Connect(function()
            tooltipLabel.Position = UDim2.new(0, target.AbsolutePosition.X, 0, target.AbsolutePosition.Y - 40)
            tooltipLabel.Visible = true
        end)
        target.MouseLeave:Connect(function()
            tooltipLabel.Visible = false
        end)
    end
end

-- Animation function
function GUI.CreateAnimation(element, showDuration, hideDuration)
    local function animateShow()
        element.Position = UDim2.new(0, -element.Size.X.Offset, 0, 0)
        element.Visible = true
        for i = 0, 100 do
            element.Position = UDim2.new(0, i / 100 * element.Size.X.Offset, 0, 0)
            wait(showDuration / 100)
        end
    end

    local function animateHide()
        for i = 0, 100 do
            element.Position = UDim2.new(0, (1 - (i / 100)) * element.Size.X.Offset, 0, 0)
            wait(hideDuration / 100)
        end
        element.Visible = false
    end

    return {Show = animateShow, Hide = animateHide}
end

-- Function to switch themes
function GUI.SetTheme(themeName)
    local theme = GUI.Themes[themeName] or GUI.Themes.Light
    -- You can apply the theme to existing UI components here if needed
    return theme
end

return GUI

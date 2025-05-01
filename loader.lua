-- GMON Hub Loader.lua 
-- Background ID: 94747801090737

local Players = game:GetService("Players") 
local HttpService = game:GetService("HttpService") 
local TweenService = game:GetService("TweenService") 
local LocalPlayer = Players.LocalPlayer

-- Settings 
local CorrectKey = "Bcd127aLt94dcp" 
local MainScriptURL = "https://gmonhub-script.vercel.app/main.lua"

-- GUI Elements 
local ScreenGui = Instance.new("ScreenGui", game.CoreGui) ScreenGui.Name = "GMONLoader"

-- Background
local Background = Instance.new("ImageLabel") 
Background.Parent = ScreenGui 
Background.Size = UDim2.new(0, 500, 0, 300) 
Background.Position = UDim2.new(0.5, -250, 0.5, -150) 
Background.BackgroundTransparency = 1
Background.Image = "rbxassetid://94747801090737"

-- RGB Border Effect 
local Border = Instance.new("Frame") 
Border.Parent = Background 
Border.Size = UDim2.new(1, 0, 1, 0) 
Border.BackgroundTransparency = 1 
Border.BorderSizePixel = 4

local uiGradient = Instance.new("UIGradient") uiGradient.Color =
ColorSequence.new { 
    ColorSequenceKeypoint.new(0.0, Color3.fromRGB(255, 0, 0)), 
    ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)), 
    ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0, 0, 255)), 
    ColorSequenceKeypoint.new(1.0, Color3.fromRGB(255, 0, 0)), } uiGradient.Rotation = 0 uiGradient.Parent = Border

local Button = Instance.new("TextButton") 
Button.parent = Background
Button.size = IDim2.new("0.3, 0, 0, 40") 
Button.position = UDim2.new(0.20, 0, 0.75, 0")
    Button.Text = "Get Key"
    Button.Textcolor3 = color3.fromRGB(0, 0, 0) 
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255) 
Button.Font = Enum.Font.GothamBold 
Button.TextScaled = true

-- Animate RGB 
spawn(function() while true do 
            task.wait(0.05) uiGradient.Rotation = (uiGradient.Rotation + 1) % 360 end end)

-- Title 
local Title = Instance.new("TextLabel") 
Title.Parent = Background 
Title.Size = UDim2.new(1, 0, 0, 50) 
Title.Position = UDim2.new(0, 0, 0, 10) 
Title.BackgroundTransparency = 1 
Title.Text = "GMON Hub" 
Title.TextColor3 = Color3.fromRGB(255, 255, 255) 
Title.Font = Enum.Font.GothamBold 
Title.TextScaled = true

-- Key Input 
local TextBox = Instance.new("TextBox") 
TextBox.Parent = Background 
TextBox.Size = UDim2.new(0.7, 0, 0, 40) 
TextBox.Position = UDim2.new(0.1, 0, 0.5, -20) 
TextBox.PlaceholderText = "Enter Your Key Here" 
TextBox.Text = "" 
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0) 
TextBox.Font = Enum.Font.Gotham 
TextBox.TextScaled = true

-- Button 
local Button = Instance.new("TextButton") 
Button.Parent = Background 
Button.Size = UDim2.new(0.3, 0, 0, 40) 
Button.Position = UDim2.new(0.25, 0, 0.75, 0) 
Button.Text = "Check Key" 
Button.TextColor3 = Color3.fromRGB(255, 255, 255) 
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255) 
Button.Font = Enum.Font.GothamBold 
Button.TextScaled = true

-- Notification 
local Notify = Instance.new("TextLabel") 
Notify.Parent = Background 
Notify.Size = UDim2.new(1, 0, 0, 25) 
Notify.Position = UDim2.new(0, 0, 0.9, 0) 
Notify.BackgroundTransparency = 1 
Notify.Text = "" Notify.TextColor3 = Color3.fromRGB(255, 255, 0) 
Notify.Font = Enum.Font.Gotham 
Notify.TextScaled = true

-- Key Check Logic 
Button.MouseButton1Click:Connect(function() 
        if TextBox.Text == CorrectKey then
            Notify.Text = "Valid Key!"
            wait(1) 
            ScreenGui:Destroy() 
           if wait("0.2") then 
            loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/main.lua"))()
        else 
            Notify.Text = "Wrong Key!" 
        end 
    end)

-- Done


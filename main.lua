-- GMON Hub - loader.lua 
-- Background: Anime style (ID: 94747801090737) -- Key: Bcd127aLt94dcp

-- UI Initialization 
local CoreGui = game:GetService("CoreGui") 
local Players = game:GetService("Players") 
local LocalPlayer = Players.LocalPlayer

-- Background 
local BG = Instance.new("ImageLabel") 
BG.Name = "GMONLoaderBG" 
BG.Parent = CoreGui 
BG.Size = UDim2.new(0, 500, 0, 320) 
BG.Position = UDim2.new(0.5, -250, 0.5, -160) 
BG.BackgroundTransparency = 1 
BG.Image = "rbxassetid://94747801090737"

-- Logo / Title
local Title = Instance.new("TextLabel") 
Title.Parent = BG 
Title.Size = UDim2.new(1, 0, 0, 50) 
Title.Position = UDim2.new(0, 0, 0, 10) 
Title.BackgroundTransparency = 1 Title.Text = "GMON Hub" 
Title.TextColor3 = Color3.fromRGB(255, 255, 255) 
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true

-- Key Input Box 
local TextBox = Instance.new("TextBox") 
TextBox.Parent = BG 
TextBox.Size = UDim2.new(0.8, 0, 0, 35) 
TextBox.Position = UDim2.new(0.1, 0, 0.5, -20) 
TextBox.PlaceholderText = "Enter Key Here" 
TextBox.Text = "" 
TextBox.TextScaled = true 
TextBox.Font = Enum.Font.Gotham 
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255) 
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0) 
TextBox.BorderSizePixel = 2
TextBox.BorderColor3 = Color3.fromRGB(255, 255, 0)

-- Notification 
local Notify = Instance.new("TextLabel")
Notify.Parent = BG 
Notify.Size = UDim2.new(1, 0, 0, 25) 
Notify.Position = UDim2.new(0, 0, 1, -30) 
Notify.BackgroundTransparency = 1 
Notify.Text = "" 
Notify.TextColor3 = Color3.fromRGB(255, 0, 0) 
Notify.Font = Enum.Font.GothamSemibold 
Notify.TextScaled = true

-- Check Key Button 
local CheckKey = Instance.new("TextButton") 
CheckKey.Parent = BG
CheckKey.Size = UDim2.new(0.6, 0, 0, 35) 
CheckKey.Position = UDim2.new(0.2, 0, 0.7, 0) 
CheckKey.Text = "Check Key"
CheckKey.TextScaled = true 
CheckKey.Font = Enum.Font.GothamBold 
CheckKey.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
CheckKey.TextColor3 = Color3.fromRGB(255, 255, 255)

CheckKey.MouseButton1Click:Connect(function() 
        if TextBox.Text == "Bcd127aLt94dcp" then
            Notify.Text = "Valid Key!"
            wait(1.5)
            BG:Destroy() 
            loadstring(game:HttpGet("https://gmonhub-script.vercel.app/main.lua"))() 
        else 
            Notify.Text = "Wrong Key!" 
        end 
    end)

-- Circular White Glow Border (optional visual effect) 
local glow = Instance.new("ImageLabel") 
glow.Parent = BG 
glow.Size = UDim2.new(1.1, 0, 1.1, 0)
glow.Position = UDim2.new(-0.05, 0, -0.05, 0) 
glow.BackgroundTransparency = 1
glow.Image = "rbxassetid://6031624247" -- Placeholder white glow

glow.ImageColor3 = Color3.fromRGB(255, 255, 255)
glow.ImageTransparency = 0.2

-- Animate the glow (rotate)
task.spawn(function() 
        while glow and glow.Parent do
            glow.Rotation = (glow.Rotation + 1) % 360 
            wait(0.03) 
        end 
    end)


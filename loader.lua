-- SETTINGS
local validKey = "Bcd127aLt94dcp"
local mainScriptURL = "https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/main.lua"

-- UI SERVICE
local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- FRAME UTAMA
local screenGui = Instance.new("ScreenGui", CoreGui)
screenGui.Name = "GMON_Loader"

local mainFrame = Instance.new("Frame", screenGui)
mainFrame.Size = UDim2.new(0, 450, 0, 300)
mainFrame.Position = UDim2.new(0.5, -225, 0.5, -150)
mainFrame.BackgroundTransparency = 1

local background = Instance.new("ImageLabel", mainFrame)
background.Image = "rbxassetid://94747801090737"
background.Size = UDim2.new(1, 0, 1, 0)
background.BackgroundTransparency = 1

-- RGB BORDER
local border = Instance.new("UIStroke", background)
border.Thickness = 2
border.Color = Color3.fromRGB(255, 0, 0)

-- Animasi RGB
spawn(function()
	local hue = 0
	while screenGui do
		hue = (hue + 1) % 360
		border.Color = Color3.fromHSV(hue/360, 1, 1)
		wait(0.03)
	end
end)

-- LOGO GMON
local logo = Instance.new("TextLabel", mainFrame)
logo.Size = UDim2.new(0, 200, 0, 30)
logo.Position = UDim2.new(0.5, -100, 0, 10)
logo.BackgroundTransparency = 1
logo.Text = "GMON Hub"
logo.TextColor3 = Color3.fromRGB(255, 255, 255)
logo.TextScaled = true
logo.Font = Enum.Font.GothamBold

-- INPUT KEY BOX
local keyBox = Instance.new("TextBox", mainFrame)
keyBox.PlaceholderText = "Enter Key Here"
keyBox.Size = UDim2.new(0, 300, 0, 40)
keyBox.Position = UDim2.new(0.5, -150, 0.5, -20)
keyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
keyBox.TextColor3 = Color3.fromRGB(0, 0, 0)
keyBox.Font = Enum.Font.Gotham
keyBox.TextSize = 18

-- NOTIF LABEL
local notif = Instance.new("TextLabel", mainFrame)
notif.Size = UDim2.new(0, 300, 0, 30)
notif.Position = UDim2.new(0.5, -150, 0.5, 30)
notif.BackgroundTransparency = 1
notif.TextColor3 = Color3.fromRGB(255, 0, 0)
notif.Font = Enum.Font.GothamBold
notif.TextScaled = true
notif.Text = ""

-- CHECK KEY BUTTON
local checkBtn = Instance.new("TextButton", mainFrame)
checkBtn.Text = "Check Key"
checkBtn.Size = UDim2.new(0, 120, 0, 35)
checkBtn.Position = UDim2.new(0.5, -60, 0.5, 70)
checkBtn.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
checkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
checkBtn.Font = Enum.Font.GothamBold
checkBtn.TextScaled = true

checkBtn.MouseButton1Click:Connect(function()
	if keyBox.Text == validKey then
		notif.Text = "Valid Key!"
		notif.TextColor3 = Color3.fromRGB(0, 255, 0)
		wait(1)
		screenGui:Destroy()
            
		loadstring(game:HttpGet(mainScriptURL))
        ()
	else
		notif.Text = "Wrong Key!"
		notif.TextColor3 = Color3.fromRGB(255, 0, 0)
	end
end)

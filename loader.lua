repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

-- Konfigurasi Key
local correctKey = "Bcd127aLt94dcp"

-- GUI
local CoreGui = game:GetService("CoreGui")
pcall(function() CoreGui.GMON_Loader:Destroy() end)

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "GMON_Loader"
ScreenGui.ResetOnSpawn = false

-- Background
local AnimeBG = Instance.new("ImageLabel", ScreenGui)
AnimeBG.Size = UDim2.new(0, 450, 0, 300)
AnimeBG.Position = UDim2.new(0.5, -225, 0.5, -150)
AnimeBG.BackgroundTransparency = 1
AnimeBG.Image = "rbxassetid://94747801090737"

-- Border putih
local Border = Instance.new("UICorner", AnimeBG)
Border.CornerRadius = UDim.new(0, 16)

-- Input Key
local TextBox = Instance.new("Paste Key here", AnimeBG)
TextBox.PlaceholderText = "Enter Your Key"
TextBox.Size = UDim2.new(0.7, 0, 0.1, 0)
TextBox.Position = UDim2.new(0.15, 0, 0.6, 0)
TextBox.BackgroundColor3 = Color3.new(1,1,1)
TextBox.TextColor3 = Color3.new(0,0,0)
TextBox.Font = Enum.Font.GothamBold
TextBox.TextSize = 18

-- Tombol Cek Key
local CheckButton = Instance.new("TextButton", AnimeBG)
CheckButton.Size = UDim2.new(0.4, 0, 0.1, 0)
CheckButton.Position = UDim2.new(0.3, 0, 0.75, 0)
CheckButton.Text = "Check Key"
CheckButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckButton.TextColor3 = Color3.new(0, 0, 0)
CheckButton.Font = Enum.Font.GothamBold
CheckButton.TextSize = 18

-- Notifikasi
local function notify(text, color)
    local msg = Instance.new("TextLabel", AnimeBG)
    msg.Size = UDim2.new(1, 0, 0.1, 0)
    msg.Position = UDim2.new(0, 0, 0.05, 0)
    msg.BackgroundTransparency = 1
    msg.Text = text
    msg.TextColor3 = color
    msg.Font = Enum.Font.GothamBlack
    msg.TextScaled = true
    game:GetService("Debris"):AddItem(msg, 3)
end

-- Fungsi Validasi Key
CheckButton.MouseButton1Click:Connect(function()
    if TextBox.Text == correctKey then
        notify("Valid Key!", Color3.new(0, 1, 0))
        wait(1)
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/main.lua"))()
    else
        notify("Wrong Key!", Color3.new(1, 0, 0))
    end
end)

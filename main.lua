repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

-- Konfigurasi Key
local correctKey = "Bcd127aLt94dcp"

-- GUI
local CoreGui = game:GetService("CoreGui")
pcall(function() CoreGui.GMON_Loader:Destroy() end)

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "GMON_Loader"
ScreenGui.ResetOnSpawn = false

-- Background utama
local AnimeBG = Instance.new("ImageLabel", ScreenGui)
AnimeBG.Size = UDim2.new(0, 450, 0, 300)
AnimeBG.Position = UDim2.new(0.5, -225, 0.5, -150)
AnimeBG.BackgroundTransparency = 1
AnimeBG.Image = "rbxassetid://94747801090737"

-- Border putih membulat
local Border = Instance.new("UICorner", AnimeBG)
Border.CornerRadius = UDim.new(0, 16)

-- Efek cahaya berputar
local rotating = Instance.new("ImageLabel", AnimeBG)
rotating.Size = UDim2.new(1.2, 0, 1.2, 0)
rotating.Position = UDim2.new(-0.1, 0, -0.1, 0)
rotating.Image = "rbxassetid://88817335071002"
rotating.BackgroundTransparency = 1
rotating.ZIndex = 0

spawn(function()
    while rotating do
        rotating.Rotation = (rotating.Rotation + 1) % 360
        wait(0.01)
    end
end)

-- Logo / Judul GMON Hub
local Title = Instance.new("TextLabel", AnimeBG)
Title.Size = UDim2.new(1, 0, 0.2, 0)
Title.Position = UDim2.new(0, 0, 0.05, 0)
Title.BackgroundTransparency = 1
Title.Text = "GMON Hub"
Title.Font = Enum.Font.GothamBlack
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextStrokeTransparency = 0.5
Title.TextStrokeColor3 = Color3.new(1,1,0)

-- TextBox Input Key
local TextBox = Instance.new("TextBox", AnimeBG)
TextBox.PlaceholderText = "Enter Your Key"
TextBox.Size = UDim2.new(0.7, 0, 0.1, 0)
TextBox.Position = UDim2.new(0.15, 0, 0.5, 0)
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Font = Enum.Font.GothamBold
TextBox.TextSize = 18

-- Tombol Cek Key
local CheckButton = Instance.new("TextButton", AnimeBG)
CheckButton.Size = UDim2.new(0.4, 0, 0.1, 0)
CheckButton.Position = UDim2.new(0.3, 0, 0.65, 0)
CheckButton.Text = "Check Key"
CheckButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CheckButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CheckButton.Font = Enum.Font.GothamBold
CheckButton.TextSize = 18

-- Notifikasi
local function notify(text, color)
    local msg = Instance.new("TextLabel", AnimeBG)
    msg.Size = UDim2.new(1, 0, 0.1, 0)
    msg.Position = UDim2.new(0, 0, 0.85, 0)
    msg.BackgroundTransparency = 1
    msg.Text = text
    msg.TextColor3 = color
    msg.Font = Enum.Font.GothamBlack
    msg.TextScaled = true
    msg.ZIndex = 99
    game:GetService("Debris"):AddItem(msg, 3)
end

-- Fungsi Validasi Key
CheckButton.MouseButton1Click:Connect(function()
    if TextBox.Text == correctKey then
        notify("Valid Key!", Color3.fromRGB(0, 255, 0))
        wait(1)
        ScreenGui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/main.lua"))()
    else
        notify("Wrong Key!",
        Color3.fromRGB(255, 0, 0))
    end
end)

-- keysystem.lua

-- Hapus GUI sebelumnya jika ada
if game.CoreGui:FindFirstChild("GMON_KEY_GUI") then
    game.CoreGui:FindFirstChild("GMON_KEY_GUI"):Destroy()
end

-- Buat GUI utama
local Gui = Instance.new("ScreenGui", game.CoreGui)
Gui.Name = "GMON_KEY_GUI"
Gui.ResetOnSpawn = false

-- Frame utama
local Frame = Instance.new("Frame", Gui)
Frame.Size = UDim2.new(0, 500, 0, 300)
Frame.Position = UDim2.new(0.5, -250, 0.5, -150)
Frame.BackgroundTransparency = 1

-- Gambar latar belakang
local Background = Instance.new("ImageLabel", Frame)
Background.Size = UDim2.new(1, 0, 1, 0)
Background.Position = UDim2.new(0, 0, 0, 0)
Background.Image = "rbxassetid://94747801090737" -- Ganti dengan ID gambar anime Anda
Background.BackgroundTransparency = 1

-- Efek gradien
local Gradient = Instance.new("UIGradient", Background)
Gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
}
Gradient.Rotation = 90

-- Sudut membulat
local UICorner = Instance.new("UICorner", Background)
UICorner.CornerRadius = UDim.new(0, 12)

-- Label judul
local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)
Title.Text = "GMON Key System"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1

-- Kotak input kunci
local KeyBox = Instance.new("TextBox", Frame)
KeyBox.Position = UDim2.new(0.1, 0, 0.4, 0)
KeyBox.Size = UDim2.new(0.8, 0, 0, 35)
KeyBox.PlaceholderText = "Masukkan kunci Anda di sini..."
KeyBox.Text = ""
KeyBox.Font = Enum.Font.Gotham
KeyBox.TextSize = 18
KeyBox.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
local UICorner2 = Instance.new("UICorner", KeyBox)
UICorner2.CornerRadius = UDim.new(0, 6)

-- Tombol submit
local Submit = Instance.new("TextButton", Frame)
Submit.Position = UDim2.new(0.3, 0, 0.7, 0)
Submit.Size = UDim2.new(0.4, 0, 0, 35)
Submit.Text = "Submit Key"
Submit.Font = Enum.Font.GothamBold
Submit.TextSize = 18
Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
Submit.BackgroundColor3 = Color3.fromRGB(60, 150, 255)
local UICorner3 = Instance.new("UICorner", Submit)
UICorner3.CornerRadius = UDim.new(0, 6)

-- Validasi kunci
local validKey = "Bcd127aLt94dcp" -- Ganti dengan validasi kunci dari Linkvertise nantinya

Submit.MouseButton1Click:Connect(function()
    if KeyBox.Text == validKey then
        Gui:Destroy()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/main.lua"))()
    else
        Submit.Text = "wrong key!"
        wait(1)
        Submit.Text = "Submit Key"
    end
end)

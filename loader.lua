local expectedKey = "GmonHub74da63837f210bee98da89"
local savedKeyPath = "gmonkey.txt"

-- Coba baca key yang tersimpan
local savedKey = nil
pcall(function()
    if isfile(savedKeyPath) then
        savedKey = readfile(savedKeyPath)
    end
end)

local function checkKey(inputKey)
    return inputKey == expectedKey
end

-- Jika sudah tersimpan dan valid, langsung buka main.lua
if savedKey and checkKey(savedKey) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/G-Mon-Hub/main/main.lua"))()
else
    -- Tampilkan UI Get Key
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    ScreenGui.Name = "GMON_GetKey"
    ScreenGui.ResetOnSpawn = false

    -- Background anime
    local Background = Instance.new("ImageLabel", ScreenGui)
    Background.Size = UDim2.new(1, 0, 1, 0)
    Background.Position = UDim2.new(0, 0, 0, 0)
    Background.Image = "rbxassetid://17092136648"
    Background.ScaleType = Enum.ScaleType.Crop

    -- Frame utama
    local Main = Instance.new("Frame", ScreenGui)
    Main.Size = UDim2.new(0, 400, 0, 250)
    Main.Position = UDim2.new(0.5, -200, 0.5, -125)
    Main.BackgroundTransparency = 0.3
    Main.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    Main.BorderSizePixel = 0

    -- Title
    local Title = Instance.new("TextLabel", Main)
    Title.Text = "GMON Hub - Key System"
    Title.Size = UDim2.new(1, 0, 0, 40)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.BackgroundTransparency = 1
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.GothamBold
    Title.TextSize = 22

    -- Input Key
    local KeyBox = Instance.new("TextBox", Main)
    KeyBox.PlaceholderText = "Enter Key Here"
    KeyBox.Size = UDim2.new(0.9, 0, 0, 40)
    KeyBox.Position = UDim2.new(0.05, 0, 0.35, 0)
    KeyBox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    KeyBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    KeyBox.Font = Enum.Font.Gotham
    KeyBox.TextSize = 18

    -- Submit Button
    local Submit = Instance.new("TextButton", Main)
    Submit.Text = "Submit"
    Submit.Size = UDim2.new(0.9, 0, 0, 40)
    Submit.Position = UDim2.new(0.05, 0, 0.65, 0)
    Submit.BackgroundColor3 = Color3.fromRGB(80, 170, 255)
    Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
    Submit.Font = Enum.Font.GothamBold
    Submit.TextSize = 20

    -- OnClick: Cek key
    Submit.MouseButton1Click:Connect(function()
        local inputKey = KeyBox.Text
        if checkKey(inputKey) then
            writefile(savedKeyPath, inputKey)
            ScreenGui:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/G-Mon-Hub/main/main.lua"))()
        else
            Submit.Text = "Invalid Key!"
            task.wait(1.5)
            Submit.Text = "Submit"
        end
    end)
end

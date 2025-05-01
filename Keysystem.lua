-- keysystem.lua if game.CoreGui:FindFirstChild("GMON_KEY_GUI") then game.CoreGui:FindFirstChild("GMON_KEY_GUI"):Destroy() end

local Gui = Instance.new("ScreenGui", game.CoreGui) Gui.Name = "GMON_KEY_GUI" Gui.ResetOnSpawn = false

local Frame = Instance.new("Frame", Gui) Frame.Size = UDim2.new(0, 400, 0, 250) Frame.Position = UDim2.new(0.5, -200, 0.5, -125) Frame.BackgroundTransparency = 0.2 Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30) Frame.BorderSizePixel = 0

local UICorner = Instance.new("UICorner", Frame) UICorner.CornerRadius = UDim.new(0, 12)

local Title = Instance.new("TextLabel", Frame) Title.Size = UDim2.new(1, 0, 0, 50) Title.Text = "GMON Key System" Title.Font = Enum.Font.GothamBold Title.TextSize = 24 Title.TextColor3 = Color3.fromRGB(255, 255, 255) Title.BackgroundTransparency = 1

local KeyBox = Instance.new("TextBox", Frame) KeyBox.Position = UDim2.new(0.1, 0, 0.4, 0) KeyBox.Size = UDim2.new(0.8, 0, 0, 35) KeyBox.PlaceholderText = "Paste your key here..." KeyBox.Text = "" KeyBox.Font = Enum.Font.Gotham KeyBox.TextSize = 18 KeyBox.TextColor3 = Color3.fromRGB(0, 0, 0) KeyBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255) local UICorner2 = Instance.new("UICorner", KeyBox) UICorner2.CornerRadius = UDim.new(0, 6)

local Submit = Instance.new("TextButton", Frame) Submit.Position = UDim2.new(0.3, 0, 0.7, 0) Submit.Size = UDim2.new(0.4, 0, 0, 35) Submit.Text = "Submit Key" Submit.Font = Enum.Font.GothamBold Submit.TextSize = 18 Submit.TextColor3 = Color3.fromRGB(255, 255, 255) Submit.BackgroundColor3 = Color3.fromRGB(60, 150, 255) local UICorner3 = Instance.new("UICorner", Submit) UICorner3.CornerRadius = UDim.new(0, 6)

local validKey = "GMON-1234" -- Ganti dengan validasi key dari Linkvertise nantinya

Submit.MouseButton1Click:Connect(function() 
    if KeyBox.Text == validKey then 
      Gui:Destroy()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/main.lua"))() 
    else
      Submit.Text = "Invalid Key!" 
      wait(1) 
      Submit.Text = "Submit Key" 
    end 
  end)" 
}


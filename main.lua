-- GMON Hub Main GUI
local TweenService = game:GetService("TweenService") 
local CoreGui = game:GetService("CoreGui")

-- Background UI 
local MainUI = Instance.new("ScreenGui", CoreGui) 
MainUI.Name = "GMON_Main"

local BG = Instance.new("ImageLabel") 
BG.Name = "BG" 
BG.Parent = MainUI 
BG.Size = UDim2.new(0, 600, 0, 400) 
BG.Position = UDim2.new(0.5, -300, 0.5, -200) 
BG.BackgroundTransparency = 1 
BG.Image = "rbxassetid://88817335071002"

-- RGB Stroke Pinggira 
local Stroke = Instance.new("UIStroke") 
Stroke.Thickness = 4 Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border 
Stroke.Parent = BG

-- Tween RGB effect 
local function tweenRGB() 
  local colors = { Color3.fromRGB(255, 0, 0),    
    -- Merah Color3.fromRGB(255, 255, 0),  
    -- Kuning Color3.fromRGB(0, 255, 0),  
    -- Hijau Color3.fromRGB(0, 255, 255),  
    -- Cyan Color3.fromRGB(0, 0, 255),   
    -- Biru Color3.fromRGB(255, 0, 255) 
    -- Magenta }

local i = 1
while Stroke and Stroke.Parent do
    local nextColor = colors[(i % #colors) + 1]
    local tween = TweenService:Create(Stroke, TweenInfo.new(0.5), {Color = nextColor})
    tween:Play()
    tween.Completed:Wait()
    i += 1
end

end

coroutine.wrap(tweenRGB)()

-- Tulisan GMON Hub
  local Label = Instance.new("TextLabel") 
  Label.Parent = BG Label.Text = "GMON Hub" 
  Label.TextSize = 24 Label.Font = Enum.Font.FredokaOne 
  Label.TextColor3 = Color3.fromRGB(255, 255, 255) 
  Label.BackgroundTransparency = 1 
  Label.Position = UDim2.new(0, 10, 0, 10) 
  Label.Size = UDim2.new(0, 200, 0, 40)

-- Toggle Button
  local Toggle = Instance.new("ImageButton") 
  Toggle.Name = "ToggleUI" Toggle.Parent = MainUI 
  Toggle.Size = UDim2.new(0, 45, 0, 45) 
  Toggle.Position = UDim2.new(0, 20, 0.5, -100) 
  Toggle.BackgroundTransparency = 1
  Toggle.Image = "rbxassetid://94747801090737"

Toggle.MouseButton1Click:Connect(function() BG.Visible = not BG.Visible end)

-- Placeholder untuk fitur -- Tambahkan fitur GMON di sini seperti Auto Farm, Sea Events, dll

-- Contoh fitur dasar
  local AutoFarm = Instance.new("TextButton") 
  AutoFarm.Parent = BG 
  AutoFarm.Size = UDim2.new(0, 200, 0, 50) 
  AutoFarm.Position = UDim2.new(0, 50, 0, 100) 
  AutoFarm.Text = "[ON/OFF] Auto Farm"
  AutoFarm.BackgroundColor3 = Color3.fromRGB(30,30,30) 
  AutoFarm.TextColor3 = Color3.fromRGB(255,255,255) 
  AutoFarm.Font = Enum.Font.Gotham 
  AutoFarm.TextSize = 18

-- Implementasi lebih lanjut menyusul...


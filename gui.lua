-- Latar belakang GUI bergaya anime
local AnimeBG = Instance.new("ImageLabel")
AnimeBG.Name = "AnimeBG"
AnimeBG.Parent = game.CoreGui
AnimeBG.Size = UDim2.new(0, 450, 0, 300)
AnimeBG.Position = UDim2.new(0.5, -225, 0.5, -150)
AnimeBG.BackgroundTransparency = 1
AnimeBG.Image = "rbxassetid://94747801090737"
AnimeBG.Visible = true

-- Tombol Toggle GUI (berbeda dari latar)
local AnimeToggleIcon = Instance.new("ImageButton")
AnimeToggleIcon.Name = "AnimeToggleIcon"
AnimeToggleIcon.Parent = game.CoreGui
AnimeToggleIcon.Size = UDim2.new(0, 45, 0, 45)
AnimeToggleIcon.Position = UDim2.new(0, 20, 0.5, -100)
AnimeToggleIcon.BackgroundTransparency = 1
AnimeToggleIcon.Image = "rbxassetid://88817335071002"
AnimeToggleIcon.Visible = true

-- Fungsi toggle tampilan GUI
AnimeToggleIcon.MouseButton1Click:Connect(function()
    AnimeBG.Visible = not AnimeBG.Visible
end)

-- GMON Hub Main Script local CoreGui = game:GetService("CoreGui") local Players = game:GetService("Players") local RunService = game:GetService("RunService") local ReplicatedStorage = game:GetService("ReplicatedStorage") local VIM = game:GetService("VirtualInputManager")

local player = Players.LocalPlayer

-- UI Setup local ScreenGui = Instance.new("ScreenGui", CoreGui) ScreenGui.Name = "GMON_MainUI" ScreenGui.ResetOnSpawn = false

-- Toggle Button local Toggle = Instance.new("ImageButton", ScreenGui) Toggle.Size = UDim2.new(0, 40, 0, 40) Toggle.Position = UDim2.new(0, 10, 0.5, -100) Toggle.BackgroundTransparency = 1 Toggle.Image = "rbxassetid://94747801090737" Toggle.Name = "GMON_Toggle"

-- Drag toggle local dragging, dragInput, dragStart, startPos Toggle.InputBegan:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true dragStart = input.Position startPos = Toggle.Position

input.Changed:Connect(function()
		if input.UserInputState == Enum.UserInputState.End then
			dragging = false
		end
	end)
end

end) Toggle.InputChanged:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseMovement then dragInput = input end end) RunService.Heartbeat:Connect(function() if dragging and dragInput then local delta = dragInput.Position - dragStart Toggle.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y) end end)

-- Background Panel local BG = Instance.new("ImageLabel", ScreenGui) BG.Name = "Background" BG.Size = UDim2.new(0, 480, 0, 320) BG.Position = UDim2.new(0.5, -240, 0.5, -160) BG.BackgroundTransparency = 1 BG.Image = "rbxassetid://88817335071002" BG.Visible = true

Toggle.MouseButton1Click:Connect(function() BG.Visible = not BG.Visible end)

-- RGB Border local RGBFrame = Instance.new("Frame", BG) RGBFrame.Size = UDim2.new(1, 0, 1, 0) RGBFrame.Position = UDim2.new(0, 0, 0, 0) RGBFrame.BackgroundTransparency = 1 RGBFrame.BorderSizePixel = 4 RGBFrame.ZIndex = 2

local border = Instance.new("UIStroke", RGBFrame) border.Thickness = 4 border.Transparency = 0 border.ApplyStrokeMode = Enum.ApplyStrokeMode.Border border.LineJoinMode = Enum.LineJoinMode.Round border.Color = Color3.fromRGB(255, 0, 0)

spawn(function() local hue = 0 while wait(0.03) do hue = (hue + 1) % 360 local color = Color3.fromHSV(hue / 360, 1, 1) pcall(function() border.Color = color end) end end)

-- GMON Title local Title = Instance.new("TextLabel", BG) Title.Size = UDim2.new(1, 0, 0, 40) Title.Position = UDim2.new(0, 0, 0, 0) Title.BackgroundTransparency = 1 Title.Text = "GMON Hub" Title.Font = Enum.Font.GothamBold Title.TextSize = 24 Title.TextColor3 = Color3.fromRGB(255, 255, 255)

-- Tab Container local TabContainer = Instance.new("Frame", BG) TabContainer.Size = UDim2.new(0, 120, 1, -40) TabContainer.Position = UDim2.new(0, 0, 0, 40) TabContainer.BackgroundTransparency = 0.3 TabContainer.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

-- Content Frame local Content = Instance.new("Frame", BG) Content.Size = UDim2.new(1, -120, 1, -40) Content.Position = UDim2.new(0, 120, 0, 40) Content.BackgroundTransparency = 0.2 Content.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

-- UIList for Tabs local UIListLayout = Instance.new("UIListLayout", TabContainer) UIListLayout.Padding = UDim.new(0, 4) UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Function to create tab buttons local function createTab(name, onClick) local btn = Instance.new("TextButton", TabContainer) btn.Size = UDim2.new(1, -10, 0, 30) btn.Position = UDim2.new(0, 5, 0, 0) btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50) btn.TextColor3 = Color3.fromRGB(255, 255, 255) btn.Font = Enum.Font.Gotham btn.TextSize = 14 btn.Text = name btn.MouseButton1Click:Connect(onClick) return btn end

-- Sample Tab Content Setup local function clearContent() for _, v in pairs(Content:GetChildren()) do if v:IsA("GuiObject") then v:Destroy() end end end

local function showMainTab() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Position = UDim2.new(0, 0, 0, 0) label.Text = "Main: Auto Farm, Nearest Farm, etc." label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end

createTab("Info", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Info: Full Moon Timer, Discord" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)

createTab("Main", showMainTab) createTab("Item", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Item: Auto CDK, Farm Material" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)

createTab("Prehistoric", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Prehistoric Island Features" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)

createTab("Kitsune", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Kitsune Island Features" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)

createTab("Mirage", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Mirage Island Features" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)

createTab("Leviathan", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Leviathan Features" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)

createTab("Misc", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Misc: Redeem Codes, Others" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)

createTab("Setting", function() clearContent() local label = Instance.new("TextLabel", Content) label.Size = UDim2.new(1, 0, 0, 30) label.Text = "Setting: Fast Attack, Skill X/Y/Z" label.TextColor3 = Color3.fromRGB(255, 255, 255) label.BackgroundTransparency = 1 end)


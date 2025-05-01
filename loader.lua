-- GMON Loader (Linkvertise Key System)
repeat wait() until game:IsLoaded() and
game.Players.LocalPlayer

local HttpService =
game:GetService("HttpService")
local GuiService =
game:GetService("StarterGui")
local VALID_KEY = "Bcd127aLt94dcp"

local function showKeyGui()
    local ScreenGui = 
  Instance.new("ScreenGui", game.CoreGui)
    local Frame = Instance.new("Frame",
  ScreenGui)
    Frame.Size = UDim2.new(0, 300, 0, 
 150)
    Frame.Position = UDim2.new(0.5,
 -150, 0.5, -75)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.BorderSizePixel = 0
    Frame.BackgroundTransparency = 0.2

    local TextLabel = Instance.new("TextLabel", Frame)
    TextLabel.Text = "Get Key From Linkvertise"
    TextLabel.Size = UDim2.new(1, 0, 0, 30)
    TextLabel.BackgroundTransparency = 1
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

    local GetKeyButton = Instance.new("TextButton", Frame)
    GetKeyButton.Text = "Get Key"
    GetKeyButton.Size = UDim2.new(0.4, 0, 0, 30)
    GetKeyButton.Position = UDim2.new(0.05, 0, 0.4, 0)
    GetKeyButton.MouseButton1Click:Connect(function()
        setclipboard("https://direct-link.net/1209226/gmon-hub-get-key-system-g")
        GuiService:SetCore("SendNotification", {
            Title = "GMON Key";
            Text = "Link copied! Paste in browser.";
            Duration = 4;
        })
    end)

    local TextBox = Instance.new("TextBox", Frame)
    TextBox.PlaceholderText = "Enter Key Here"
    TextBox.Size = UDim2.new(0.9, 0, 0, 30)
    TextBox.Position = UDim2.new(0.05, 0, 0.65, 0)

    local Submit = Instance.new("TextButton", Frame)
    Submit.Text = "Submit"
    Submit.Size = UDim2.new(0.4, 0, 0, 30)
    Submit.Position = UDim2.new(0.55, 0, 0.4, 0)
    Submit.MouseButton1Click:Connect(function()
        if TextBox.Text == VALID_KEY then
            ScreenGui:Destroy()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/Gomlet674/gmonhub-script/main/gui.lua"))()
        else
            GuiService:SetCore("SendNotification", {
                Title = "Invalid Key";
                Text = "Please get a valid key from Linkvertise.";
                Duration = 4;
            })
        end
    end)
end

showKeyGui()

-- main.lua 
-- GMON Main Scrip Loader 

-- Cek jika GUI sudah terbuka 
if game.CoreGui:FindFirstChild("GMON_GUI") then game.CoreGui:FindFirstChild("GMON_GUI"):Destroy() end

-- Inisialisasi library dan GUI utama 
loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/gui.lua"))()

-- Auto detection Sea/Level untuk Auto Farm 
local SeaLevel = game.Players.LocalPlayer.Data.Level.Value 
local CurrentSea = "First Sea" 
if SeaLevel >= 700 
  and SeaLevel < 1500 then 
  CurrentSea = "Second Sea" 
elseif SeaLevel >= 1500 then 
  CurrentSea = "Third Sea"
end

print("[GMON] Detected:", CurrentSea)

-- Memulai AutoFarm berdasarkan Sea 
spawn(function()
    while wait(5) do 
      if getgenv().AutoFarm then 
        pcall(function() 
            if CurrentSea == "First Sea" then
              -- AutoFarm First Sea 
            elseif CurrentSea == "Second Sea" then 
              -- AutoFarm Second Sea 
            elseif CurrentSea == "Third Sea" then 
              -- AutoFarm Third Sea 
            end 
          end) 
      end 
    end 
  end)

-- Inisialisasi notifikasi GMON Style 
function Notify(msg) game.StarterGui:SetCore("SendNotification", { 
      Title = "GMON", 
      Text = msg, 
      Duration = 4 }
  ) end

Notify("GMON GUI Loaded - Welcome!")


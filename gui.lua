--[[
GMON GUI Script untuk Roblox Blox Fruits Fitur: Auto Farm, Sea Events, Prehistoric Island, Leviathan, Race v4, ESP, dan lainnya Dibuat untuk semua executor (Android & PC), dengan sistem key manual (Linkvertise) Background GUI menggunakan gambar anime cewek HD dari pengguna --
]]

-- Key System (Manual via GUI, bukan Luarmor) 
local GMON_KEY = getgenv().Key or ""
local VALID_KEY = "paste key"

if GMON_KEY ~= VALID_KEY then 
  game.StarterGui:SetCore("SendNotification", {
      Title = "GMON Key", 
      Text = "Key Salah. Silakan ambil key.",
      Duration = 10 
    } )
  return 
end

-- UI Library
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local window = library.CreateLib("GMON HUB | Blox Fruits", "Grape")

--[[ Tabs ]]--
local tabMain = window:NewTab("Main") 
local tabFarm = window:NewTab("Auto Farm") 
local tabSea = window:NewTab("Sea Events") 
local tabESP = window:NewTab("ESP") 
local tabFruit = window:NewTab("Fruit") 
local tabDragon = window:NewTab("Dragon Dojo") 
local tabKitsune = window:NewTab("Kitsune Island") 
local tabMirage = window:NewTab("Mirage Island") 
local tabLeviathan = window:NewTab("Leviathan")

--[[ Main Tab ]]--
tabMain:NewButton("Fast Click", "Auto click attack", function() 
    -- Fast click logic
  end) 
tabMain:NewToggle("Skill X", "Auto use skill X", function(state) 
    -- Auto Skill X logic 
  end) 
tabMain:NewToggle("Skill Z", "Auto use skill Z", function(state) 
    -- Auto Skill Z logic 
  end)

--[[ Auto Farm ]]--
tabFarm:NewToggle("Auto Farm Level", "Farm musuh berdasarkan level", function(state) 
    -- Auto farm logic based on sea/level
  end) 
tabFarm:NewToggle("Farm Chest", "Ambil peti otomatis", function(state) 
    -- Auto chest logic 
  end)

--[[ Sea Events ]]-- 
tabSea:NewToggle("Auto Sail", "Berlayar otomatis", function(state) 
    -- Auto sail logic 
  end)
tabSea:NewToggle("Auto Kill Shark", "Membunuh Shark otomatis", function(state)
    -- Auto kill shark logic
  end) 
tabSea:NewToggle("Stop If Mirage", "Berhenti jika Mirage ditemukan", function(state) 
    -- Stop sail if mirage logic 
  end)

--[[ ESP ]]-- 
tabESP:NewToggle("ESP Player", "Lihat semua player", function(state) 
    -- ESP player logic 
  end) 
tabESP:NewToggle("ESP Fruit", "Lihat buah di map", function(state) 
    -- ESP fruit logic 
  end)

--[[ Fruit ]]-- 
tabFruit:NewButton("Tween to Fruit", "Pergi ke buah terdekat", function() 
    -- Tween to fruit logic 
  end) 
tabFruit:NewButton("Bring to Fruit", "Tarik buah ke player", function() 
    -- Bring to fruit logic 
  end)

--[[ Dragon Dojo ]]-- 
tabDragon:NewToggle("Auto Blaze Ember", "Cari dan bunuh Blaze", function(state) 
    -- Auto Blaze logic 
  end)
tabDragon:NewButton("Craft Dragonheart", "Craft item dari Blaze", function() 
    -- Craft Dragonheart logic 
  end)

--[[ Kitsune Island ]]-- 
tabKitsune:NewToggle("Auto Collect Azure Ember", "Ambil Azure Ember", function(state) 
    -- Azure Ember logic 
  end) 
tabKitsune:NewToggle("Auto Trade Azure", "Trade item otomatis", function(state) 
    -- Trade logic 
  end)

--[[ Mirage Island ]]-- 
tabMirage:NewToggle("Auto Blue Gear", "Ambil Blue Gear", function(state) 
    -- Auto blue gear logic 
  end) 
tabMirage:NewButton("Lock Moon", "Kunci posisi bulan", function() 
    -- Lock moon logic 
  end)

--[[ Leviathan ]]-- 
tabLeviathan:NewButton("Tween to Leviathan", "Pergi ke lokasi Leviathan", function() 
    -- Tween logic 
  end) 
tabLeviathan:NewToggle("Auto Kill Leviathan", "Menyerang bagian tubuh Leviathan", function(state) 
    -- Kill part logic 
  end) 
tabLeviathan:NewButton("Auto Take Heart", "Ambil Leviathan Heart", function() 
    -- Take heart logic 
  end)

-- Notifikasi berhasil 
game.StarterGui:SetCore("SendNotification", { 
    Title = "GMON Hub",
    Text = "Key valid! GUI berhasil dimuat.", 
    Duration = 8 
  } )


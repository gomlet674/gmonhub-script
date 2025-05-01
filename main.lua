-- Memuat Rayfield UI Library
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

-- Membuat jendela utama
local Window = Rayfield:CreateWindow({
    Name = "GMON Hub",
    LoadingTitle = "GMON Hub",
    LoadingSubtitle = "by Gomlet674",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "GMONHub",
        FileName = "GMONConfig"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
        Title = "GMON Hub",
        Subtitle = "Key System",
        Note = "Join the discord (discord.gg/GMONHub)",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Bcd127aLt94dcp"}
    }
})

-- Membuat tab "Main"
local MainTab = Window:CreateTab("Main", 4483362458) -- ID ikon dapat disesuaikan

-- Menambahkan tombol ke tab "Main"
MainTab:CreateButton({
    Name = "Auto Farm",
    Callback = function()
        -- Implementasi fitur Auto Farm
    end,
})

MainTab:CreateButton({
    Name = "Sea Events",
    Callback = function()
        -- Implementasi fitur Sea Events
    end,
})

MainTab:CreateButton({
    Name = "Leviathan",
    Callback = function()
        -- Implementasi fitur Leviathan
    end,
})

-- Anda dapat menambahkan tab dan tombol tambahan sesuai kebutuhan

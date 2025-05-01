-- GMON Main Loader Script 
-- Eksekusi awal, akan memuat GUI utama dari file gui.lua 
-- Pastikan key sudah diisi sebelum eksekusi

repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

-- Masukkan key manual sebelum eksekusi (atau gunakan GUI get key terpisah jika diinginkan) 
getgenv().Key = "Bcd127aLt94dcp"

-- Load GUI 
loadstring(game:HttpGet("https://raw.githubusercontent.com/Gomlet674/gmonhub-script/main/gui.lua"))()


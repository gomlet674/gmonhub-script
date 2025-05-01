-- loader.lua
repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

--[[
 GMON Hub Loader - Auto Key GUI
]]

getgenv().GMONKeySystem = true -- Gunakan kunci Linkvertise

-- GUI Get Key akan muncul, setelah key benar baru load main GUI
loadstring(game:HttpGet("https://raw.githubusercontent.com/gomlet674/gmonhub-script/main/keysystem.lua"))()

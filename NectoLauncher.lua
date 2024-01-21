-- Made By KHANTELL on roblox, Creation TEAM NectoVerse
-- Launcher Link: loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/NectoLauncher.lua'),true))()

-- V0.0.1
-- NectoLauncher Status: Online
-- NectoAPI Status: Online
-- NectoVerse Status: Online
-- NectoHub: Online

-- Loading Library And Window
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("NectoLauncher V0.0.1", "Default")
-- Tab Creation
local tab = DrRayLibrary.newTab("Launcher", "ImageIdHere")
tab.newLabel("Credits to NectoVerse: https://discord.gg/aPevmdnnge")
-- Netless
tab.newLabel("User Netless because some scripts might be unusable. ")
tab.newButton("Launch Netless", "Launch it", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/Cu7bKQWN'),true))()
      print('Netless Launched')
end)
-- Input For fun
tab.newInput("Fun Feature", "This is just for fun, nothing interesting. ", function(text)
    print("Entered text: " .. text)
end)
-- Launching button
tab.newButton("Launch NectoHub", "NectoHub Launcher V0.0.1", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/NectoHub.lua'))()
      print('NectoHub V0.0.1 Launched')
end)

tab.newLabel("Status Tab")
tab.newLabel("Nectolauncher: Online")
tab.newLabel("NectoAPI: Online")
tab.newLabel("NectoHub: Online")

window:Open()
window:Close()
window:Hide()
window:Show()

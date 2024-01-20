-- Made By KHANTELL on roblox, Creation TEAM NectoVerse

-- Loading Library And Window
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("NectoLauncher V0.0.1", "Default")
-- Tab Creation
local tab = DrRayLibrary.newTab("Launcher", "ImageIdHere")
tab.newLabel("Credits to NectoVerse: https://discord.gg/aPevmdnnge")
-- Input For fun
tab.newInput("Fun Feature", "This is just for fun, nothing interesting. ", function(text)
    print("Entered text: " .. text)
end)
-- Launching button
tab.newButton("Launch NectoHub", "NectoHub Launcher V0.0.1", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/Nectoverse-Launcher/master/NectoHub.lua'))()
      print('NectoHub V0.0.1 Launched')
end)

window:Open()
window:Close()
window:Hide()
window:Show()

-- Made By NectoVerse Development
-- Launcher Link: loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/NectoLauncher.lua'),true))()
-- This hub is not a custom scripts hub,this hub contains 3rd party scripts, there are 5 tabs only in 1 tab have our scripts and other tabs are 3rd party. enjoy.

-- RELEASED IN SCRIPT BLOX!

-- Version: 5.0.0 [Released(Beta×)]
-- NectoLauncher Status: Online
-- NectoAPI Status: Online
-- NectoVerse Status: Online
-- NectoHub: Online

-- Loading Library And Window
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("NectoLauncher V5.0.0", "Default")
-- Tab Creation
local tab = DrRayLibrary.newTab("Launcher", "ImageIdHere")
tab.newLabel("Made by NectoVerse Development")
-- Netless
tab.newLabel("netless is very useful ")
tab.newButton("Launch Netless", "Launching netless, there are some scripts that cannot be used, this script after executed will makee them useable.", function()
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
      print('NectoHub V5.0.0 Launched')
end)

tab.newLabel("Status Tab")
tab.newLabel("Nectolauncher: Online")
tab.newLabel("NectoAPI: Online")
tab.newLabel("NectoHub: Online")

local tab = DrRayLibrary.newTab("Warning!", "ImageIdHere")
tab.newLabel("We find safe and working scripts for everyone, Some may not work for some reason if they're server are down. if they dont work for some reason please dont blame us but you can contact our DC Server from Launcher tab.")

window:Open()
window:Close()
window:Hide()
window:Show()

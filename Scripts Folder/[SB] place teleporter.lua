-- Total 26 places
-- Some places might not work, some  kick you and some are broken.

-- Installing ui
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Slap Battle Place Teleporter", "Default")

-- Tabs
local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

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
-- Extras
local tab = DrRayLibrary.newTab("Extras", "ImageIdHere")

tab.newButton("Slap battles updated", "NVD made SB hub", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Slap%20battles.lua"))()
    print('Hello!')
end)

tab.newButton("Fly gui", "fly gui", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Fly.lua'))))()
    print('Hello!')
end)

tab.newButton("Tp tool", "Teleporting tool", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Teleport_Tool.lua'))()
    print('Hello!')
end)

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

tab.newButton("Anti AFK gui", "Anti afk", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/ANTI_AFK.lua'))()
    print('Hello!')
end)

window:Toggle()
window:Open()
window:Close()
window:Hide()
window:Show()

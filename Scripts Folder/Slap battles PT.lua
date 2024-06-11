local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("SBPT")

local KillingCheats = PhantomForcesWindow:NewSection("Main")

KillingCheats:CreateButton("Brazil", function()
    game:GetService("TeleportService"):Teleport(7234087065)
print("HI")
end)

KillingCheats:CreateButton("100 players", function()
    game:GetService("TeleportService"):Teleport(8550289322)
print("HI")
end)

KillingCheats:CreateButton("Place N.39", function()
    game:GetService("TeleportService"):Teleport(8550291053)
print("HI")
end)

KillingCheats:CreateButton("No oneshot", function()
    game:GetService("TeleportService"):Teleport(9015014224)
print("HI")
end)

KillingCheats:CreateButton("Testing place", function()
    game:GetService("TeleportService"):Teleport(9020359053)
print("HI")
end)

KillingCheats:CreateButton("Glove customization", function()
    game:GetService("TeleportService"):Teleport(9068206286)
print("HI")
end)

KillingCheats:CreateButton("Slap royale queue", function()
    game:GetService("TeleportService"):Teleport(9412139218)
print("HI")
end)

KillingCheats:CreateButton("Ice essence", function()
    game:GetService("TeleportService"):Teleport(17290438723)
print("HI")
end)

KillingCheats:CreateButton("M-making", function()
    game:GetService("TeleportService"):Teleport(9426735655)
print("HI")
end)

KillingCheats:CreateButton("Slap royale matchmaking", function()
    game:GetService("TeleportService"):Teleport(9426795465)
print("HI")
end)

KillingCheats:CreateButton("Slap royale", function()
    game:GetService("TeleportService"):Teleport(9431156611)
print("HI")
end)

KillingCheats:CreateButton("??? m", function()
    game:GetService("TeleportService"):Teleport(11359765900)
print("HI")
end)

KillingCheats:CreateButton("??", function()
    game:GetService("TeleportService"):Teleport(11367956190)
print("HI")
end)

KillingCheats:CreateButton("KS only", function()
    game:GetService("TeleportService"):Teleport(11520107397)
print("HI")
end)

KillingCheats:CreateButton("Experimental place", function()
    game:GetService("TeleportService"):Teleport(12432152490)
print("HI")
end)

KillingCheats:CreateButton("Soft updating dododo", function()
    game:GetService("TeleportService"):Teleport(12712288037)
print("HI")
end)

KillingCheats:CreateButton("Slap battles A", function()
    game:GetService("TeleportService"):Teleport(12845859004)
print("HI")
end)

KillingCheats:CreateButton("200 players", function()
    game:GetService("TeleportService"):Teleport(13592060273)
print("HI")
end)

KillingCheats:CreateButton("The dark realm", function()
    game:GetService("TeleportService"):Teleport(13833961666)
print("HI")
end)

KillingCheats:CreateButton("The null zone", function()
    game:GetService("TeleportService"):Teleport(14422118326)
print("HI")
end)

KillingCheats:CreateButton("Tower defence", function()
    game:GetService("TeleportService"):Teleport(15228348051)
print("HI")
end)

KillingCheats:CreateButton("Christmas event", function()
    game:GetService("TeleportService"):Teleport(15507333474)
print("HI")
end)

KillingCheats:CreateButton("The C", function()
    game:GetService("TeleportService"):Teleport(15880267452)
print("HI")
end)

KillingCheats:CreateButton("Staff application", function()
    game:GetService("TeleportService"):Teleport(16034567693)
print("HI")
end)
KillingCheats:CreateButton("SR matchmaking testing", function()
    game:GetService("TeleportService"):Teleport(16467982597)
print("HI")
end)

KillingCheats:CreateButton("?", function()
    game:GetService("TeleportService"):Teleport(11828384869)
print("HI")
end)

local PhantomForcesWindow = Library:NewWindow("Extras")
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Slap%20battles.lua"))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Fly.lua'))))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Teleport_Tool.lua'))()

loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/ANTI_AFK.lua'))()

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

-- its universal
local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow(":) Get yourself")

local KillingCheats = PhantomForcesWindow:NewSection("?")

KillingCheats:CreateButton("Free gamepass", function()
    if game.CreatorType == Enum.CreatorType.User then game.Players.LocalPlayer.UserId = game.CreatorId end if game.CreatorType == Enum.CreatorType.Group then game.Players.LocalPlayer.UserId = game:GetService("GroupService"):GetGroupInfoAsync(game.CreatorId).Owner.Id end

game.Players.LocalPlayer.Character.Humanoid.Health = 0
print("HI")
end)


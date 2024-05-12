-- Notification loader
local players = game:GetService("Players")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Note";
    Text = "You executed Aimer. please note that hitbox,aimbot is automatically executed." .. players.LocalPlayer.DisplayName;
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. players.LocalPlayer.UserId .. "&w=180&h=180 true";
    Duration = 5
})

-- Gui LS

-- Aimbot LS

-- Hitbox LS

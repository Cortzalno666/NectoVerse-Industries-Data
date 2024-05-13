-- [[ made by  NectoVerse D. | An mobile version of Aimer.]]

-- [[ Aimer X2 ]]

-- Notification loader
local players = game:GetService("Players")
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Note";
    Text = "You executed Aimer. please note that hitbox is auto activated but X2 have manual Aimbot activation, we dont own the aimbot script sadly. mention: " .. players.LocalPlayer.DisplayName;
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. players.LocalPlayer.UserId .. "&w=180&h=180 true";
    Duration = 5
})

-- Gui LS
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Aimer.lua'))()
-- Aimbot LS
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Aimer_toggleable_aimbot.lua'))()
-- Hitbox LS
loadstring(game:HttpGet('https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/master/Scripts%20Folder/Aimer_hitbox.lua'))()

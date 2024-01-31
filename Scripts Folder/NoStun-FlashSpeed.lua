--[[
	Note: This script was made to have no stun in The Strongest Battleground with Speed of Flash. This becomes universal because of its code.
Version: 1
Creators: NectoVerse Development
]]
-- Notification
game.StarterGui:SetCore("SendNotification", 
  { Title = "Script Loaded"; 
    Text = "Made by NectoVerse Development"; 
    Icon = ""; Duration = 20; }) 
-- Functioning!
function isNumber(str) if tonumber(str) ~= nil or str == 'inf' then return true end end local tspeed = 3 local hb = game:GetService("RunService").Heartbeat local tpwalking = true local player = game:GetService("Players") local lplr = player.LocalPlayer local chr = lplr.Character local hum = chr and chr:FindFirstChildWhichIsA("Humanoid") while tpwalking and hb:Wait() and chr and hum and hum.Parent do if hum.MoveDirection.Magnitude > 0 then if tspeed and isNumber(tspeed) then chr:TranslateBy(hum.MoveDirection * tonumber(tspeed)) else chr:TranslateBy(hum.MoveDirection) end end end

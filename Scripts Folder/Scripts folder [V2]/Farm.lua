
-- Settings --
getgenv().ChestFarm = true;

-- Chest Farm --
spawn(function()
while task.wait(.7) do
if getgenv().ChestFarm then
pcall(function()
            for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
               if v.Name:find("Chest") and v.ClassName == "Part" then
               local Distance2 = (v.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
               if Distance2 < 999 then
                   Speed2 = 100000
                  elseif Distance2 < 1000 then
                   Speed2 = 600
                   elseif Distance2 >= 1000 then
                       Speed2 = 300
                   end
               local tween_s = game:service"TweenService"
               local info = TweenInfo.new(Distance2/Speed2, Enum.EasingStyle.Linear)
                   local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = v.CFrame * CFrame.new(0,0,1)})
                   tween:Play()
                   wait(Distance2/Speed2)
                   wait(1.1)
               end
           end
          end)
      end
    end
end)

spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/L1ZOT/Blox-Fruit/main/Chest-Farm"))()
    end)

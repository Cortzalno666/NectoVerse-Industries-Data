--[[
	A Recreation by NectoVerse Development.
Version: 1
Status: Online
]]
local LocalPlayer = game:GetService("Players").LocalPlayer
local Heartbeat = game:GetService("RunService").Heartbeat

Heartbeat:Connect(function()
    LocalPlayer.MaximumSimulationRadius = math.huge
    sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
end)

wait(0.2)

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
    if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then 
    game:GetService("RunService").Heartbeat:connect(function()
    v.Velocity = Vector3.new(-30,0,0)
    end)
    end
    end
    
wait(0.2)


local character = game.Players.LocalPlayer.Character
local tools = {}
for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") 
        then v.Parent = character
        table.insert(tools,v)
    end
end
wait()
for i, v in pairs(tools) do
    v.Parent = game.Players.LocalPlayer.Backpack
end   
 wait(0.1)
 
 
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "Netless [NVD] Has been launched!";
        Text = "Recreation By NectoVerse Development";
        Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
    Duration = 16;
    

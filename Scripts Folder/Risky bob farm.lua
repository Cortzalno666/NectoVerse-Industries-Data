local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local myPart = Instance.new("Part")

wait(0.5)
fireclickdetector(game.Workspace.Lobby.Replica.ClickDetector)
wait(0.2)
myPart.Transparency = 0.5
myPart.Anchored = true
myPart.Size = Vector3.new(9,3,9)
myPart.Parent = game.Workspace
myPart.CFrame = CFrame.new(21.0028305, -154.978516, -10.9418917, -0.998630345, 0.00382314296, 0.0521808378, 2.93385938e-06, 0.997330785, -0.0730154663, -0.0523207076, -0.0729153082, -0.995964825)
myPart.Rotation = Vector3.new(0,0,0)
wait(1)
game.Workspace.DEATHBARRIER:Destroy()
game.Workspace.DEATHBARRIER2:Destroy()
game.Workspace.dedBarrier:Destroy()
char.Head.Nametag:Destroy()
char.HumanoidRootPart.CFrame = CFrame.new(-563.724304, 329.831696, 3.99024963, 1, 0, 0, 0, 1, 0, 0, 0, 1)
wait(1)
char.HumanoidRootPart.CFrame = CFrame.new(20.9338531, -150.978561, -10.9107265, -0.999847591, -1.31020359e-08, 0.01745921, -1.32495597e-08, 1, -8.33395486e-09, -0.01745921, -8.56401083e-09, -0.999847591)
wait(0.2)
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack(args))
while wait(14) do
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage").Duplicate:FireServer(unpack(args))
wait(1)
char.HumanoidRootPart.CFrame = CFrame.new(20.9338531, -150.978561, -10.9107265, -0.999847591, -1.31020359e-08, 0.01745921, -1.32495597e-08, 1, -8.33395486e-09, -0.01745921, -8.56401083e-09, -0.999847591)
end

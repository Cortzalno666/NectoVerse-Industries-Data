
wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "Welcome"; -- the title
Text = "Script Made By NVD. Equip the tool and click anywhere to Teleport"; -- Instructions and introduction
Icon = ""; -- the image if u want. 
Duration = 7; -- We gud with 7
})




mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack

-- Anti English or spanish! as long as you have this tool in your inventory, you are safe from english or spanish.
wait(1.2)
game.StarterGui:SetCore("SendNotification", {
Title = "You met Golden Air!"; -- the title
Text = "You are now protected from EoS as long you have this tool."; -- Instructions and introduction
Icon = "";
Duration = 7; -- We gud with 7
})




mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = true
tool.Name = "Golden Air"
tool.Parent = game.Players.LocalPlayer.Backpack

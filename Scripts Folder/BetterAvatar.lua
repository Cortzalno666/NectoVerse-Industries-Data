-- credits to donjosx

local Namecall
Namecall = hookmetamethod(game, "__namecall", function(self, ...)
   if getnamecallmethod() == "FireServer" and tostring(self) == "Ban" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "WalkSpeedChanged" then
       return
   elseif getnamecallmethod() == "FireServer" and tostring(self) == "AdminGUI" then
       return
   end
   return Namecall(self, ...)
end)

if game.CoreGui:FindFirstChild("BetterAvatar") then
game.CoreGui:FindFirstChild("BetterAvatar"):Destroy()
end 

local gui = Instance.new("ScreenGui")
gui.Name = "BetterAvatar"
gui.Parent = game.CoreGui

local Line = Instance.new("Frame", gui)
Line.Size = UDim2.new(0.2, 0, 0.58, 0)
Line.Position = UDim2.new(0.1, 0, 0.3, 0)
Line.BackgroundColor3 = Color3.new(1, 1, 1)
Line.Active = true
Line.BackgroundTransparency = 0 
Line.Draggable = true
local Bar = Instance.new("TextLabel", Line)
Bar.Size = UDim2.new(1, 0, 0.07, 0)
Bar.BackgroundColor3 = Color3.new(1, 1, 1)
Bar.Text = "Avatar Bonus"
Bar.TextSize = 16
Bar.BackgroundTransparency = 0
Bar.Font = Enum.Font.SourceSansBold
local Destroy = Instance.new("TextButton", Line)
Destroy.Size = UDim2.new(0.1, 0, 0.07, 0)
Destroy.Position = UDim2.new(0, 0, 0, 0)
Destroy.BackgroundColor3 = Color3.new(1, 1, 1)
Destroy.BorderColor3 = Color3.new(1, 0, 0)
Destroy.TextColor3 = Color3.new(1, 0, 0)
Destroy.Text = "X"
Destroy.MouseButton1Up:Connect(function()
gui:Destroy()
end)

local Credit = Instance.new("TextLabel", Line)
Credit.Size = UDim2.new(0.3, 0, 0.2, 0)
Credit.Position = UDim2.new(.5, 0, .88, 0)
Credit.Text = "Made by @OMOHOTA"
Credit.BackgroundTransparency = 1
Credit.TextColor3 = Color3.new(.4, .4, .4)

local F = Instance.new("Frame", Line)
F.Size = UDim2.new(0.95, 0, 0.85, 0)
F.Position = UDim2.new(0.025, 0, 0.1, 0)
F.BackgroundColor3 = Color3.new(1, 1, 1)
F.BorderColor3 = Color3.new(0, 0, 0)
F.BorderSizePixel = 1


local UIListLayout = Instance.new("UIListLayout", F)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

local function AddButton(Name, Pcall)
local TextButton = Instance.new("TextButton", F)
TextButton.Size = UDim2.new(0.95, 0, 0.1, 0)
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Text = Name
TextButton.Font = Enum.Font.SourceSans
TextButton.TextScaled = true
TextButton.MouseButton1Up:Connect(Pcall)
return TextButton
end

local Lin2 = Instance.new("Frame", gui)
Lin2.Size = UDim2.new(0.2, 0, 0.38, 0)
Lin2.Position = UDim2.new(0.325, 0, 0.5, 0)
Lin2.BackgroundColor3 = Color3.new(1, 1, 1)
Lin2.Active = true
Lin2.BackgroundTransparency = 0 
Lin2.Draggable = true
Lin2.Visible = false
local Bar2 = Instance.new("TextLabel", Lin2)
Bar2.Size = UDim2.new(1, 0, 0.07, 0)
Bar2.BackgroundColor3 = Color3.new(1, 1, 1)
Bar2.Text = "Avatar Buff"
Bar2.TextSize = 16
Bar2.Font = Enum.Font.SourceSansBold

local F2 = Instance.new("Frame", Lin2)
F2.Size = UDim2.new(0.95, 0, 0.85, 0)
F2.Position = UDim2.new(0.025, 0, 0.1, 0)
F2.BackgroundColor3 = Color3.new(1, 1, 1)
F2.BorderColor3 = Color3.new(0, 0, 0)
F2.BorderSizePixel = 1

local Hide = Instance.new("TextButton", Lin2)
Hide.Size = UDim2.new(0.1, 0, 0.07, 0)
Hide.Position = UDim2.new(0, 0, 0, 0)
Hide.BackgroundColor3 = Color3.new(1, 1, 1)
Hide.BorderColor3 = Color3.new(1, 0, 0)
Hide.TextColor3 = Color3.new(1, 0, 0)
Hide.Text = "-"
Hide.MouseButton1Up:Connect(function()
Lin2.Visible = not Lin2.Visible
end)

local UIListLayout2 = Instance.new("UIListLayout", F2)
UIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout2.Padding = UDim.new(0, 5)

local function AddButton2(Name, Pcall)
local TextButton = Instance.new("TextButton", F2)
TextButton.Size = UDim2.new(0.95, 0, 0.15, 0)
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Text = Name
TextButton.Font = Enum.Font.SourceSans
TextButton.TextScaled = true
TextButton.MouseButton1Up:Connect(Pcall)
return TextButton
end

local Lin3 = Instance.new("Frame", gui)
Lin3.Size = UDim2.new(0.2, 0, 0.38, 0)
Lin3.Position = UDim2.new(0.325, 0, 0.3, 0)
Lin3.BackgroundColor3 = Color3.new(1, 1, 1)
Lin3.Active = true
Lin3.BackgroundTransparency = 0 
Lin3.Draggable = true
Lin3.Visible = false
local Bar2 = Instance.new("TextLabel", Lin3)
Bar2.Size = UDim2.new(1, 0, 0.07, 0)
Bar2.BackgroundColor3 = Color3.new(1, 1, 1)
Bar2.Text = "EXTRA"
Bar2.TextSize = 16
Bar2.Font = Enum.Font.SourceSansBold

local F3 = Instance.new("Frame", Lin3)
F3.Size = UDim2.new(0.95, 0, 0.85, 0)
F3.Position = UDim2.new(0.025, 0, 0.1, 0)
F3.BackgroundColor3 = Color3.new(1, 1, 1)
F3.BorderColor3 = Color3.new(0, 0, 0)
F3.BorderSizePixel = 1

local Hide2 = Instance.new("TextButton", Lin3)
Hide2.Size = UDim2.new(0.1, 0, 0.07, 0)
Hide2.Position = UDim2.new(0, 0, 0, 0)
Hide2.BackgroundColor3 = Color3.new(1, 1, 1)
Hide2.BorderColor3 = Color3.new(1, 0, 0)
Hide2.TextColor3 = Color3.new(1, 0, 0)
Hide2.Text = "-"
Hide2.MouseButton1Up:Connect(function()
Lin3.Visible = not Lin3.Visible
end)

local UIListLayout3 = Instance.new("UIListLayout", F3)
UIListLayout3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout3.Padding = UDim.new(0, 5)

local function AddButton3(Name, Pcall)
local TextButton = Instance.new("TextButton", F3)
TextButton.Size = UDim2.new(0.95, 0, 0.15, 0)
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.Text = Name
TextButton.Font = Enum.Font.SourceSans
TextButton.TextScaled = true
TextButton.MouseButton1Up:Connect(Pcall)
return TextButton
end

local plr = game.Players.LocalPlayer
local basefolder = game:GetService("Workspace"):FindFirstChild("BasementFolder")
local corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
local controlbutton
local generator

function Foundbase()
	local plr = game.Players.LocalPlayer
	local basefolder = game:GetService("Workspace"):FindFirstChild("BasementFolder")
	local corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	local base = workspace:FindFirstChild(plr.Name .. "'s avatar_land")
	local clone = workspace:FindFirstChild(plr.Name .. "'s Avatar")
	if clone then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Task can't be done as a clone", Duration = 1}) return false end
	if base then
		if corebase then 
			return true
		end
	end
	game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Base not found", Duration = .5})
	return false
end

function Foundbase2()
	local plr = game.Players.LocalPlayer
	local basefolder = game:GetService("Workspace"):FindFirstChild("BasementFolder")
	local corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	local base = workspace:FindFirstChild(plr.Name .. "'s avatar_land")
	if base then
		if corebase then 
			return true
		end
	end
	game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Base not found", Duration = .5})
	return false
end

AddButton("Enter base normal way", function()
	if not Foundbase() then return end
	plr = game.Players.LocalPlayer
	base = workspace:FindFirstChild(plr.Name .. "'s avatar_land")
	corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	local mainBase = base:FindFirstChild("main")
	if not mainBase then return end
	local animation= plr:FindFirstChild("No&#&--#")
	if not animation then
    	animation = Instance.new("Animation", plr)
        animation.AnimationId = "rbxassetid://18506587588"
        animation.Name = "No&#&--#"
    end
	plr.Character.HumanoidRootPart.CFrame = mainBase.CFrame
	task.wait(.2)
	fireproximityprompt(mainBase.ProximityPrompt)
	task.wait(.3)
	local Humanoid = plr.Character:FindFirstChildOfClass("Humanoid") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("AnimationController")
    local ActiveTracks = Humanoid:GetPlayingAnimationTracks()
    for _, v in pairs(ActiveTracks) do
        if v.Animation.AnimationId == "rbxassetid://18506587588" then 
            break 
        else 
            plr.Character.Humanoid:LoadAnimation(animation):Play()
            plr.Character.HumanoidRootPart.Anchored = true
            task.wait(2)
            plr.Character.HumanoidRootPart.Anchored = false
            plr.Character.Humanoid:LoadAnimation(animation):Stop()
            task.wait(.1)
            plr.Character.HumanoidRootPart.CFrame = corebase.interact.CFrame * CFrame.new(0,5,0)
            break
        end
    end 
    return animation 
end)


AddButton("Teleport to inside base", function()
	if not Foundbase() then return end
	plr = game.Players.LocalPlayer
	corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	plr.Character.HumanoidRootPart.CFrame = corebase.interact.CFrame
end)

AddButton("Start Avatar", function()
	if not Foundbase() then return end
	plr = game.Players.LocalPlayer
	corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	if corebase.Monitor2.Screen.Transparency ~= .5 then game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "You haven't created a avatar clone to control yet!", Duration = .5}) return end
	controlbutton = corebase:FindFirstChild("play")
	if controlbutton then
		plr.Character.HumanoidRootPart.CFrame = controlbutton.CFrame
		task.wait(.1)
		fireproximityprompt(controlbutton.ProximityPrompt)
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "ProximityPrompt not found", Duration = .5})
	end
end)

local OgPlace
AddButton("Fix Generator", function()
	if not Foundbase() then return end
	plr = game.Players.LocalPlayer
	OgPlace = plr.Character.HumanoidRootPart.CFrame
	base = workspace:FindFirstChild(plr.Name .. "'s avatar_land")
	corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	if not corebase:FindFirstChild("gen_status") then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Generator not found", Duration = .5}) return end
	if corebase.gen_status.Screen.SurfaceGui.TextLabel.Text ~= "Generator Status: Broken" then game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Generator still good ðŸ‘", Duration = .3}) return end
	generator = base:FindFirstChild("Generator")
	if not generator then return end
	
	plr.Character.HumanoidRootPart.CFrame = generator.CFrame
	task.wait(.3)
	fireproximityprompt(generator.broken.prompt)
	plr.Character.HumanoidRootPart.CFrame = OgPlace
end)

AddButton("View Outside", function()
	if not Foundbase2() then return end
	plr = game.Players.LocalPlayer
	base = workspace:FindFirstChild(plr.Name .. "'s avatar_land")
	local baseHITBOX = base:FindFirstChild("Hitbox")
	if baseHITBOX then
		if game.Workspace.CurrentCamera.CameraSubject == plr.Character.Humanoid then
			game.Workspace.CurrentCamera.CameraSubject = baseHITBOX 
		else
			game.Workspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
		end
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Base not found", Duration = .5})
	end
end)

local Og1 = nil
local BringAvatarGui = Instance.new("TextButton", F)
BringAvatarGui.Size = UDim2.new(0.95, 0, 0.1, 0)
BringAvatarGui.BackgroundColor3 = Color3.new(1, 1, 1)
BringAvatarGui.Text = "Bring Avatar Gui"
BringAvatarGui.Font = Enum.Font.SourceSans
BringAvatarGui.TextScaled = true
BringAvatarGui.MouseButton1Up:Connect(function()
	if not Foundbase2() then return end
	plr = game.Players.LocalPlayer
	corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	local Gui1 = corebase:FindFirstChild("hologram") 
	if not Gui1 then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Hologram not found", Duration = .5}) return end
	if BringAvatarGui.BackgroundColor3 == Color3.new(1, 1, 1) then 
		BringAvatarGui.BackgroundColor3 = Color3.new(0, 0, 1)
		Og1 = Gui1.CFrame
		Gui1.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(5, 5, 0)
	else
		Gui1.CFrame = Og1
		BringAvatarGui.BackgroundColor3 = Color3.new(1, 1, 1)
	end
end)

AddButton("Buff Avatar's Clone", function()
	Lin2.Visible = not Lin2.Visible
end)

AddButton("EXTRA", function()
	Lin3.Visible = not Lin3.Visible
end)

AddButton2("Hitbox Expansion", function()
	plr = game.Players.LocalPlayer
	if not Foundbase2() then return end
	clone = workspace:FindFirstChild(plr.Name .. "'s Avatar")
	repeat task.wait(.1)
		for i,v in pairs(game.Players:GetChildren()) do
			if v ~= game.Players.LocalPlayer and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
				v.Character.HumanoidRootPart.Size = Vector3.new(10,10,10)
				v.Character.HumanoidRootPart.Transparency = 0.75
			end
		end
	until not workspace:FindFirstChild(plr.Name .. "'s Avatar")
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v and v ~= plr and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("stevebody") == nil then
			v.Character.HumanoidRootPart.Size = plr.Character.HumanoidRootPart.Size
			v.Character.HumanoidRootPart.Transparency = 1
		end
	end
end)

local AlreadyClearEffect = true
AddButton2("Increase Walkspeed +3 (Humanoid's Buff = 23)", function()
	plr = game.Players.LocalPlayer
	game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
	if not Foundbase2() then return end
	clone = workspace:FindFirstChild(plr.Name .. "'s Avatar")
	if clone then
		if clone:FindFirstChild("Head") then AlreadyClearEffect = false game:GetService("ReplicatedStorage").slapstick:FireServer("runeffect") end
		plr.Character.Humanoid.WalkSpeed = plr.Character.Humanoid.WalkSpeed + 3
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "Walkspeed set to" .. plr.Character.Humanoid.WalkSpeed, Duration = .2})
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Clone not found", Duration = .5})
		plr.Character.Humanoid.WalkSpeed = 20
		if AlreadyClearEffect == false then
			game:GetService("ReplicatedStorage").slapstick:FireServer("runeffect")
			AlreadyClearEffect = true
		end
		return
	end
	repeat task.wait() until not workspace:FindFirstChild(plr.Name .. "'s Avatar")
	game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
	plr.Character.Humanoid.WalkSpeed = 20
	AlreadyClearEffect = true
end)

AddButton2("Increase JumpPower + 25 (Humanoid's Buff = 75)", function()
	plr = game.Players.LocalPlayer
	if not Foundbase2() then return end
	clone = workspace:FindFirstChild(plr.Name .. "'s Avatar")
	if clone then
		plr.Character.Humanoid.JumpPower = plr.Character.Humanoid.JumpPower + 25
		game.StarterGui:SetCore("SendNotification", {Title = "System", Text = "JumpPower set to" .. plr.Character.Humanoid.JumpPower, Duration = .2})
	else
		game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Clone not found", Duration = .5})
		plr.Character.Humanoid.JumpPower = 50
	end
	repeat task.wait() until not workspace:FindFirstChild(plr.Name .. "'s Avatar")
	plr.Character.Humanoid.JumpPower = 50
end)

AddButton2("Reset stats", function()
	plr = game.Players.LocalPlayer
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v and v.Name ~= plr.Name and v.Character and v.Character:FindFirstChild("HumanoidRootPart") and v.Character:FindFirstChild("entered") and v.Character:FindFirstChild("stevebody") == nil then
			v.Character.HumanoidRootPart.Size = plr.Character.HumanoidRootPart.Size
			v.Character.HumanoidRootPart.Transparency = 1
		end
	end
	plr.Character.Humanoid.WalkSpeed = 20
	plr.Character.Humanoid.JumpPower = 50
	game:GetService("ReplicatedStorage").slapstick:FireServer("cancelrun")
end)

local function FoundTycoon()
	for _,v in pairs(game.Workspace:GetChildren()) do
		if string.find(v.Name, "Ã…Tycoon") and v:FindFirstChild("Click") then
			return true
		end
	end
	return false
end

AddButton3("Teleport To Arena", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0,-5,0)
end)

AddButton3("Place Tycoon and Basement", function()
	if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) or not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 4414076328730650) then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "You don't have owned Avatar or Tycoon glove!", Duration = 1}) return end
	plr = game.Players.LocalPlayer
    if plr.Character:FindFirstChild("entered") then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "You Already entered arena, only use in lobby + Teleport to Arena", Duration = 1}) return end
    fireclickdetector(workspace.Lobby.Tycoon.ClickDetector)
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -2.55, -20) * CFrame.Angles(0, 1.5, 0)))
    task.wait(.5)
    fireclickdetector(workspace.Lobby.Avatar.ClickDetector)
    task.wait(.5)
    game:GetService("ReplicatedStorage").GeneralAbility:FireServer(unpack(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -2.55, -20) * CFrame.Angles(0, 1.5, 0)))
end) 

local AutoTycoon = false
AddButton3("Auto Click Tycoon", function()
	AutoTycoon = not AutoTycoon
	if AutoTycoon then game.StarterGui:SetCore("SendNotification", {Title = "Setting", Text = "On", Duration = 1}) else game.StarterGui:SetCore("SendNotification", {Title = "Setting", Text = "Off", Duration = 1}) return end
	if FoundTycoon() then
		for i,v in pairs(game.Workspace.BasementFolder[game.Players.LocalPlayer.Name .. "'s Basement"]:GetDescendants()) do
			if v.Parent.Name == "Exit" then
				Og = v.CFrame
				v.CFrame = plr.Character.HumanoidRootPart.CFrame
				task.wait(.5)
				v.CFrame = Og
			end
		end
		while AutoTycoon and FoundTycoon() do task.wait()
			for _,v in pairs(game.Workspace:GetChildren()) do
				if string.find(v.Name, "Ã…Tycoon") and v:FindFirstChild("Click") then
					fireclickdetector(v.Click.ClickDetector, 0)
					fireclickdetector(v.Click.ClickDetector, 1)
				else
					game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "There's no tycoon in the game", Duration = 3})
					AutoTycoon = false
					break
				end
			end
		end
	end 
end) 

AddButton3("Connect Tycoon", function()
	if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2129212145) or not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 4414076328730650) then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "You don't have owned Avatar or Tycoon glove!", Duration = 1}) return end
	if not Foundbase() or not FoundTycoon() then return end
	plr = game.Players.LocalPlayer
	base = workspace:FindFirstChild(plr.Name .. "'s avatar_land")
	local Connect = base:FindFirstChild("Antenna")
	if not Connect then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "You have to buy Tycoon support!", Duration = 1}) return end
	for _,v in pairs(game.Workspace:GetChildren()) do
		if string.find(v.Name, "Ã…Tycoon") and v:FindFirstChild("Click") then
			Og = plr.Character.HumanoidRootPart.CFrame
			plr.Character.HumanoidRootPart.CFrame = Connect
			task.wait(.25)
			fireproximityprompt(Connect.Main.ProximityPrompt)
			task.wait(.05)
			plr.Character.HumanoidRootPart.CFrame = Og
		else
			game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "There's no tycoon in the game", Duration = 3}) return
		end
	end
end) 

local AutoGen = false
AddButton3("Auto fix generator", function()
	if not Foundbase() then return end
	plr = game.Players.LocalPlayer
	OgPlace = plr.Character.HumanoidRootPart.CFrame
	base = workspace:FindFirstChild(plr.Name .. "'s avatar_land")
	corebase = basefolder:FindFirstChild(plr.Name .. "'s Basement")
	if not corebase:FindFirstChild("gen_status") then game.StarterGui:SetCore("SendNotification", {Title = "Error", Text = "Generator not found", Duration = .5}) return end
	generator = base:FindFirstChild("Generator")
	if not generator then return end
	AutoGen = not AutoGen
	if AutoGen then game.StarterGui:SetCore("SendNotification", {Title = "Setting", Text = "On", Duration = 1}) else game.StarterGui:SetCore("SendNotification", {Title = "Setting", Text = "Off", Duration = 1}) return end
	while AutoGen do task.wait(.5)
		if corebase.gen_status.Screen.SurfaceGui.TextLabel.Text == "Generator Status: Broken" and not workspace:FindFirstChild(plr.Name .. "'s Avatar") then
			
			plr.Character.HumanoidRootPart.CFrame = generator.CFrame
			task.wait(.3)
			fireproximityprompt(generator.broken.prompt)
			plr.Character.HumanoidRootPart.CFrame = OgPlace
		end
	end
end) 

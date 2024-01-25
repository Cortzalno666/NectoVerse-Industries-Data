-- Loading UI Library | Mercury Library
local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()
-- Creating the GUI
local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}
-- Creating the Tab 1
local Tab = GUI:Tab{
	Name = "Starter TAB",
	Icon = "rbxassetid://8569322835"
}
-- buttons
Tab:Button{
	Name = "F To noclip",
	Description = nil,
	Callback = function()
	local function WJTYAY_fake_script() -- f_to_noclip.LocalScript 
	local script = Instance.new('LocalScript', f_to_noclip)

	function do_stuff()
		local noclip = false
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
	
			if key == "f" then
				noclip = not noclip
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
	end
   script.Parent.MouseButton1Click:Connect(do_stuff)
end
	
	end
}

Tab:Button{
	Name = "Remove Enemy Base forcefield",
	Description = nil,
	Callback = function()
	coroutine.wrap(WJTYAY_fake_script)()
local function QHQBD_fake_script() -- remove_force_fields.LocalScript 
	local script = Instance.new('LocalScript', remove_force_fields)

	function do_stuff()
		for i,v in pairs(workspace:FindFirstChild("Zednov's Tycoon Kit"):FindFirstChild("Tycoons"):GetChildren()) do
			for j,w in pairs(v.PurchasedObjects:GetChildren()) do
				if w.Name:lower() == "roof barrier jutsu" and v.Owner.Value ~= game.Players.LocalPlayer.Character.Name then
					w:Remove()
				end
			end
		end
	end
	
	script.Parent.MouseButton1Click:Connect(do_stuff)
	
	
	-- FOR WALL REMOVAL
	
end
	
	end
}

Tab:Button{
	Name = "Remove Enemy Base Wall",
	Description = nil,
	Callback = function()
	coroutine.wrap(QHQBD_fake_script)()
local function LHGS_fake_script() -- remove_walls.LocalScript 
	local script = Instance.new('LocalScript', remove_walls)

	function do_stuff()
		for i,v in pairs(workspace:FindFirstChild("Zednov's Tycoon Kit"):FindFirstChild("Tycoons"):GetChildren()) do
			for j,w in pairs(v.PurchasedObjects:GetChildren()) do
				if w.Name:lower():match("wall") and v.Owner.Value ~= game.Players.LocalPlayer.Character.Name then
					w:Remove()
				end
			end
		end
	end
	
	script.Parent.MouseButton1Click:Connect(do_stuff)
	
end
	
	end
}

Tab:Button{
	Name = "Get all jutsu from all enemy base (ENEMY BASE NEEDS TO HAVE ATLEAST 1 JUTSU TO GET THE JUTSU FROM THEM)",
	Description = nil,
	Callback = function()
coroutine.wrap(LHGS_fake_script)()
local function KLNR_fake_script() -- get_all_jutsus.LocalScript 
	local script = Instance.new('LocalScript', get_all_jutsus)

	function do_stuff()
		for i,v in pairs(workspace:FindFirstChild("Zednov's Tycoon Kit"):FindFirstChild("Tycoons"):GetChildren()) do
			for j,w in pairs(v.PurchasedObjects:GetChildren()) do
				for k,x in pairs(w:GetChildren()) do
					for h,y in pairs(x:GetChildren()) do
						if y.Name == "Head" then
							y.CanCollide = false
							y.Position = game.Players.LocalPlayer.Character.Head.Position
						end
					end
				end
			end
		end
	end
	
	script.Parent.MouseButton1Click:Connect(do_stuff)
	
end
		
	end
}

Tab:Button{
	Name = "T to Teleport",
	Description = nil,
	Callback = function()
	coroutine.wrap(GGAFFDR_fake_script)()
local function KMYD_fake_script() -- t_to_teleport.LocalScript 
	local script = Instance.new('LocalScript', t_to_teleport)

	function do_stuff()
		local localplayer = game.Players.LocalPlayer
		local noclip = false
		game:GetService('RunService').Stepped:connect(function()
			if noclip then
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
			end
		end)
		local plr = game.Players.LocalPlayer
		local mouse = plr:GetMouse()
		mouse.KeyDown:connect(function(key)
			if key == "t" then
				local player = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
				localplayer.Character:moveTo(player.Character.Head.Position)
			end
		end)
	end
	
	script.Parent.MouseButton1Click:Connect(do_stuff)
end
	
	end
}

Tab:Button{
	Name = "Fly",
	Description = nil,
	Callback = function()
	coroutine.wrap(GMNEUKG_fake_script)()
local function AYQGBW_fake_script() -- fly.LocalScript 
	local script = Instance.new('LocalScript', fly)

	function do_stuff()
		repeat wait() 
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
		local mouse = game.Players.LocalPlayer:GetMouse() 
		repeat wait() until mouse
		local plr = game.Players.LocalPlayer 
		local torso = plr.Character.Head 
		local flying = false
		local deb = true 
		local ctrl = {f = 0, b = 0, l = 0, r = 0} 
		local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		local maxspeed = 50 
		local speed = 0 
	
		function Fly() 
			local bg = Instance.new("BodyGyro", torso) 
			bg.P = 9e4 
			bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
			bg.cframe = torso.CFrame 
			local bv = Instance.new("BodyVelocity", torso) 
			bv.velocity = Vector3.new(0,0.1,0) 
			bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
			repeat wait() 
				plr.Character.Humanoid.PlatformStand = true 
				if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
					speed = speed+.5+(speed/maxspeed) 
					if speed > maxspeed then 
						speed = maxspeed 
					end 
				elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
					speed = speed-1 
					if speed < 0 then 
						speed = 0 
					end 
				end 
				if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
					lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
				elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
					bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
				else 
					bv.velocity = Vector3.new(0,0.1,0) 
				end 
				bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
			until not flying 
			ctrl = {f = 0, b = 0, l = 0, r = 0} 
			lastctrl = {f = 0, b = 0, l = 0, r = 0} 
			speed = 0 
			bg:Destroy() 
			bv:Destroy() 
			plr.Character.Humanoid.PlatformStand = false 
		end 
		mouse.KeyDown:connect(function(key) 
			if key:lower() == "e" then 
				if flying then flying = false 
				else 
					flying = true 
					Fly() 
				end 
			elseif key:lower() == "w" then 
				ctrl.f = 1 
			elseif key:lower() == "s" then 
				ctrl.b = -1 
			elseif key:lower() == "a" then 
				ctrl.l = -1 
			elseif key:lower() == "d" then 
				ctrl.r = 1 
			end 
		end) 
		mouse.KeyUp:connect(function(key) 
			if key:lower() == "w" then 
				ctrl.f = 0 
			elseif key:lower() == "s" then 
				ctrl.b = 0 
			elseif key:lower() == "a" then 
				ctrl.l = 0 
			elseif key:lower() == "d" then 
				ctrl.r = 0 
			end 
		end)
		Fly()
	end
	
	script.Parent.MouseButton1Click:Connect(do_stuff)
end
	
	end
}

Tab:Button{
	Name = "Astolfo Pet",
	Description = nil,
	Callback = function()
        coroutine.wrap(AYQGBW_fake_script)()
local function SRQF_fake_script() -- astolfo_pet.LocalScript 
	local script = Instance.new('LocalScript', astolfo_pet)

	function do_stuff()
		local localPlayer = game.Players.LocalPlayer
	
		local astolfo = Instance.new("Part")
		astolfo.Parent = workspace
		astolfo.Size = Vector3.new(1, 4.75, 1)
		astolfo.Anchored = true
		astolfo.Position = Vector3.new(0, 2.5, 0)
		astolfo.Name = "Astolfo"
		astolfo.Anchored = false
		astolfo.CanCollide = false
		astolfo.Locked = true
	
		local mesh = Instance.new("FileMesh")
		mesh.MeshId = "rbxassetid://3278819081"
		mesh.TextureId = "rbxassetid://3278819251"
		mesh.Offset = Vector3.new(0, 0, 0)
		mesh.Scale = Vector3.new(0.12, 0.1, 0.14)
		mesh.VertexColor = Vector3.new(1, 1, 1)
		mesh.Parent = astolfo
	
		local astolfo_attachment = Instance.new("Attachment")
		astolfo_attachment.Parent = astolfo
	
		local head_attachment = Instance.new("Attachment")
		head_attachment.Parent = localPlayer.Character.Head
		head_attachment.Name = "astolfo_attachment"
		head_attachment.Position = Vector3.new(3.631, -2, 0.239)
	
		local align_position = Instance.new("AlignPosition")
		align_position.Attachment0 = astolfo_attachment
		align_position.Attachment1 = head_attachment
		align_position.Parent = astolfo
	
		local align_orientation = Instance.new("AlignOrientation")
		align_orientation.Attachment0 = astolfo_attachment
		align_orientation.Attachment1 = head_attachment
		align_orientation.Parent = astolfo
	
		local dialog = Instance.new("Dialog")
		dialog.Parent = astolfo
		dialog.InitialPrompt = "Yahoo! What's your command, master?"
		dialog.GoodbyeDialog = "Thanks!"
		dialog.Tone = Enum.DialogTone.Friendly
	
		local dialog_choice_noclip = Instance.new("DialogChoice")
		dialog_choice_noclip.Name = "noclip_choice"
		dialog_choice_noclip.UserDialog = "E to noclip"
		dialog_choice_noclip.ResponseDialog = "You can now press E to noclip!"
		dialog_choice_noclip.Parent = dialog
	
		local dialog_choice_btools = Instance.new("DialogChoice")
		dialog_choice_btools.Name = "btools_choice"
		dialog_choice_btools.UserDialog = "Btools"
		dialog_choice_btools.ResponseDialog = "Here are your tools, master!"
		dialog_choice_btools.Parent = dialog
	
		local dialog_choice_speed = Instance.new("DialogChoice")
		dialog_choice_speed.Name = "speed_choice"
		dialog_choice_speed.UserDialog = "Toggle speed"
		dialog_choice_speed.ResponseDialog = "There you go master ❤️"
		dialog_choice_speed.Parent = dialog
	
		local astolfo_sounds = {"rbxassetid://4942209956", "rbxassetid://2901058656", "rbxassetid://7109386510"}
	
	
		local astolfo_voice = Instance.new("Sound")
		astolfo_voice.Parent = astolfo
		astolfo_voice.Volume = 5
	
		dialog.DialogChoiceSelected:Connect(function(player, choice)
			local random_choice = math.random(1, #astolfo_sounds)
	
			astolfo_voice.SoundId = astolfo_sounds[random_choice]
			astolfo_voice:Play()
	
			if choice.Name == "noclip_choice" then
				head_attachment.Position = Vector3.new(2.631, -1.75, -2.761)
				head_attachment.Orientation = Vector3.new(0, 135, 0)
				wait(4)
				head_attachment.Position = Vector3.new(3.631, -2, 0.239)
				head_attachment.Orientation = Vector3.new(0, 0, 0)
				local noclip = false
				game:GetService('RunService').Stepped:connect(function()
					if noclip then
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end)
				local plr = game.Players.LocalPlayer
				local mouse = plr:GetMouse()
				mouse.KeyDown:connect(function(key)
	
					if key == "e" then
						noclip = not noclip
						game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
					end
				end)
			end
	
			if choice.Name == "btools_choice" then
				head_attachment.Position = Vector3.new(2.631, -1.75, -2.761)
				head_attachment.Orientation = Vector3.new(0, 135, 0)
				wait(4)
				head_attachment.Position = Vector3.new(3.631, -2, 0.239)
				head_attachment.Orientation = Vector3.new(0, 0, 0)
				Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 2
				Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 3
				Instance.new("HopperBin", game.Players.LocalPlayer.Backpack).BinType = 4
			end
	
			if choice.Name == "speed_choice" then
				head_attachment.Position = Vector3.new(2.631, -1.75, -2.761)
				head_attachment.Orientation = Vector3.new(0, 135, 0)
				wait(4)
				head_attachment.Position = Vector3.new(3.631, -2, 0.239)
				head_attachment.Orientation = Vector3.new(0, 0, 0)
				local current_speed = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed
				if current_speed == 100 then
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
				else
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
				end
			end
		end)
	end
	
	script.Parent.MouseButton1Click:Connect(do_stuff)
end
coroutine.wrap(SRQF_fake_script)()
	
	end
}
-- Scripts:



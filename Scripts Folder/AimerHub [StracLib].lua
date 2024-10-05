game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Welcome", -- Required
	Text = "Made Using StracLib", -- Required
})

libary = {}
function libary:CreateMain(text)
	local StracLib = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local Top = Instance.new("Folder")
	local Title = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local SettingsPage = Instance.new("Frame")
	local Rejoin = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local TextAnimationFrame = Instance.new("Frame")
	local TextLabel_2 = Instance.new("TextLabel")
	local replay = Instance.new("ImageLabel")
	local Destroy = Instance.new("TextButton")
	local UICorner_4 = Instance.new("UICorner")
	local TextAnimationFrame_2 = Instance.new("Frame")
	local TextLabel_3 = Instance.new("TextLabel")
	local close = Instance.new("ImageLabel")
	local TextLabel_4 = Instance.new("TextLabel")
	local ControlBar = Instance.new("Frame")
	local UICorner_5 = Instance.new("UICorner")
	local Tabs = Instance.new("Frame")
	local settings = Instance.new("ImageButton")
	local UICorner_6 = Instance.new("UICorner")
	local home = Instance.new("ImageButton")
	local UICorner_7 = Instance.new("UICorner")
	local respawn = Instance.new("ImageButton")
	local search = Instance.new("ImageButton")
	local TextBox = Instance.new("TextBox")
	local UICorner_8 = Instance.new("UICorner")
	local UICorner_9 = Instance.new("UICorner")
	local Hats = Instance.new("Frame")
	local InfoTitle = Instance.new("TextLabel")
	local InfoIcon = Instance.new("ImageButton")
	local Frame_2 = Instance.new("Frame")
	local UICorner_10 = Instance.new("UICorner")
	local HatTitle = Instance.new("TextLabel")
	local Hat1 = Instance.new("TextLabel")
	local Hat2 = Instance.new("TextLabel")
	local Hat3 = Instance.new("TextLabel")
	local Hat4 = Instance.new("TextLabel")
	local Hat5 = Instance.new("TextLabel")
	local Ok = Instance.new("TextButton")
	local UICorner_11 = Instance.new("UICorner")
	local TextLabel_5 = Instance.new("TextLabel")
	local UICorner_12 = Instance.new("UICorner")
	local UiStroke = Instance.new("UIStroke")
	local UiStroke_1 = Instance.new("UIStroke")
	local UiStroke_2 = Instance.new("UIStroke")
	local Credits = Instance.new("TextLabel")

	UiStroke.Parent = ControlBar
	UiStroke.Color = Color3.fromRGB(66, 69, 73)
	UiStroke.Thickness = 2

	UiStroke_1.Parent = Frame
	UiStroke_1.Color = Color3.fromRGB(66, 69, 73)
	UiStroke_1.Thickness = 2

	UiStroke_2.Parent = Frame_2
	UiStroke_2.Color = Color3.fromRGB(66, 69, 73)
	UiStroke_2.Thickness = 2

	StracLib.Name = "StracLib"
	StracLib.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	StracLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	StracLib.ResetOnSpawn = false

	Main.Name = "Main"
	Main.Parent = StracLib
	Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Main.Position = UDim2.new(0.370458126, 0, 0.174708813, 0)
	Main.Size = UDim2.new(0, 319, 0, 389)

	Top.Name = "Top"
	Top.Parent = Main

	Title.Name = "Title"
	Title.Parent = Top
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.0474683568, 0, 0.0157068074, 0)
	Title.Size = UDim2.new(0, 119, 0, 34)
	Title.Font = Enum.Font.SourceSans
	Title.Text = text
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 14.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left

	Frame.Parent = Main
	Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(0.0506031476, 0, 0.120513059, 0)
	Frame.Size = UDim2.new(0, 286, 0, 255)

	UICorner.Parent = Frame

	ScrollingFrame.Parent = Frame
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.0279720277, 0, 0.0233463068, 0)
	ScrollingFrame.Size = UDim2.new(0, 271, 0, 243)
	ScrollingFrame.ScrollBarThickness = 0
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 15, 0)

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)

	SettingsPage.Name = "SettingsPage"
	SettingsPage.Parent = Frame
	SettingsPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SettingsPage.BackgroundTransparency = 1.000
	SettingsPage.Position = UDim2.new(1.028, 0, 0.0199999996, 0)
	SettingsPage.Size = UDim2.new(0, 271, 0, 243)
	
	
	Credits.Parent = SettingsPage
	Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Credits.BackgroundTransparency = 1.000
	Credits.Position = UDim2.new(0.022, 0, 0.835390925, 0)
	Credits.Size = UDim2.new(0, 118, 0, 40)
	Credits.Font = Enum.Font.SourceSans
	Credits.Text = "Made By NectoVerse Development"
	Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
	Credits.TextScaled = true
	Credits.TextSize = 14.000
	Credits.TextWrapped = true
	Credits.TextXAlignment = Enum.TextXAlignment.Left
	Credits.TextYAlignment = Enum.TextYAlignment.Bottom

	Rejoin.Name = "Rejoin"
	Rejoin.Parent = SettingsPage
	Rejoin.BackgroundColor3 = Color3.fromRGB(44, 47, 53)
	Rejoin.Position = UDim2.new(0, 5, 0, 5)
	Rejoin.Size = UDim2.new(0, 43, 0, 43)
	Rejoin.AutoButtonColor = false
	Rejoin.Font = Enum.Font.SourceSans
	Rejoin.Text = ""
	Rejoin.TextColor3 = Color3.fromRGB(0, 0, 0)
	Rejoin.TextSize = 14.000

	UICorner_3.Parent = Rejoin

	TextAnimationFrame.Name = "TextAnimationFrame"
	TextAnimationFrame.Parent = Rejoin
	TextAnimationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextAnimationFrame.BackgroundTransparency = 1.000
	TextAnimationFrame.ClipsDescendants = true
	TextAnimationFrame.Position = UDim2.new(0, 0, 1, 0)
	TextAnimationFrame.Size = UDim2.new(0, 46, 0, 20)

	TextLabel_2.Parent = TextAnimationFrame
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0, 0, 1, 0)
	TextLabel_2.Size = UDim2.new(0, 46, 0, 20)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "REJOIN"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextScaled = true
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextWrapped = true

	replay.Name = "replay"
	replay.Parent = Rejoin
	replay.Active = true
	replay.BackgroundTransparency = 1.000
	replay.LayoutOrder = 2
	replay.Position = UDim2.new(0.150657237, 0, 0.159744263, 0)
	replay.Selectable = true
	replay.Size = UDim2.new(0, 29, 0, 29)
	replay.ZIndex = 2
	replay.Image = "rbxassetid://3926307971"
	replay.ImageRectOffset = Vector2.new(244, 524)
	replay.ImageRectSize = Vector2.new(36, 36)

	Destroy.Name = "Destroy"
	Destroy.Parent = SettingsPage
	Destroy.BackgroundColor3 = Color3.fromRGB(44, 47, 53)
	Destroy.Position = UDim2.new(0, 73, 0, 5)
	Destroy.Size = UDim2.new(0, 43, 0, 43)
	Destroy.AutoButtonColor = false
	Destroy.Font = Enum.Font.SourceSans
	Destroy.Text = ""
	Destroy.TextColor3 = Color3.fromRGB(0, 0, 0)
	Destroy.TextSize = 14.000

	UICorner_4.Parent = Destroy

	TextAnimationFrame_2.Name = "TextAnimationFrame"
	TextAnimationFrame_2.Parent = Destroy
	TextAnimationFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextAnimationFrame_2.BackgroundTransparency = 1.000
	TextAnimationFrame_2.ClipsDescendants = true
	TextAnimationFrame_2.Position = UDim2.new(0, 0, 1, 0)
	TextAnimationFrame_2.Size = UDim2.new(0, 46, 0, 20)

	TextLabel_3.Parent = TextAnimationFrame_2
	TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.BackgroundTransparency = 1.000
	TextLabel_3.Position = UDim2.new(0, 0, 1, 0)
	TextLabel_3.Size = UDim2.new(0, 46, 0, 20)
	TextLabel_3.Font = Enum.Font.SourceSans
	TextLabel_3.Text = "KILL [Doesnt work]"
	TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_3.TextScaled = true
	TextLabel_3.TextSize = 14.000
	TextLabel_3.TextWrapped = true

	close.Name = "close"
	close.Parent = Destroy
	close.Active = true
	close.BackgroundTransparency = 1.000
	close.Position = UDim2.new(0.149140537, 0, 0.151162788, 0)
	close.Selectable = true
	close.Size = UDim2.new(0, 29, 0, 29)
	close.ZIndex = 2
	close.Image = "rbxassetid://3926305904"
	close.ImageRectOffset = Vector2.new(284, 4)
	close.ImageRectSize = Vector2.new(24, 24)

	TextLabel_4.Parent = SettingsPage
	TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.BackgroundTransparency = 1.000
	TextLabel_4.Position = UDim2.new(0.538745403, 0, 0.837613344, 0)
	TextLabel_4.Size = UDim2.new(0, 118, 0, 40)
	TextLabel_4.Font = Enum.Font.SourceSans
	TextLabel_4.Text = "?"
	TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_4.TextScaled = true
	TextLabel_4.TextSize = 14.000
	TextLabel_4.TextWrapped = true
	TextLabel_4.TextXAlignment = Enum.TextXAlignment.Right

	ControlBar.Name = "ControlBar"
	ControlBar.Parent = Main
	ControlBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	ControlBar.ClipsDescendants = true
	ControlBar.Position = UDim2.new(0.0506031476, 0, 0.822130859, 0)
	ControlBar.Size = UDim2.new(0, 286, 0, 51)

	UICorner_5.Parent = ControlBar

	Tabs.Name = "Tabs"
	Tabs.Parent = ControlBar
	Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Tabs.BackgroundTransparency = 1.000
	Tabs.Size = UDim2.new(0, 286, 0, 51)

	settings.Name = "settings"
	settings.Parent = Tabs
	settings.BackgroundTransparency = 1.000
	settings.Position = UDim2.new(0.194736838, 0, 0.205882356, 0)
	settings.Size = UDim2.new(0, 30, 0, 30)
	settings.ZIndex = 2
	settings.Image = "rbxassetid://3926307971"
	settings.ImageColor3 = Color3.fromRGB(150, 150, 150)
	settings.ImageRectOffset = Vector2.new(324, 124)
	settings.ImageRectSize = Vector2.new(36, 36)

	UICorner_6.Parent = settings

	home.Name = "home"
	home.Parent = Tabs
	home.BackgroundColor3 = Color3.fromRGB(30, 33, 36)
	home.BackgroundTransparency = 1.000
	home.Position = UDim2.new(0.0473684669, 0, 0.205882311, 0)
	home.Size = UDim2.new(0, 30, 0, 30)
	home.ZIndex = 2
	home.AutoButtonColor = false
	home.Image = "rbxassetid://3926305904"
	home.ImageRectOffset = Vector2.new(964, 204)
	home.ImageRectSize = Vector2.new(36, 36)

	UICorner_7.Parent = home

	respawn.Name = "respawn"
	respawn.Parent = Tabs
	respawn.BackgroundTransparency = 1.000
	respawn.Position = UDim2.new(0.332167864, 0, 0.205882356, 0)
	respawn.Size = UDim2.new(0, 30, 0, 30)
	respawn.ZIndex = 2
	respawn.Image = "rbxassetid://3926307971"
	respawn.ImageColor3 = Color3.fromRGB(150, 150, 150)
	respawn.ImageRectOffset = Vector2.new(164, 124)
	respawn.ImageRectSize = Vector2.new(36, 36)

	search.Name = "search"
	search.Parent = ControlBar
	search.BackgroundTransparency = 1.000
	search.Position = UDim2.new(0.849650323, 0, 0.205882356, 0)
	search.Size = UDim2.new(0, 30, 0, 30)
	search.ZIndex = 2
	search.AutoButtonColor = false
	search.Image = "rbxassetid://3926305904"
	search.ImageColor3 = Color3.fromRGB(150, 150, 150)
	search.ImageRectOffset = Vector2.new(964, 324)
	search.ImageRectSize = Vector2.new(36, 36)

	TextBox.Parent = ControlBar
	TextBox.BackgroundColor3 = Color3.fromRGB(40, 43, 48)
	TextBox.Position = UDim2.new(0.0279720277, 0, 1.20599997, 0)
	TextBox.Size = UDim2.new(0, 224, 0, 30)
	TextBox.Font = Enum.Font.SourceSans
	TextBox.PlaceholderText = "Type Here.."
	TextBox.Text = ""
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true

	UICorner_8.Parent = TextBox

	UICorner_9.CornerRadius = UDim.new(0, 12)
	UICorner_9.Parent = Main

	Hats.Name = "Hats"
	Hats.Parent = UtgV4
	Hats.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	Hats.Position = UDim2.new(0.0165876783, 0, 0.540765405, 0)
	Hats.Size = UDim2.new(0, 247, 0, 257)
	Hats.Visible = false

	InfoTitle.Name = "InfoTitle"
	InfoTitle.Parent = Hats
	InfoTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	InfoTitle.BackgroundTransparency = 1.000
	InfoTitle.Position = UDim2.new(0.204247952, 0, 0.032235764, 0)
	InfoTitle.Size = UDim2.new(0, 119, 0, 28)
	InfoTitle.Font = Enum.Font.SourceSans
	InfoTitle.Text = "Info"
	InfoTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	InfoTitle.TextScaled = true
	InfoTitle.TextSize = 14.000
	InfoTitle.TextWrapped = true
	InfoTitle.TextXAlignment = Enum.TextXAlignment.Left

	InfoIcon.Name = "InfoIcon"
	InfoIcon.Parent = Hats
	InfoIcon.BackgroundTransparency = 1.000
	InfoIcon.Position = UDim2.new(0.0635593161, 0, 0.0413223058, 0)
	InfoIcon.Size = UDim2.new(0, 25, 0, 25)
	InfoIcon.ZIndex = 2
	InfoIcon.Image = "rbxassetid://3926305904"
	InfoIcon.ImageRectOffset = Vector2.new(524, 444)
	InfoIcon.ImageRectSize = Vector2.new(36, 36)

	Frame_2.Parent = Hats
	Frame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame_2.BackgroundTransparency = 1.000
	Frame_2.Position = UDim2.new(0.0607287437, 0, 0.178988323, 0)
	Frame_2.Size = UDim2.new(0, 217, 0, 158)

	UICorner_10.Parent = Frame_2

	HatTitle.Name = "HatTitle"
	HatTitle.Parent = Frame_2
	HatTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HatTitle.BackgroundTransparency = 1.000
	HatTitle.Position = UDim2.new(0.0414746553, 0, 0, 0)
	HatTitle.Size = UDim2.new(0, 111, 0, 31)
	HatTitle.Font = Enum.Font.SourceSans
	HatTitle.Text = "Hats"
	HatTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
	HatTitle.TextScaled = true
	HatTitle.TextSize = 14.000
	HatTitle.TextWrapped = true
	HatTitle.TextXAlignment = Enum.TextXAlignment.Left

	Hat1.Name = "Hat1"
	Hat1.Parent = Frame_2
	Hat1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hat1.BackgroundTransparency = 1.000
	Hat1.LayoutOrder = 1
	Hat1.Position = UDim2.new(0.0414746553, 0, 0.202531651, 0)
	Hat1.Size = UDim2.new(0, 202, 0, 21)
	Hat1.Font = Enum.Font.SourceSans
	Hat1.Text = ""
	Hat1.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hat1.TextScaled = true
	Hat1.TextSize = 14.000
	Hat1.TextWrapped = true
	Hat1.TextXAlignment = Enum.TextXAlignment.Left

	Hat2.Name = "Hat2"
	Hat2.Parent = Frame_2
	Hat2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hat2.BackgroundTransparency = 1.000
	Hat2.Position = UDim2.new(0.0414746553, 0, 0.33544305, 0)
	Hat2.Size = UDim2.new(0, 202, 0, 21)
	Hat2.Font = Enum.Font.SourceSans
	Hat2.Text = ""
	Hat2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hat2.TextScaled = true
	Hat2.TextSize = 14.000
	Hat2.TextWrapped = true
	Hat2.TextXAlignment = Enum.TextXAlignment.Left

	Hat3.Name = "Hat3"
	Hat3.Parent = Frame_2
	Hat3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hat3.BackgroundTransparency = 1.000
	Hat3.Position = UDim2.new(0.0414746553, 0, 0.468354464, 0)
	Hat3.Size = UDim2.new(0, 202, 0, 21)
	Hat3.Font = Enum.Font.SourceSans
	Hat3.Text = ""
	Hat3.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hat3.TextScaled = true
	Hat3.TextSize = 14.000
	Hat3.TextWrapped = true
	Hat3.TextXAlignment = Enum.TextXAlignment.Left

	Hat4.Name = "Hat4"
	Hat4.Parent = Frame_2
	Hat4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hat4.BackgroundTransparency = 1.000
	Hat4.Position = UDim2.new(0.0414746553, 0, 0.601265848, 0)
	Hat4.Size = UDim2.new(0, 202, 0, 21)
	Hat4.Font = Enum.Font.SourceSans
	Hat4.Text = ""
	Hat4.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hat4.TextScaled = true
	Hat4.TextSize = 14.000
	Hat4.TextWrapped = true
	Hat4.TextXAlignment = Enum.TextXAlignment.Left

	Hat5.Name = "Hat5"
	Hat5.Parent = Frame_2
	Hat5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hat5.BackgroundTransparency = 1.000
	Hat5.Position = UDim2.new(0.0414746553, 0, 0.734177232, 0)
	Hat5.Size = UDim2.new(0, 202, 0, 21)
	Hat5.Font = Enum.Font.SourceSans
	Hat5.Text = ""
	Hat5.TextColor3 = Color3.fromRGB(255, 255, 255)
	Hat5.TextScaled = true
	Hat5.TextSize = 14.000
	Hat5.TextWrapped = true
	Hat5.TextXAlignment = Enum.TextXAlignment.Left

	Ok.Name = "Ok"
	Ok.Parent = Hats
	Ok.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Ok.Position = UDim2.new(0.0607287437, 0, 0.844357967, 0)
	Ok.Size = UDim2.new(0, 217, 0, 27)
	Ok.AutoButtonColor = false
	Ok.Font = Enum.Font.SourceSans
	Ok.Text = ""
	Ok.TextColor3 = Color3.fromRGB(255, 255, 255)
	Ok.TextScaled = true
	Ok.TextSize = 14.000
	Ok.TextWrapped = true

	UICorner_11.Parent = Ok

	TextLabel_5.Parent = Ok
	TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.BackgroundTransparency = 1.000
	TextLabel_5.Position = UDim2.new(0.313364059, 0, 0, 0)
	TextLabel_5.Size = UDim2.new(0, 81, 0, 27)
	TextLabel_5.Font = Enum.Font.SourceSans
	TextLabel_5.Text = "Dismiss"
	TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_5.TextScaled = true
	TextLabel_5.TextSize = 14.000
	TextLabel_5.TextWrapped = true

	UICorner_12.CornerRadius = UDim.new(0, 12)
	UICorner_12.Parent = Hats

	local function HYWZ_fake_script() -- Rejoin.TweenStuff
		local script = Instance.new("LocalScript", Rejoin)

		local TweenService = game:GetService("TweenService")
		local btn = script.Parent
		local label = script.Parent.TextAnimationFrame.TextLabel

		local Tween = TweenService:Create(btn, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(54, 57, 62) })
		local Tween1 = TweenService:Create(btn, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(40, 43, 48) })
		local Tween2 = TweenService:Create(btn, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(40, 43, 48) })
		local Tween3 = TweenService:Create(btn, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(54, 57, 62) })

		btn.MouseEnter:Connect(function()
			Tween:Play()

			label:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, false)
		end)

		btn.MouseLeave:Connect(function()
			Tween1:Play()

			label:TweenPosition(UDim2.new(0, 0, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, false)
		end)

		btn.MouseButton1Down:Connect(function()
			Tween2:Play()
		end)

		btn.MouseButton1Up:Connect(function()
			Tween3:Play()

			local ts = game:GetService("TeleportService")
			local p = game:GetService("Players").LocalPlayer
			ts:Teleport(game.PlaceId, p)
		end)
	end
	coroutine.wrap(HYWZ_fake_script)()
	local function EINW_fake_script() -- Destroy.TweenStuff
		local script = Instance.new("LocalScript", Destroy)

		local TweenService = game:GetService("TweenService")
		local btn = script.Parent
		local label = script.Parent.TextAnimationFrame.TextLabel

		local Tween = TweenService:Create(btn, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(54, 57, 62) })
		local Tween1 = TweenService:Create(btn, TweenInfo.new(0.5), { BackgroundColor3 = Color3.fromRGB(40, 43, 48) })
		local Tween2 = TweenService:Create(btn, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(40, 43, 48) })
		local Tween3 = TweenService:Create(btn, TweenInfo.new(0.2), { BackgroundColor3 = Color3.fromRGB(54, 57, 62) })

		btn.MouseEnter:Connect(function()
			Tween:Play()

			label:TweenPosition(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.2, false)
		end)

		btn.MouseLeave:Connect(function()
			Tween1:Play()

			label:TweenPosition(UDim2.new(0, 0, 1, 0), Enum.EasingDirection.In, Enum.EasingStyle.Quad, 0.2, false)
		end)

		btn.MouseButton1Down:Connect(function()
			Tween2:Play()
		end)

		btn.MouseButton1Up:Connect(function()
			Tween3:Play()

			script.Parent.Parent.Parent.Parent.Parent.Parent.UtgV4:Destroy()
		end)
	end
	coroutine.wrap(EINW_fake_script)()
	local function ZVOPBNA_fake_script() -- settings.LocalScript
		local script = Instance.new("LocalScript", settings)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent

		local Tween = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(255, 255, 255) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(200, 200, 200) })
		local Tween2 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(150, 150, 150) })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { ImageColor3 = Color3.fromRGB(150, 150, 150) })
		local HomeTween = TweenService:Create(
			script.Parent.Parent.home,
			TweenInfomation,
			{ ImageColor3 = Color3.fromRGB(150, 150, 150) }
		)

		btn.MouseEnter:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween1:Play()
			end
		end)

		btn.MouseLeave:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween2:Play()
			end
		end)

		btn.MouseButton1Down:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween3:Play()
			end
		end)

		btn.MouseButton1Up:Connect(function()
			Tween:Play()
			HomeTween:Play()
			btn.Parent.Parent.Parent.Frame.ScrollingFrame:TweenPosition(
				UDim2.new(1.028, 0, 0.02, 0),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quad,
				0.5,
				false
			)
			wait(0.6)
			btn.Parent.Parent.Parent.Frame.SettingsPage:TweenPosition(
				UDim2.new(0.028, 0, 0.023, 0),
				Enum.EasingDirection.In,
				Enum.EasingStyle.Quad,
				0.5,
				false
			)
		end)
	end
	coroutine.wrap(ZVOPBNA_fake_script)()
	local function ZHNRVN_fake_script() -- home.LocalScript
		local script = Instance.new("LocalScript", home)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent

		local Tween = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(255, 255, 255) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(200, 200, 200) })
		local Tween2 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(150, 150, 150) })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { ImageColor3 = Color3.fromRGB(150, 150, 150) })
		local SettingTween = TweenService:Create(
			script.Parent.Parent.settings,
			TweenInfomation,
			{ ImageColor3 = Color3.fromRGB(150, 150, 150) }
		)

		btn.MouseEnter:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween1:Play()
			end
		end)

		btn.MouseLeave:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween2:Play()
			end
		end)

		btn.MouseButton1Down:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween3:Play()
			end
		end)

		btn.MouseButton1Up:Connect(function()
			Tween:Play()
			SettingTween:Play()
			btn.Parent.Parent.Parent.Frame.SettingsPage:TweenPosition(
				UDim2.new(1.028, 0, 0.02, 0),
				Enum.EasingDirection.Out,
				Enum.EasingStyle.Quad,
				0.5,
				false
			)
			wait(0.6)
			btn.Parent.Parent.Parent.Frame.ScrollingFrame:TweenPosition(
				UDim2.new(0.028, 0, 0.023, 0),
				Enum.EasingDirection.In,
				Enum.EasingStyle.Quad,
				0.5,
				false
			)
		end)
	end
	coroutine.wrap(ZHNRVN_fake_script)()
	local function VINO_fake_script() -- .LocalScript
		local script = Instance.new("LocalScript", respawn)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent


		function RespawnScript()
			local char = game.Players.LocalPlayer.Character
			if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
			char:ClearAllChildren()
			local newChar = Instance.new("Model")
			newChar.Parent = workspace
			game.Players.LocalPlayer.Character = newChar
			wait(.001)
			game.Players.LocalPlayer.Character = char
			newChar:Destroy()
		end

		local Tween = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(255, 255, 255) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(200, 200, 200) })
		local Tween2 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(150, 150, 150) })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { ImageColor3 = Color3.fromRGB(150, 150, 150) })

		btn.MouseEnter:Connect(function()
			Tween1:Play()
		end)

		btn.MouseLeave:Connect(function()
			Tween2:Play()
		end)

		btn.MouseButton1Down:Connect(function()
			Tween3:Play()
		end)

		btn.MouseButton1Up:Connect(function()
			Tween:Play()
			RespawnScript()
		end)
	end
	coroutine.wrap(VINO_fake_script)()
	local function YDRS_fake_script() -- search.LocalScript
		local script = Instance.new("LocalScript", search)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent

		local Tween = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(255, 255, 255) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(200, 200, 200) })
		local Tween2 = TweenService:Create(btn, TweenInfomation, { ImageColor3 = Color3.fromRGB(150, 150, 150) })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { ImageColor3 = Color3.fromRGB(150, 150, 150) })

		btn.MouseEnter:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween1:Play()
			end
		end)

		btn.MouseLeave:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween2:Play()
			end
		end)

		btn.MouseButton1Down:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
			else
				Tween3:Play()
			end
		end)

		btn.MouseButton1Up:Connect(function()
			if btn.ImageColor3 == Color3.fromRGB(255, 255, 255) then
				script.Parent.Parent.TextBox.Text = ""
				Tween2:Play()
				btn.Parent.TextBox:TweenPosition(
					UDim2.new(0.028, 0, 1.206, 0),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.5,
					false
				)
				wait(0.2)
				btn.Parent.Tabs:TweenPosition(
					UDim2.new(0, 0, 0, 0),
					Enum.EasingDirection.In,
					Enum.EasingStyle.Quad,
					0.5,
					false
				)
			else
				Tween:Play()
				btn.Parent.Tabs:TweenPosition(
					UDim2.new(0, 0, 1, 0),
					Enum.EasingDirection.Out,
					Enum.EasingStyle.Quad,
					0.5,
					false
				)
				wait(0.2)
				btn.Parent.TextBox:TweenPosition(
					UDim2.new(0.028, 0, 0.206, 0),
					Enum.EasingDirection.In,
					Enum.EasingStyle.Quad,
					0.5,
					false
				)
				if btn.Parent.TextBox.Position == UDim2.new(0.028, 0, 0.206, 0) then
					Tween2:Play()
					btn.Parent.TextBox:TweenPosition(
						UDim2.new(0.028, 0, 1.206, 0),
						Enum.EasingDirection.Out,
						Enum.EasingStyle.Quad,
						0.5,
						true
					)
					wait(0.2)
					btn.Parent.Tabs:TweenPosition(
						UDim2.new(0, 0, 0, 0),
						Enum.EasingDirection.In,
						Enum.EasingStyle.Quad,
						0.5,
						true
					)
				end
			end
		end)
	end
	coroutine.wrap(YDRS_fake_script)()
	local function EUWL_fake_script() -- ControlBar.LocalScript
		local script = Instance.new("LocalScript", ControlBar)

		local searchBar = script.Parent.TextBox
		local items = script.Parent.Parent.Frame.ScrollingFrame

		function UpdateResults()
			local search = string.lower(searchBar.Text)
			for i, v in pairs(items:GetChildren()) do
				if v:IsA("GuiButton") then
					if search ~= "" then
						local item = string.lower(v.Name)
						if string.find(item, search) then
							v.Visible = true
						else
							v.Visible = false
						end
					else
						v.Visible = true
					end
				end
			end
		end

		searchBar.Changed:Connect(UpdateResults)
	end
	coroutine.wrap(EUWL_fake_script)()
	local function QRSVH_fake_script()
		local script = Instance.new("LocalScript", Main)

		local UIS = game:GetService("UserInputService")
		local frame = script.Parent
		local dragToggle = nil
		local dragSpeed = 0.25
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position =
				UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), { Position = position }):Play()
		end

		frame.InputBegan:Connect(function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch
			then
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch
			then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
	end
	coroutine.wrap(QRSVH_fake_script)()
	local function XGYDDKD_fake_script() -- Ok.LocalScript
		local script = Instance.new("LocalScript", Ok)

		local TweenService = game.TweenService
		local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
		local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		local btn = script.Parent
		local HatList = script.Parent.Parent.Frame

		local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(60, 60, 60) })
		local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })
		local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(40, 40, 40) })
		local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(60, 60, 60) })

		btn.MouseEnter:Connect(function()
			Tween:Play()
		end)

		btn.MouseLeave:Connect(function()
			Tween1:Play()
		end)

		btn.MouseButton1Down:Connect(function()
			Tween2:Play()
		end)

		btn.MouseButton1Up:Connect(function()
			Tween3:Play()
			HatList.Parent.Visible = false
		end)
	end
	coroutine.wrap(XGYDDKD_fake_script)()
	local function UPRLAP_fake_script() -- Hats.Drag
		local script = Instance.new("LocalScript", Hats)

		local UIS = game:GetService("UserInputService")
		local frame = script.Parent
		local dragToggle = nil
		local dragSpeed = 0.25
		local dragStart = nil
		local startPos = nil

		local function updateInput(input)
			local delta = input.Position - dragStart
			local position =
				UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			game:GetService("TweenService"):Create(frame, TweenInfo.new(dragSpeed), { Position = position }):Play()
		end

		frame.InputBegan:Connect(function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseButton1
				or input.UserInputType == Enum.UserInputType.Touch
			then
				dragToggle = true
				dragStart = input.Position
				startPos = frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)

		UIS.InputChanged:Connect(function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement
				or input.UserInputType == Enum.UserInputType.Touch
			then
				if dragToggle then
					updateInput(input)
				end
			end
		end)
	end
	coroutine.wrap(UPRLAP_fake_script)()

	local EpicLibary = {}
	function EpicLibary:CreateButton(Text_, Hat_1, Hat_2, Hat_3, Hat_4, Hat_5, call)
		local TextButton = Instance.new("TextButton")
		local UICorner_2 = Instance.new("UICorner")
		local TextLabel = Instance.new("TextLabel")
		local UICorner_13 = Instance.new("UICorner")
		local MoreButton = Instance.new("TextButton")
		local UICorner_14 = Instance.new("UICorner")
		local More = Instance.new("ImageLabel")

		MoreButton.Name = "MoreButton"
		MoreButton.Parent = TextButton
		MoreButton.BackgroundColor3 = Color3.fromRGB(40, 40, 42)
		MoreButton.Position = UDim2.new(1.02978718, 0, 0, 0)
		MoreButton.Size = UDim2.new(0, 29, 0, 29)
		MoreButton.AutoButtonColor = false
		MoreButton.Font = Enum.Font.SourceSans
		MoreButton.Text = ""
		MoreButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		MoreButton.TextSize = 14.000

		UICorner_14.Parent = MoreButton

		More.Name = "More"
		More.Parent = MoreButton
		More.Active = true
		More.BackgroundColor3 = Color3.fromRGB(40, 40, 42)
		More.BackgroundTransparency = 1.000
		More.LayoutOrder = 5
		More.Selectable = true
		More.Size = UDim2.new(0, 29, 0, 29)
		More.ZIndex = 2
		More.Image = "rbxassetid://3926305904"
		More.ImageRectOffset = Vector2.new(761, 761)
		More.ImageRectSize = Vector2.new(42, 42)

		TextButton.Name = Text_
		TextButton.Parent = ScrollingFrame
		TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 42)
		TextButton.Size = UDim2.new(0, 235, 0, 29)
		TextButton.AutoButtonColor = false
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = ""
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextSize = 14.000
		TextButton.TextXAlignment = Enum.TextXAlignment.Left

		UICorner_13.Parent = MoreButton
		UICorner_2.Parent = TextButton

		TextLabel.Parent = TextButton
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0.0442804433, 0, 0.149867624, 0)
		TextLabel.Size = UDim2.new(0, 223, 0, 20)
		TextLabel.Font = Enum.Font.SourceSans
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextScaled = true
		TextLabel.TextSize = 14.000
		TextLabel.TextWrapped = true
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.Text = Text_

		local function LCVTNOR_fake_script() -- TextButton.LocalScript
			local script = Instance.new("LocalScript", TextButton)

			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(0.25, Enum.EasingStyle.Linear)
			local TweenInfomation1 = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
			local btn = script.Parent

			local Tween = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(60, 60, 62) })
			local Tween1 = TweenService:Create(btn, TweenInfomation, { BackgroundColor3 = Color3.fromRGB(40, 40, 42) })
			local Tween2 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(40, 40, 42) })
			local Tween3 = TweenService:Create(btn, TweenInfomation1, { BackgroundColor3 = Color3.fromRGB(60, 60, 62) })

			btn.MouseEnter:Connect(function()
				Tween:Play()
			end)

			btn.MouseLeave:Connect(function()
				Tween1:Play()
			end)

			btn.MouseButton1Down:Connect(function()
				Tween2:Play()
			end)

			btn.MouseButton1Up:Connect(function()
				Tween3:Play()
			end)
		end
		coroutine.wrap(LCVTNOR_fake_script)()

		local function CBJGE_fake_script() -- MoreButton.LocalScript 
			local script = Instance.new('LocalScript', MoreButton)

			local btn = script.Parent
			local TweenService = game.TweenService
			local TweenInfomation = TweenInfo.new(.25, Enum.EasingStyle.Linear)
			local TweenInfomation1 = TweenInfo.new(.1, Enum.EasingStyle.Linear)
			local btn = script.Parent

			local Tween = TweenService:Create(btn, TweenInfomation, {BackgroundColor3 = Color3.fromRGB(60, 60, 62)})
			local Tween1 = TweenService:Create(btn, TweenInfomation, {BackgroundColor3 = Color3.fromRGB(40, 40, 42)})
			local Tween2 = TweenService:Create(btn, TweenInfomation1, {BackgroundColor3 = Color3.fromRGB(40, 40, 42)})
			local Tween3 = TweenService:Create(btn, TweenInfomation1, {BackgroundColor3 = Color3.fromRGB(60, 60, 62)})

			btn.MouseEnter:Connect(function()
				Tween:Play()
			end)

			btn.MouseLeave:Connect(function()
				Tween1:Play()
			end)

			btn.MouseButton1Down:Connect(function()
				Tween2:Play()
			end)

			btn.MouseButton1Up:Connect(function()
				Tween3:Play()
				Hats.Visible = true
				Frame_2.Hat1.Text = Hat_1
				Frame_2.Hat2.Text = Hat_2
				Frame_2.Hat3.Text = Hat_3
				Frame_2.Hat4.Text = Hat_4
				Frame_2.Hat5.Text = Hat_5
			end)
		end
		coroutine.wrap(CBJGE_fake_script)()

		TextButton.MouseButton1Click:Connect(function()
			pcall(call)
		end)

	end
	return EpicLibary
end

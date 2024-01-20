-- Instances:

local NectoLauncher = {
	NectoLauncher = Instance.new("ScreenGui"),
	Frame = Instance.new("Frame"),
	StatusSection = Instance.new("Frame"),
	SectionTopBar = Instance.new("Folder"),
	Frame_2 = Instance.new("Frame"),
	UICorner = Instance.new("UICorner"),
	Frame_3 = Instance.new("Frame"),
	TextLabel = Instance.new("TextLabel"),
	UICorner_2 = Instance.new("UICorner"),
	ContentFrame = Instance.new("Frame"),
	EzHubStatusFrame = Instance.new("Frame"),
	Status = Instance.new("TextLabel"),
	StatusName = Instance.new("TextLabel"),
	EzAPIStatusFrame = Instance.new("Frame"),
	Status_2 = Instance.new("TextLabel"),
	StatusName_2 = Instance.new("TextLabel"),
	NectoLauncherStatusFrame = Instance.new("Frame"),
	Status_3 = Instance.new("TextLabel"),
	StatusName_3 = Instance.new("TextLabel"),
	UIListLayout = Instance.new("UIListLayout"),
	UICorner_3 = Instance.new("UICorner"),
	UIListLayout_2 = Instance.new("UIListLayout"),
	UIPadding = Instance.new("UIPadding"),
	NewsSection = Instance.new("Frame"),
	SectionTopBar_2 = Instance.new("Folder"),
	Frame_4 = Instance.new("Frame"),
	UICorner_4 = Instance.new("UICorner"),
	Frame_5 = Instance.new("Frame"),
	TextLabel_2 = Instance.new("TextLabel"),
	UICorner_5 = Instance.new("UICorner"),
	ContentFrame_2 = Instance.new("ScrollingFrame"),
	UIListLayout_3 = Instance.new("UIListLayout"),
	LaunchSection = Instance.new("Frame"),
	SectionTopBar_3 = Instance.new("Folder"),
	Frame_6 = Instance.new("Frame"),
	UICorner_6 = Instance.new("UICorner"),
	Frame_7 = Instance.new("Frame"),
	TextLabel_3 = Instance.new("TextLabel"),
	UICorner_7 = Instance.new("UICorner"),
	ContentFrame_3 = Instance.new("Frame"),
	ThemeSelectionFrame = Instance.new("Frame"),
	UICorner_8 = Instance.new("UICorner"),
	SelectionLeft = Instance.new("TextButton"),
	SelectionRight = Instance.new("TextButton"),
	SelectedLabel = Instance.new("TextLabel"),
	Launch = Instance.new("TextButton"),
	UICorner_9 = Instance.new("UICorner"),
	Containers = Instance.new("Folder"),
	NewsDivider = Instance.new("Frame"),
	UICorner_10 = Instance.new("UICorner"),
	NewsLabel = Instance.new("TextLabel"),
	UIPadding_2 = Instance.new("UIPadding"),
}

--Properties:

NectoLauncher.NectoLauncher.Name = "NectoLauncher"
NectoLauncher.NectoLauncher.Parent = game.CoreGui
NectoLauncher.NectoLauncher.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

NectoLauncher.Frame.Parent = NectoLauncher.NectoLauncher
NectoLauncher.Frame.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.Frame.BackgroundColor3 = Color3.fromRGB(41, 53, 68)
NectoLauncher.Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
NectoLauncher.Frame.Size = UDim2.new(0, 350, 0, 400)

NectoLauncher.StatusSection.Name = "StatusSection"
NectoLauncher.StatusSection.Parent = NectoLauncher.Frame
NectoLauncher.StatusSection.AnchorPoint = Vector2.new(0.5, 0)
NectoLauncher.StatusSection.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
NectoLauncher.StatusSection.BorderSizePixel = 0
NectoLauncher.StatusSection.Size = UDim2.new(1, -20, 0, 100)

NectoLauncher.SectionTopBar.Name = "SectionTopBar"
NectoLauncher.SectionTopBar.Parent = NectoLauncher.StatusSection

NectoLauncher.Frame_2.Parent = NectoLauncher.SectionTopBar
NectoLauncher.Frame_2.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
NectoLauncher.Frame_2.Size = UDim2.new(0, 2, 0, 32)

NectoLauncher.UICorner.Parent = NectoLauncher.Frame_2

NectoLauncher.Frame_3.Parent = NectoLauncher.SectionTopBar
NectoLauncher.Frame_3.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
NectoLauncher.Frame_3.BackgroundTransparency = 0.750
NectoLauncher.Frame_3.BorderSizePixel = 0
NectoLauncher.Frame_3.Position = UDim2.new(0, 0, 0, 32)
NectoLauncher.Frame_3.Size = UDim2.new(1, 0, 0, 1)

NectoLauncher.TextLabel.Parent = NectoLauncher.SectionTopBar
NectoLauncher.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.TextLabel.BackgroundTransparency = 1.000
NectoLauncher.TextLabel.Position = UDim2.new(0, 12, 0, 4)
NectoLauncher.TextLabel.Size = UDim2.new(0, 299, 0, 24)
NectoLauncher.TextLabel.Font = Enum.Font.SourceSans
NectoLauncher.TextLabel.Text = "Server Status"
NectoLauncher.TextLabel.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.TextLabel.TextSize = 14.000
NectoLauncher.TextLabel.TextXAlignment = Enum.TextXAlignment.Left

NectoLauncher.UICorner_2.CornerRadius = UDim.new(0, 4)
NectoLauncher.UICorner_2.Parent = NectoLauncher.StatusSection

NectoLauncher.ContentFrame.Name = "ContentFrame"
NectoLauncher.ContentFrame.Parent = NectoLauncher.StatusSection
NectoLauncher.ContentFrame.AnchorPoint = Vector2.new(0.5, 1)
NectoLauncher.ContentFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.ContentFrame.BackgroundTransparency = 1.000
NectoLauncher.ContentFrame.Position = UDim2.new(0.5, 0, 1, -2)
NectoLauncher.ContentFrame.Size = UDim2.new(1, -20, 0, 60)

NectoLauncher.EzHubStatusFrame.Name = "EzHubStatusFrame"
NectoLauncher.EzHubStatusFrame.Parent = NectoLauncher.ContentFrame
NectoLauncher.EzHubStatusFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.EzHubStatusFrame.BackgroundTransparency = 1.000
NectoLauncher.EzHubStatusFrame.LayoutOrder = 2
NectoLauncher.EzHubStatusFrame.Position = UDim2.new(0, 10, 0, 38)
NectoLauncher.EzHubStatusFrame.Size = UDim2.new(0, 60, 0, 60)

NectoLauncher.Status.Name = "Status"
NectoLauncher.Status.Parent = NectoLauncher.EzHubStatusFrame
NectoLauncher.Status.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.Status.BackgroundTransparency = 1.000
NectoLauncher.Status.Position = UDim2.new(0.5, 0, 0.5, 12)
NectoLauncher.Status.Size = UDim2.new(0, 50, 0, 30)
NectoLauncher.Status.Font = Enum.Font.SourceSans
NectoLauncher.Status.Text = "Online"
NectoLauncher.Status.TextColor3 = Color3.fromRGB(45, 192, 179)
NectoLauncher.Status.TextSize = 20.000

NectoLauncher.StatusName.Name = "StatusName"
NectoLauncher.StatusName.Parent = NectoLauncher.EzHubStatusFrame
NectoLauncher.StatusName.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.StatusName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.StatusName.BackgroundTransparency = 1.000
NectoLauncher.StatusName.Position = UDim2.new(0.5, 0, 0.5, -12)
NectoLauncher.StatusName.Size = UDim2.new(0, 50, 0, 30)
NectoLauncher.StatusName.Font = Enum.Font.SourceSans
NectoLauncher.StatusName.Text = "Ez Hub"
NectoLauncher.StatusName.TextColor3 = Color3.fromRGB(92, 106, 124)
NectoLauncher.StatusName.TextSize = 14.000

NectoLauncher.EzAPIStatusFrame.Name = "EzAPIStatusFrame"
NectoLauncher.EzAPIStatusFrame.Parent = NectoLauncher.ContentFrame
NectoLauncher.EzAPIStatusFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.EzAPIStatusFrame.BackgroundTransparency = 1.000
NectoLauncher.EzAPIStatusFrame.LayoutOrder = 3
NectoLauncher.EzAPIStatusFrame.Position = UDim2.new(0, 80, 0, 38)
NectoLauncher.EzAPIStatusFrame.Size = UDim2.new(0, 60, 0, 60)

NectoLauncher.Status_2.Name = "Status"
NectoLauncher.Status_2.Parent = NectoLauncher.EzAPIStatusFrame
NectoLauncher.Status_2.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.Status_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.Status_2.BackgroundTransparency = 1.000
NectoLauncher.Status_2.Position = UDim2.new(0.5, 0, 0.5, 12)
NectoLauncher.Status_2.Size = UDim2.new(0, 50, 0, 30)
NectoLauncher.Status_2.Font = Enum.Font.SourceSans
NectoLauncher.Status_2.Text = "Online"
NectoLauncher.Status_2.TextColor3 = Color3.fromRGB(45, 192, 179)
NectoLauncher.Status_2.TextSize = 20.000

NectoLauncher.StatusName_2.Name = "StatusName"
NectoLauncher.StatusName_2.Parent = NectoLauncher.EzAPIStatusFrame
NectoLauncher.StatusName_2.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.StatusName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.StatusName_2.BackgroundTransparency = 1.000
NectoLauncher.StatusName_2.Position = UDim2.new(0.5, 0, 0.5, -12)
NectoLauncher.StatusName_2.Size = UDim2.new(0, 50, 0, 30)
NectoLauncher.StatusName_2.Font = Enum.Font.SourceSans
NectoLauncher.StatusName_2.Text = "Ez API"
NectoLauncher.StatusName_2.TextColor3 = Color3.fromRGB(92, 106, 124)
NectoLauncher.StatusName_2.TextSize = 14.000

NectoLauncher.NectoLauncherStatusFrame.Name = "NectoLauncherStatusFrame"
NectoLauncher.NectoLauncherStatusFrame.Parent = NectoLauncher.ContentFrame
NectoLauncher.NectoLauncherStatusFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.NectoLauncherStatusFrame.BackgroundTransparency = 1.000
NectoLauncher.NectoLauncherStatusFrame.LayoutOrder = 1
NectoLauncher.NectoLauncherStatusFrame.Position = UDim2.new(0, 150, 0, 38)
NectoLauncher.NectoLauncherStatusFrame.Size = UDim2.new(0, 60, 0, 60)

NectoLauncher.Status_3.Name = "Status"
NectoLauncher.Status_3.Parent = NectoLauncher.NectoLauncherStatusFrame
NectoLauncher.Status_3.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.Status_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.Status_3.BackgroundTransparency = 1.000
NectoLauncher.Status_3.Position = UDim2.new(0.5, 0, 0.5, 12)
NectoLauncher.Status_3.Size = UDim2.new(0, 50, 0, 30)
NectoLauncher.Status_3.Font = Enum.Font.SourceSans
NectoLauncher.Status_3.Text = "Online"
NectoLauncher.Status_3.TextColor3 = Color3.fromRGB(45, 192, 179)
NectoLauncher.Status_3.TextSize = 20.000

NectoLauncher.StatusName_3.Name = "StatusName"
NectoLauncher.StatusName_3.Parent = NectoLauncher.NectoLauncherStatusFrame
NectoLauncher.StatusName_3.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.StatusName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.StatusName_3.BackgroundTransparency = 1.000
NectoLauncher.StatusName_3.Position = UDim2.new(0.5, 0, 0.5, -12)
NectoLauncher.StatusName_3.Size = UDim2.new(0, 50, 0, 30)
NectoLauncher.StatusName_3.Font = Enum.Font.SourceSans
NectoLauncher.StatusName_3.Text = "Ez Launcher"
NectoLauncher.StatusName_3.TextColor3 = Color3.fromRGB(92, 106, 124)
NectoLauncher.StatusName_3.TextSize = 14.000

NectoLauncher.UIListLayout.Parent = NectoLauncher.ContentFrame
NectoLauncher.UIListLayout.FillDirection = Enum.FillDirection.Horizontal
NectoLauncher.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
NectoLauncher.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
NectoLauncher.UIListLayout.Padding = UDim.new(0, 25)

NectoLauncher.UICorner_3.CornerRadius = UDim.new(0, 4)
NectoLauncher.UICorner_3.Parent = NectoLauncher.Frame

NectoLauncher.UIListLayout_2.Parent = NectoLauncher.Frame
NectoLauncher.UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
NectoLauncher.UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
NectoLauncher.UIListLayout_2.Padding = UDim.new(0, 5)

NectoLauncher.UIPadding.Parent = NectoLauncher.Frame
NectoLauncher.UIPadding.PaddingBottom = UDim.new(0, 10)
NectoLauncher.UIPadding.PaddingTop = UDim.new(0, 10)

NectoLauncher.NewsSection.Name = "NewsSection"
NectoLauncher.NewsSection.Parent = NectoLauncher.Frame
NectoLauncher.NewsSection.AnchorPoint = Vector2.new(0.5, 0)
NectoLauncher.NewsSection.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
NectoLauncher.NewsSection.BorderSizePixel = 0
NectoLauncher.NewsSection.Size = UDim2.new(1, -20, 0, 150)

NectoLauncher.SectionTopBar_2.Name = "SectionTopBar"
NectoLauncher.SectionTopBar_2.Parent = NectoLauncher.NewsSection

NectoLauncher.Frame_4.Parent = NectoLauncher.SectionTopBar_2
NectoLauncher.Frame_4.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
NectoLauncher.Frame_4.Size = UDim2.new(0, 2, 0, 32)

NectoLauncher.UICorner_4.Parent = NectoLauncher.Frame_4

NectoLauncher.Frame_5.Parent = NectoLauncher.SectionTopBar_2
NectoLauncher.Frame_5.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
NectoLauncher.Frame_5.BackgroundTransparency = 0.750
NectoLauncher.Frame_5.BorderSizePixel = 0
NectoLauncher.Frame_5.Position = UDim2.new(0, 0, 0, 32)
NectoLauncher.Frame_5.Size = UDim2.new(1, 0, 0, 1)

NectoLauncher.TextLabel_2.Parent = NectoLauncher.SectionTopBar_2
NectoLauncher.TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.TextLabel_2.BackgroundTransparency = 1.000
NectoLauncher.TextLabel_2.Position = UDim2.new(0, 12, 0, 4)
NectoLauncher.TextLabel_2.Size = UDim2.new(0, 299, 0, 24)
NectoLauncher.TextLabel_2.Font = Enum.Font.SourceSans
NectoLauncher.TextLabel_2.Text = "News"
NectoLauncher.TextLabel_2.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.TextLabel_2.TextSize = 14.000
NectoLauncher.TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

NectoLauncher.UICorner_5.CornerRadius = UDim.new(0, 4)
NectoLauncher.UICorner_5.Parent = NectoLauncher.NewsSection

NectoLauncher.ContentFrame_2.Name = "ContentFrame"
NectoLauncher.ContentFrame_2.Parent = NectoLauncher.NewsSection
NectoLauncher.ContentFrame_2.Active = true
NectoLauncher.ContentFrame_2.AnchorPoint = Vector2.new(0.5, 1)
NectoLauncher.ContentFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.ContentFrame_2.BackgroundTransparency = 1.000
NectoLauncher.ContentFrame_2.BorderSizePixel = 0
NectoLauncher.ContentFrame_2.Position = UDim2.new(0.5, 0, 1, -8)
NectoLauncher.ContentFrame_2.Size = UDim2.new(1, -20, 0, 100)
NectoLauncher.ContentFrame_2.CanvasSize = UDim2.new(0, 0, 0, 0)
NectoLauncher.ContentFrame_2.ScrollBarThickness = 4

NectoLauncher.UIListLayout_3.Parent = NectoLauncher.ContentFrame_2
NectoLauncher.UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
NectoLauncher.UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
NectoLauncher.UIListLayout_3.Padding = UDim.new(0, 5)

NectoLauncher.LaunchSection.Name = "LaunchSection"
NectoLauncher.LaunchSection.Parent = NectoLauncher.Frame
NectoLauncher.LaunchSection.AnchorPoint = Vector2.new(0.5, 0)
NectoLauncher.LaunchSection.BackgroundColor3 = Color3.fromRGB(35, 47, 62)
NectoLauncher.LaunchSection.BorderSizePixel = 0
NectoLauncher.LaunchSection.Size = UDim2.new(1, -20, 0, 120)

NectoLauncher.SectionTopBar_3.Name = "SectionTopBar"
NectoLauncher.SectionTopBar_3.Parent = NectoLauncher.LaunchSection

NectoLauncher.Frame_6.Parent = NectoLauncher.SectionTopBar_3
NectoLauncher.Frame_6.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
NectoLauncher.Frame_6.Size = UDim2.new(0, 2, 0, 32)

NectoLauncher.UICorner_6.Parent = NectoLauncher.Frame_6

NectoLauncher.Frame_7.Parent = NectoLauncher.SectionTopBar_3
NectoLauncher.Frame_7.BackgroundColor3 = Color3.fromRGB(112, 112, 112)
NectoLauncher.Frame_7.BackgroundTransparency = 0.750
NectoLauncher.Frame_7.BorderSizePixel = 0
NectoLauncher.Frame_7.Position = UDim2.new(0, 0, 0, 32)
NectoLauncher.Frame_7.Size = UDim2.new(1, 0, 0, 1)

NectoLauncher.TextLabel_3.Parent = NectoLauncher.SectionTopBar_3
NectoLauncher.TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.TextLabel_3.BackgroundTransparency = 1.000
NectoLauncher.TextLabel_3.Position = UDim2.new(0, 12, 0, 4)
NectoLauncher.TextLabel_3.Size = UDim2.new(0, 299, 0, 24)
NectoLauncher.TextLabel_3.Font = Enum.Font.SourceSans
NectoLauncher.TextLabel_3.Text = "Launcher / Other"
NectoLauncher.TextLabel_3.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.TextLabel_3.TextSize = 14.000
NectoLauncher.TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

NectoLauncher.UICorner_7.CornerRadius = UDim.new(0, 4)
NectoLauncher.UICorner_7.Parent = NectoLauncher.LaunchSection

NectoLauncher.ContentFrame_3.Name = "ContentFrame"
NectoLauncher.ContentFrame_3.Parent = NectoLauncher.LaunchSection
NectoLauncher.ContentFrame_3.AnchorPoint = Vector2.new(0.5, 1)
NectoLauncher.ContentFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.ContentFrame_3.BackgroundTransparency = 1.000
NectoLauncher.ContentFrame_3.BorderColor3 = Color3.fromRGB(27, 42, 53)
NectoLauncher.ContentFrame_3.Position = UDim2.new(0.5, 0, 1, -8)
NectoLauncher.ContentFrame_3.Size = UDim2.new(1, -20, 0, 70)

NectoLauncher.ThemeSelectionFrame.Name = "ThemeSelectionFrame"
NectoLauncher.ThemeSelectionFrame.Parent = NectoLauncher.ContentFrame_3
NectoLauncher.ThemeSelectionFrame.AnchorPoint = Vector2.new(0, 1)
NectoLauncher.ThemeSelectionFrame.BackgroundColor3 = Color3.fromRGB(41, 84, 178)
NectoLauncher.ThemeSelectionFrame.Position = UDim2.new(0, 0, 1, -4)
NectoLauncher.ThemeSelectionFrame.Size = UDim2.new(0, 150, 0, 30)

NectoLauncher.UICorner_8.CornerRadius = UDim.new(0, 4)
NectoLauncher.UICorner_8.Parent = NectoLauncher.ThemeSelectionFrame

NectoLauncher.SelectionLeft.Name = "SelectionLeft"
NectoLauncher.SelectionLeft.Parent = NectoLauncher.ThemeSelectionFrame
NectoLauncher.SelectionLeft.AnchorPoint = Vector2.new(0, 0.5)
NectoLauncher.SelectionLeft.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.SelectionLeft.BackgroundTransparency = 1.000
NectoLauncher.SelectionLeft.Position = UDim2.new(0, 5, 0.5, 0)
NectoLauncher.SelectionLeft.Size = UDim2.new(0, 20, 0, 20)
NectoLauncher.SelectionLeft.Font = Enum.Font.SourceSans
NectoLauncher.SelectionLeft.Text = "<"
NectoLauncher.SelectionLeft.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.SelectionLeft.TextSize = 14.000

NectoLauncher.SelectionRight.Name = "SelectionRight"
NectoLauncher.SelectionRight.Parent = NectoLauncher.ThemeSelectionFrame
NectoLauncher.SelectionRight.AnchorPoint = Vector2.new(1, 0.5)
NectoLauncher.SelectionRight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.SelectionRight.BackgroundTransparency = 1.000
NectoLauncher.SelectionRight.Position = UDim2.new(1, -5, 0.5, 0)
NectoLauncher.SelectionRight.Size = UDim2.new(0, 20, 0, 20)
NectoLauncher.SelectionRight.Font = Enum.Font.SourceSans
NectoLauncher.SelectionRight.Text = ">"
NectoLauncher.SelectionRight.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.SelectionRight.TextSize = 14.000

NectoLauncher.SelectedLabel.Name = "SelectedLabel"
NectoLauncher.SelectedLabel.Parent = NectoLauncher.ThemeSelectionFrame
NectoLauncher.SelectedLabel.AnchorPoint = Vector2.new(0.5, 0.5)
NectoLauncher.SelectedLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NectoLauncher.SelectedLabel.BackgroundTransparency = 1.000
NectoLauncher.SelectedLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
NectoLauncher.SelectedLabel.Size = UDim2.new(1, -54, 1, -2)
NectoLauncher.SelectedLabel.Font = Enum.Font.SourceSans
NectoLauncher.SelectedLabel.Text = "Default Theme"
NectoLauncher.SelectedLabel.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.SelectedLabel.TextSize = 14.000

NectoLauncher.Launch.Name = "Launch"
NectoLauncher.Launch.Parent = NectoLauncher.ContentFrame_3
NectoLauncher.Launch.BackgroundColor3 = Color3.fromRGB(41, 84, 178)
NectoLauncher.Launch.Size = UDim2.new(0, 150, 0, 30)
NectoLauncher.Launch.Font = Enum.Font.SourceSans
NectoLauncher.Launch.Text = "Launch"
NectoLauncher.Launch.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.Launch.TextSize = 14.000

NectoLauncher.UICorner_9.CornerRadius = UDim.new(0, 4)
NectoLauncher.UICorner_9.Parent = NectoLauncher.Launch

NectoLauncher.Containers.Name = "Containers"
NectoLauncher.Containers.Parent = NectoLauncher.NectoLauncher

NectoLauncher.NewsDivider.Name = "NewsDivider"
NectoLauncher.NewsDivider.Parent = NectoLauncher.Containers
NectoLauncher.NewsDivider.BackgroundColor3 = Color3.fromRGB(18, 98, 159)
NectoLauncher.NewsDivider.LayoutOrder = 1
NectoLauncher.NewsDivider.Size = UDim2.new(1, -10, 0, 3)
NectoLauncher.NewsDivider.Visible = false

NectoLauncher.UICorner_10.Parent = NectoLauncher.NewsDivider

NectoLauncher.NewsLabel.Name = "NewsLabel"
NectoLauncher.NewsLabel.Parent = NectoLauncher.Containers
NectoLauncher.NewsLabel.BackgroundColor3 = Color3.fromRGB(28, 41, 56)
NectoLauncher.NewsLabel.BackgroundTransparency = 1.000
NectoLauncher.NewsLabel.Size = UDim2.new(1, -8, 0, 30)
NectoLauncher.NewsLabel.Visible = false
NectoLauncher.NewsLabel.Font = Enum.Font.SourceSans
NectoLauncher.NewsLabel.Text = ""
NectoLauncher.NewsLabel.TextColor3 = Color3.fromRGB(211, 216, 226)
NectoLauncher.NewsLabel.TextSize = 14.000
NectoLauncher.NewsLabel.TextWrapped = true
NectoLauncher.NewsLabel.TextXAlignment = Enum.TextXAlignment.Left

NectoLauncher.UIPadding_2.Parent = NectoLauncher.NewsLabel
NectoLauncher.UIPadding_2.PaddingBottom = UDim.new(0, 5)
NectoLauncher.UIPadding_2.PaddingLeft = UDim.new(0, 5)
NectoLauncher.UIPadding_2.PaddingRight = UDim.new(0, 5)
NectoLauncher.UIPadding_2.PaddingTop = UDim.new(0, 5)

--------------------------------------------------------------------
-- Gui to lua manual properties

NectoLauncher.Containers.NewsLabel.AutomaticSize = Enum.AutomaticSize.Y;
NectoLauncher.NewsSection.ContentFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y;
NectoLauncher.NewsSection.ContentFrame.ScrollBarImageColor3 = Color3.fromRGB(112, 112, 112);

--------------------------------------------------------------------
-- Get launcher data

NectoLauncher.NectoLauncher.Enabled = false;

local launcherData = game:GetService("HttpService"):JSONDecode(
	(game:HttpGet("https://raw.githubusercontent.com/debug420/Ez-Industries-Launcher-Data/master/LauncherData.json")));

NectoLauncher.NectoLauncher.Enabled = true;

--------------------------------------------------------------------
-- Startup animation

-- Essentially changes the visibillity of the descendants of the main frame of the launcher
local function changeElementState(state)
	for i,v in pairs(NectoLauncher.NectoLauncher.Frame:GetDescendants()) do
		if v:IsA("GuiObject") then
			v.Visible = state;
		end
	end
end

changeElementState(false);

local oldSize = NectoLauncher.NectoLauncher.Frame.Size;
NectoLauncher.NectoLauncher.Frame.Size = UDim2.new(0,0,0,0);

NectoLauncher.NectoLauncher.Frame:TweenSize(oldSize, Enum.EasingDirection.Out,
	Enum.EasingStyle.Quad, 0.3);

wait(0.35);

changeElementState(true);

--------------------------------------------------------------------
-- Get all the launcher data necessary

local newsData = launcherData["NewsData"];
local statusData = launcherData["StatusData"];
local latestVersion = launcherData["LatestVersion"];
local themes = launcherData["Themes"];

--------------------------------------------------------------------
-- Apply the launcher data: News

for i,v in pairs(newsData) do

	local newsOrder = v[1] * -1;	-- This is to make it sort in a different order
	local newsText = v[2];

	if newsText == "@DIVIDER" then
		local div = NectoLauncher.NewsDivider:Clone();
		div.LayoutOrder = newsOrder;
		div.Parent = NectoLauncher.NewsSection.ContentFrame;
		div.Visible = true;
	else
		local container = NectoLauncher.NewsLabel:Clone();
		container.Text = newsText;
		container.LayoutOrder = newsOrder;
		container.Parent = NectoLauncher.NewsSection.ContentFrame;
		container.Visible = true;
	end

end

--------------------------------------------------------------------
-- Apply the launcher data: Status

NectoLauncher.EzHubStatusFrame.Status.Text = statusData["EzHub"];
NectoLauncher.EzAPIStatusFrame.Status.Text = statusData["EzAPI"];
NectoLauncher.NectoLauncherStatusFrame.Status.Text = statusData["NectoLauncher"];

if NectoLauncher.EzHubStatusFrame.Status.Text == "Offline" then
	NectoLauncher.EzHubStatusFrame.Status.TextColor3 = Color3.fromRGB(192, 49, 52)
end
if NectoLauncher.EzAPIStatusFrame.Status.Text == "Offline" then
	NectoLauncher.EzAPIStatusFrame.Status.TextColor3 = Color3.fromRGB(192, 49, 52)
end
if NectoLauncher.NectoLauncherStatusFrame.Status.Text == "Offline" then
	NectoLauncher.NectoLauncherStatusFrame.Status.TextColor3 = Color3.fromRGB(192, 49, 52)
end

--------------------------------------------------------------------
-- Apply the launcher data: Themes

local selectedTheme = "Default";
local currentThemeIndex = themes[selectedTheme]["ThemeIndex"];
local highestThemeIndex = (function()
	local highest = 0;
	for i,v in pairs(themes) do
		if v["ThemeIndex"] > highest then highest = v["ThemeIndex"]; end
	end
	return highest;
end)();

local function getThemeWithThemeIndex(themeIndex)
	for i,v in pairs(themes) do
		if v["ThemeIndex"] == themeIndex then return i; end
	end
end

local function updateSelectedTheme()
	selectedTheme = getThemeWithThemeIndex(currentThemeIndex);
	NectoLauncher.SelectedLabel.Text = selectedTheme;
end

NectoLauncher.SelectionRight.MouseButton1Click:Connect(function()
	if currentThemeIndex == highestThemeIndex then
		currentThemeIndex = 1;
	else
		currentThemeIndex = currentThemeIndex + 1;
	end
	updateSelectedTheme();
end)

NectoLauncher.SelectionLeft.MouseButton1Click:Connect(function()
	if currentThemeIndex == 1 then
		currentThemeIndex = highestThemeIndex;
	else
		currentThemeIndex = currentThemeIndex - 1;
	end
	updateSelectedTheme();
end)

--------------------------------------------------------------------
-- Apply the launcher data: latest version

-- List of accouonts that can launch Ez Hub regardless of the status
-- Note that the status is just to prevent users from executing Ez Hub when it is in testing/broken stages
-- Therefore there is no need for any type of secure whitelist
local allowedOverrideUsers = {
	2626915991,
	1274116266,
	2626881906,
	2626911435,
	1608045548,
	1593772727,
	2821690140,
	269429714,
	1772649133,
	1818847308,
	382498,
	1606794809
}

NectoLauncher.Launch.MouseButton1Click:Connect(function()
	
	-- Check if services are down
	if not table.find(allowedOverrideUsers, game.Players.LocalPlayer.UserId) and (NectoLauncher.EzHubStatusFrame.Status.Text == "Offline" or
	NectoLauncher.EzAPIStatusFrame.Status.Text == "Offline" or
	NectoLauncher.NectoLauncherStatusFrame.Status.Text == "Offline") then
		spawn(function()
			NectoLauncher.Launch.Text = "Service Offline";
			wait(3);
			NectoLauncher.Launch.Text = "Launch";
		end)
		return;
	end

	NectoLauncher.Launch.Text = "Launching...";

	-- Apply the theme before launching Ez Hub
	_G.EzHubTheme = themes[selectedTheme];
	loadstring(game:HttpGet(latestVersion))();

	changeElementState(false)

	NectoLauncher.NectoLauncher.Frame:TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out,
		Enum.EasingStyle.Quad, 0.5, false, function()
			NectoLauncher.NectoLauncher:Destroy();
		end);

end)

--------------------------------------------------------------------
-- Dragify

local function dragify(MainFrame)

	local dragging;
	local dragInput;
	local dragStart;
	local startPos;

	local function update(input)
		local Delta = input.Position - dragStart;
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y);
		game:GetService("TweenService"):Create(MainFrame, TweenInfo.new(.15), {Position = Position}):Play();
	end

	MainFrame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true;
			dragStart = input.Position;
			startPos = MainFrame.Position;

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false;
				end
			end)
		end
	end)

	MainFrame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input;
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input);
		end
	end)
end

dragify(NectoLauncher.NectoLauncher.Frame);

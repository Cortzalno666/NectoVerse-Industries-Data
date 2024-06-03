-- Made By NVD (inspired by another chat it)

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.Position = UDim2.new(0.293939382, 0, 0.35603714, 0)
Frame.Size = UDim2.new(0, 223, 0, 141)
Frame.Active = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(47, 49, 59)
Frame_2.Position = UDim2.new(0.0358744413, 0, 0.0496453904, 0)
Frame_2.Size = UDim2.new(0, 208, 0, 126)

UICorner.Parent = Frame_2

TextBox.Parent = Frame_2
TextBox.BackgroundColor3 = Color3.fromRGB(31, 31, 40)
TextBox.Position = UDim2.new(0.0538115874, 0, 0.112630695, 0)
TextBox.Size = UDim2.new(0, 187, 0, 47)
TextBox.Font = Enum.Font.GothamBold
TextBox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
TextBox.PlaceholderText = "Chat Goes Here!"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(178, 178, 178)
TextBox.TextSize = 18.000
TextBox.TextWrapped = true

UICorner_2.Parent = TextBox

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.fromRGB(31, 31, 40)
TextButton.Position = UDim2.new(0.0538115874, 0, 0.579365075, 0)
TextButton.Size = UDim2.new(0, 187, 0, 44)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "Chat It!"
TextButton.TextColor3 = Color3.fromRGB(189, 189, 189)
TextButton.TextSize = 20.000
TextButton.MouseButton1Down:Connect(function()
	local args = {
		[1] = (TextButton.Parent.TextBox.Text),
		[2] = "All"
	}

	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
end)

UICorner_3.Parent = TextButton

UICorner_4.Parent = Frame

-- Scripts:

local function XORDD_fake_script() -- Frame.Dragify 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	local TweenService = game:GetService("TweenService")
	
	local Frame = script.Parent
	local StartPosition = nil
	local DragStart = nil
	local DragSpeed = 0.25
	local DragToggle = nil
	
	local function updateInput(Input)
		local Delta = Input.Position - DragStart
		local Position = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
		TweenService:Create(Frame, TweenInfo.new(DragSpeed), {Position = Position}):Play()
	end
	
	Frame.InputBegan:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch) then
			DragToggle = true
			DragStart = Input.Position
			StartPosition = Frame.Position
			Input.Changed:Connect(function()
				if Input.UserInputState == Enum.UserInputState.End then
					DragToggle = false
				end
			end)
		end
	end)
	
	UserInputService.InputChanged:Connect(function(Input)
		if (Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch) then
			if DragToggle then
				updateInput(Input)
			end
		end
	end)
end
coroutine.wrap(XORDD_fake_script)()

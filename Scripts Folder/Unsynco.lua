-- ==========================================
-- UNSYNCO
-- ==========================================
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer

-- Configuration & State
local ghostActive = false
local connections = {}
local ghostOutline = nil
local TOGGLE_KEY = Enum.KeyCode.G 

local SETTINGS = {
    OutlineColor = Color3.fromRGB(0, 255, 255),
    ActiveColor = Color3.fromRGB(0, 150, 255),
    IdleColor = Color3.fromRGB(30, 30, 30),
    MinWalkSpeed = 16
}

-- ==========================================
-- PHANTOM LOGIC
-- ==========================================
local function toggleStealthPhantom()
    ghostActive = not ghostActive
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")

    for _, conn in pairs(connections) do conn:Disconnect() end
    connections = {}
    if ghostOutline then ghostOutline:Destroy() end

    -- Update UI Appearance
    local screenGui = LocalPlayer.PlayerGui:FindFirstChild("XinexPhantom_UI")
    if screenGui then
        local btn = screenGui.Main.ToggleButton
        btn.Text = ghostActive and "ON" or "OFF"
        TweenService:Create(btn, TweenInfo.new(0.3), {BackgroundColor3 = ghostActive and SETTINGS.ActiveColor or SETTINGS.IdleColor}):Play()
    end

    if ghostActive then
        ghostOutline = Instance.new("Highlight")
        ghostOutline.FillTransparency = 1
        ghostOutline.OutlineColor = SETTINGS.OutlineColor
        ghostOutline.Parent = char
        
        local pulseInfo = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true)
        TweenService:Create(ghostOutline, pulseInfo, {OutlineTransparency = 0.8}):Play()

        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanTouch = false; part.CanQuery = false
            end
        end

        connections.Speed = hum:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
            if hum.WalkSpeed < SETTINGS.MinWalkSpeed then hum.WalkSpeed = SETTINGS.MinWalkSpeed end
        end)
        hum.WalkSpeed = math.max(hum.WalkSpeed, SETTINGS.MinWalkSpeed)
    else
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanTouch = true; part.CanQuery = true
            end
        end
    end
end

-- ==========================================
-- SMOOTH DRAGGABLE UI ENGINE
-- ==========================================
local function buildGUI()
    local sg = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    sg.Name = "XinexPhantom_UI"
    sg.ResetOnSpawn = false

    local main = Instance.new("Frame", sg)
    main.Name = "Main"
    main.Size = UDim2.new(0, 70, 0, 70)
    main.Position = UDim2.new(0.1, 0, 0.4, 0)
    main.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    main.BorderSizePixel = 0
    main.Active = true
    Instance.new("UICorner", main).CornerRadius = UDim.new(1, 0)

    local btn = Instance.new("TextButton", main)
    btn.Name = "ToggleButton"
    btn.Size = UDim2.new(0.8, 0, 0.8, 0)
    btn.Position = UDim2.new(0.1, 0, 0.1, 0)
    btn.Text = "OFF"
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 14
    btn.BackgroundColor3 = SETTINGS.IdleColor
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Instance.new("UICorner", btn).CornerRadius = UDim.new(1, 0)

    -- Improved Dragging Script
    local dragging, dragInput, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        -- Smoothly move the frame to the new position
        main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    main.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = main.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    main.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)

    btn.MouseButton1Click:Connect(toggleStealthPhantom)
end

-- ==========================================
-- INPUT & LIFECYCLE
-- ==========================================
UserInputService.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == TOGGLE_KEY then
        toggleStealthPhantom()
    end
end)

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.5)
    if ghostActive then 
        ghostActive = false
        toggleStealthPhantom() 
    end
end)

buildGUI()


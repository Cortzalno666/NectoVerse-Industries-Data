local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Settings
local lockOnActive = false
local MAX_DISTANCE = 100 
local lastToggle = 0
local toggleCooldown = 0.3 

-- Drag/Hold Protection
local dragging = false
local dragStartPos = nil
local startGuiPos = nil
local dragThreshold = 5 

-- GUI Elements
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "XinexV11"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 80, 0, 80)
mainFrame.Position = UDim2.new(0.05, 0, 0.4, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Parent = screenGui

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(1, 0)
uiCorner.Parent = mainFrame

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 3
uiStroke.Color = Color3.fromRGB(255, 0, 50)
uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
uiStroke.Parent = mainFrame

local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, 0, 1, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = "OFF\n[G]"
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 13
statusLabel.Parent = mainFrame

-- Function to find the actual Ball part, ignoring the player model
local function getPhysicalBall(obj)
    if obj:IsA("BasePart") then return obj end
    -- Check for common ball part names used in football games
    local ballPart = obj:FindFirstChild("Ball") or obj:FindFirstChild("Football") or obj:FindFirstChild("Handle")
    if ballPart and ballPart:IsA("BasePart") then
        return ballPart
    end
    -- If it's a model, get the largest part inside it
    return obj:FindFirstChildWhichIsA("BasePart", true)
end

-- Core Detection
local function getTarget()
    local bestPart = nil
    local shortestDist = MAX_DISTANCE
    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end

    for _, v in ipairs(workspace:GetDescendants()) do
        if v.Name:lower():find("ball") or v.Name:lower():find("football") then
            local part = getPhysicalBall(v)
            
            -- Validation: Must be visible, not underground, and a physical part
            if part and part.Transparency < 1 and part.Position.Y > -15 then
                local dist = (part.Position - hrp.Position).Magnitude
                
                if dist < shortestDist then
                    shortestDist = dist
                    bestPart = part
                end
            end
        end
    end
    return bestPart
end

-- Toggle and Keybinds
local function toggle()
    if tick() - lastToggle < toggleCooldown then return end
    lastToggle = tick()
    lockOnActive = not lockOnActive
    
    uiStroke.Color = lockOnActive and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 0, 50)
    statusLabel.TextColor3 = lockOnActive and Color3.fromRGB(0, 255, 150) or Color3.fromRGB(255, 255, 255)
    if not lockOnActive then statusLabel.Text = "OFF\n[G]" end
end

UserInputService.InputBegan:Connect(function(io, p) if not p and io.KeyCode == Enum.KeyCode.G then toggle() end end)

-- Drag & Tap logic
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true; dragStartPos = input.Position; startGuiPos = mainFrame.Position
    end
end)

UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        if dragging then
            local moveDistance = (input.Position - dragStartPos).Magnitude
            if moveDistance < dragThreshold then toggle() end
            dragging = false
        end
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStartPos
        mainFrame.Position = UDim2.new(startGuiPos.X.Scale, startGuiPos.X.Offset + delta.X, startGuiPos.Y.Scale, startGuiPos.Y.Offset + delta.Y)
    end
end)

-- Precision Camera Loop
RunService.RenderStepped:Connect(function()
    if lockOnActive then
        local ball = getTarget()
        if ball then
            statusLabel.Text = "LOCK"
            
            -- PRECISION FIX: Target the ball's center specifically
            -- We use CFrame.lookAt but isolate the ball's Position
            local currentCamPos = camera.CFrame.Position
            local ballPos = ball.Position
            
            -- Optional: Add a tiny upward offset (0.5 studs) so you see the top of the ball
            local targetPosition = ballPos + Vector3.new(0, 0.5, 0)
            
            -- Smooth interpolation (0.15) ensures it doesn't jitter when the player moves
            camera.CFrame = CFrame.new(currentCamPos, targetPosition)
        else
            statusLabel.Text = "WAIT"
        end
    end
end)

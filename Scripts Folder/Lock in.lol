local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

local lockOnActive = false
local targetBall = nil
local MAX_DISTANCE = 50 -- Increased range (approx. 1/4 of a pitch)

-- Visual Highlight
local ballHighlight = Instance.new("Highlight")
ballHighlight.FillColor = Color3.fromRGB(255, 255, 255)
ballHighlight.FillTransparency = 0.5
ballHighlight.OutlineColor = Color3.fromRGB(0, 255, 255)

-- GUI Setup
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "TrackerGui"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0, 75, 0, 75)
toggleButton.Position = UDim2.new(0.1, 0, 0.5, 0)
toggleButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
toggleButton.Text = "OFF\n(G)"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.Font = Enum.Font.GothamBold
toggleButton.TextSize = 12
toggleButton.Parent = screenGui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(1, 0)
corner.Parent = toggleButton

-- UUID Verification
local function isUUID(str)
    if not str or #str < 30 then return false end
    local _, hyphens = str:gsub("-", "")
    return hyphens >= 3
end

-- Safely find the physical part of a model or part
local function getPhysicalPart(obj)
    if obj:IsA("BasePart") then return obj end
    return obj:FindFirstChildWhichIsA("BasePart", true) -- Recursive search
end

-- Detection Logic (The "Interceptor" fix)
local function findActiveFootball()
    local bestCandidate = nil
    local bestScore = -1
    
    local character = player.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then return nil end
    
    -- Search EVERY object in the workspace to ensure we don't miss held balls
    for _, obj in ipairs(workspace:GetDescendants()) do
        local name = obj.Name:lower()
        if name:find("ball") or name:find("football") then
            local root = getPhysicalPart(obj)
            if not root then continue end
            
            -- Ignore underground/storage objects
            if root.Position.Y < -10 or root.Transparency == 1 then continue end
            
            local dist = (root.Position - hrp.Position).Magnitude
            if dist > MAX_DISTANCE then continue end
            
            local score = 10 -- Base score
            
            -- Check if it's being held (Interception Fix)
            local isHeld = false
            local current = obj.Parent
            while current and current ~= workspace do
                if current:IsA("Model") and current:FindFirstChild("Humanoid") then
                    isHeld = true
                    break
                end
                current = current.Parent
            end
            
            if isHeld then score = score + 100 end -- Force priority on held balls
            if isUUID(obj.Name) then score = score + 50 end
            
            -- Prioritize the closest ball if scores are tied
            score = score - (dist / 10)
            
            if score > bestScore then
                bestScore = score
                bestCandidate = obj
            end
        end
    end
    return bestCandidate
end

-- Get Name of Ball Holder
local function getHolderName(ball)
    if not ball then return "None" end
    local current = ball.Parent
    while current and current ~= workspace do
        if current:IsA("Model") and current:FindFirstChild("Humanoid") then
            return current.Name
        end
        current = current.Parent
    end
    return "Free"
end

-- Toggle Logic
local function toggle()
    lockOnActive = not lockOnActive
    toggleButton.BackgroundColor3 = lockOnActive and Color3.fromRGB(50, 200, 50) or Color3.fromRGB(200, 50, 50)
    if not lockOnActive then
        ballHighlight.Parent = nil
        toggleButton.Text = "OFF\n(G)"
    end
end

toggleButton.MouseButton1Click:Connect(toggle)
UserInputService.InputBegan:Connect(function(i, p) if not p and i.KeyCode == Enum.KeyCode.G then toggle() end end)

-- Draggable Logic
local dragging, dragStart, startPos
toggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true; dragStart = input.Position; startPos = toggleButton.Position
    end
end)
toggleButton.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        toggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)
UserInputService.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then dragging = false end end)

-- Loop
RunService.RenderStepped:Connect(function()
    if lockOnActive then
        targetBall = findActiveFootball()
        if targetBall then
            local part = getPhysicalPart(targetBall)
            if part then
                local holder = getHolderName(targetBall)
                toggleButton.Text = "ON\n" .. holder
                
                ballHighlight.Parent = targetBall
                ballHighlight.Adornee = targetBall
                camera.CFrame = CFrame.new(camera.CFrame.Position, part.Position)
            end
        else
            ballHighlight.Parent = nil
            toggleButton.Text = "ON\nSearching..."
        end
    end
end)


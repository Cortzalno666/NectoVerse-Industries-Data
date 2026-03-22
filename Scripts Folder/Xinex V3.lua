-- XINEX 3.0 | Fixed Functional HBE
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Configuration
local transparencyValue = 1
local hbeActive = false
local increment = 0.1

-- Sizes reduced by exactly 2 from your original (12->10, 9->7, 6->4, 3->1)
local SIZES = {10, 7, 4, 1} 
local BODY_PARTS = {
    "LowerTorso", "UpperTorso", "HumanoidRootPart", 
    "Left Arm", "Right Arm", "Left Leg", "Right Leg",
    "LeftHand", "RightHand", "LeftFoot", "RightFoot"
}

local function sendNotification(title, text)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 2
    })
end

-- Cleanup: Only removes parts we created
local function cleanupHBE()
    local char = LocalPlayer.Character
    if not char then return end
    for _, part in pairs(char:GetChildren()) do
        if part:IsA("BasePart") and part.Name:match("_XinexExp") then
            part:Destroy()
        end
    end
end

local function updatePartTransparency()
    local char = LocalPlayer.Character
    if not char then return end
    for _, part in pairs(char:GetChildren()) do
        if part.Name:match("_XinexExp") then
            part.Transparency = transparencyValue
        end
    end
end

local function createAndStabilizePart(part, size, name)
    local clone = Instance.new("Part")
    clone.Name = name .. "_XinexExp"
    clone.Size = size
    clone.CanCollide = false 
    clone.Massless = true    -- Essential: stops the parts from slowing you down
    clone.CanTouch = true    -- Essential: makes the hitbox register hits
    clone.CanQuery = true    
    clone.Transparency = transparencyValue
    clone.CastShadow = false
    clone.Position = part.Position
    clone.Parent = part.Parent -- Moved back to Character so it actually works

    local att0 = Instance.new("Attachment", clone)
    local att1 = Instance.new("Attachment", part)

    local ap = Instance.new("AlignPosition", clone)
    ap.Attachment0 = att0
    ap.Attachment1 = att1
    ap.RigidityEnabled = true
    ap.Parent = clone

    local ao = Instance.new("AlignOrientation", clone)
    ao.Attachment0 = att0
    ao.Attachment1 = att1
    ao.RigidityEnabled = true
    ao.Parent = clone

    return clone
end

local function toggleHBE(button)
    hbeActive = not hbeActive
    
    if hbeActive then
        button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        
        local char = LocalPlayer.Character
        if char then
            for _, pName in pairs(BODY_PARTS) do
                local target = char:FindFirstChild(pName)
                if target then
                    for i, size in ipairs(SIZES) do
                        createAndStabilizePart(target, Vector3.new(size, size, size), pName)
                    end
                end
            end
        end
        sendNotification("XINEX", "HBE ENABLED (Size -2)")
    else
        button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        button.TextColor3 = Color3.fromRGB(0, 0, 0)
        cleanupHBE()
        sendNotification("XINEX", "HBE DISABLED")
    end
end

-- GUI
local function createCustomGUI()
    local sg = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    sg.Name = "XinexGui"
    sg.ResetOnSpawn = false

    local frame = Instance.new("Frame", sg)
    frame.Size = UDim2.new(0, 220, 0, 70)
    frame.Position = UDim2.new(0, 10, 0, 10)
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.Active = true
    frame.Draggable = true

    local title = Instance.new("TextLabel", frame)
    title.Size = UDim2.new(1, -30, 0, 30)
    title.Text = "XINEX 2.0"
    title.Font = Enum.Font.GothamBold

    local btn = Instance.new("TextButton", frame)
    btn.Size = UDim2.new(1, 0, 0, 40)
    btn.Position = UDim2.new(0, 0, 0, 30)
    btn.Text = "EXPD"
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14

    btn.MouseButton1Click:Connect(function() toggleHBE(btn) end)
    
    UserInputService.InputBegan:Connect(function(input, gpe)
        if gpe then return end
        if input.KeyCode == Enum.KeyCode.T then toggleHBE(btn)
        elseif input.KeyCode == Enum.KeyCode.M then transparencyValue = math.min(transparencyValue + increment, 1) updatePartTransparency()
        elseif input.KeyCode == Enum.KeyCode.N then transparencyValue = math.max(transparencyValue - increment, 0) updatePartTransparency()
        end
    end)
end

createCustomGUI()

LocalPlayer.CharacterAdded:Connect(function()
    hbeActive = false
end)


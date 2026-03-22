-- XINEX 4.0 | THE UNTOUCHABLE PHANTOM (ANTI-CC)
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Configuration
local transparencyValue = 1
local hbeActive = false
local ghostActive = false
local immunityConnection = nil

local SIZES = {10, 7, 4, 1} 
local BODY_PARTS = {
    "LowerTorso", "UpperTorso", "HumanoidRootPart", 
    "Left Arm", "Right Arm", "Left Leg", "Right Leg",
    "LeftHand", "RightHand", "LeftFoot", "RightFoot"
}

local function notify(title, text)
    game.StarterGui:SetCore("SendNotification", {Title = title, Text = text, Duration = 2})
end

-- ==========================================
-- THE IMMUNITY LOOP (Fights off Tackles & Freezes)
-- ==========================================
local function toggleImmunityLoop(state)
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local hrp = char:FindFirstChild("HumanoidRootPart")

    if immunityConnection then
        immunityConnection:Disconnect()
        immunityConnection = nil
    end

    if state then
        -- Listen for incoming "Shoves" or "Knockbacks" (BodyMovers) and destroy them instantly
        char.DescendantAdded:Connect(function(descendant)
            if not ghostActive then return end
            -- If the game tries to apply forced movement to your real body, delete it
            if descendant:IsA("BodyVelocity") or descendant:IsA("BodyForce") or descendant:IsA("BodyThrust") or descendant:IsA("BodyPosition") or descendant:IsA("LinearVelocity") or descendant:IsA("VectorForce") then
                -- Make sure we don't delete our own HBE constraints
                if descendant.Parent and not descendant.Parent.Name:match("_XinexExp") then
                    RunService.RenderStepped:Wait() -- Wait 1 frame to avoid calculation errors
                    descendant:Destroy()
                end
            end
        end)

        -- Heartbeat loop to force your character to stay active (Anti-Freeze & Anti-Stun)
        immunityConnection = RunService.Heartbeat:Connect(function()
            if not hum or not hrp then return end
            
            -- Anti-Freeze: Force WalkSpeed and JumpPower back to normal if the game sets them to 0
            if hum.WalkSpeed < 16 then hum.WalkSpeed = 16 end
            if hum.JumpPower < 50 then hum.JumpPower = 50 end
            
            -- Anti-Stun: Force you to stand up if a tackle tries to sit/trip you
            hum.Sit = false
            hum.PlatformStand = false
            
            -- Anti-Anchor: Unanchor all real body parts if a freeze spell anchors you
            for _, part in pairs(char:GetChildren()) do
                if part:IsA("BasePart") and not part.Name:match("_XinexExp") then
                    part.Anchored = false
                end
            end
        end)
    end
end

-- ==========================================
-- GHOST MODE (Anti-Touch & Anti-Raycast)
-- ==========================================
local function setGhostMode(state)
    local char = LocalPlayer.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")

    for _, part in pairs(char:GetDescendants()) do
        if part:IsA("BasePart") and not part.Name:match("_XinexExp") then
            part.CanTouch = not state
            part.CanQuery = not state
            
            if part.Name == "HumanoidRootPart" or part.Name:match("Foot") then
                part.CanCollide = true
            else
                part.CanCollide = not state
            end
        end
    end

    if state and hum then
        hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
        hum:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
    elseif hum then
        hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
        hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
        hum:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    end
    
    ghostActive = state
    toggleImmunityLoop(state) -- Start fighting back against server actions
    notify("XINEX", state and "GHOST: ACTIVE (God Mode)" or "GHOST: DISABLED")
end

-- ==========================================
-- HBE LOGIC
-- ==========================================
local function createAndStabilizePart(part, size)
    local clone = Instance.new("Part")
    clone.Name = part.Name .. "_XinexExp"
    clone.Size = size
    clone.CanCollide = false 
    clone.Massless = true    
    clone.CanTouch = true    
    clone.CanQuery = true    
    clone.Transparency = transparencyValue
    clone.CastShadow = false
    clone.Parent = part.Parent 

    local att0, att1 = Instance.new("Attachment", clone), Instance.new("Attachment", part)
    local ap = Instance.new("AlignPosition", clone)
    ap.Attachment0, ap.Attachment1, ap.RigidityEnabled, ap.Parent = att0, att1, true, clone
    local ao = Instance.new("AlignOrientation", clone)
    ao.Attachment0, ao.Attachment1, ao.RigidityEnabled, ao.Parent = att0, att1, true, clone

    return clone
end

local function toggleHBE(btn)
    hbeActive = not hbeActive
    local char = LocalPlayer.Character
    if hbeActive and char then
        btn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        for _, pName in pairs(BODY_PARTS) do
            local target = char:FindFirstChild(pName)
            if target then
                for _, size in ipairs(SIZES) do
                    createAndStabilizePart(target, Vector3.new(size, size, size))
                end
            end
        end
        notify("XINEX", "HBE ACTIVE")
    else
        btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        btn.TextColor3 = Color3.fromRGB(0, 0, 0)
        if char then
            for _, p in pairs(char:GetChildren()) do if p.Name:match("_XinexExp") then p:Destroy() end end
        end
        notify("XINEX", "HBE DISABLED")
    end
end

-- ==========================================
-- GUI
-- ==========================================
local function buildGUI()
    local sg = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    sg.ResetOnSpawn = false
    local f = Instance.new("Frame", sg)
    f.Size, f.Position, f.BackgroundColor3, f.Active, f.Draggable = UDim2.new(0, 200, 0, 120), UDim2.new(0, 10, 0, 10), Color3.fromRGB(255,255,255), true, true
    
    local hBtn = Instance.new("TextButton", f)
    hBtn.Size, hBtn.Position, hBtn.Text = UDim2.new(1, 0, 0, 50), UDim2.new(0, 0, 0, 20), "EXPAND HITBOX"
    
    local gBtn = Instance.new("TextButton", f)
    gBtn.Size, gBtn.Position, gBtn.Text = UDim2.new(1, 0, 0, 50), UDim2.new(0, 0, 0, 70), "GHOST (Untouchable)"

    hBtn.MouseButton1Click:Connect(function() toggleHBE(hBtn) end)
    gBtn.MouseButton1Click:Connect(function() 
        setGhostMode(not ghostActive)
        gBtn.BackgroundColor3 = ghostActive and Color3.fromRGB(0,0,0) or Color3.fromRGB(255,255,255)
        gBtn.TextColor3 = ghostActive and Color3.fromRGB(255,255,255) or Color3.fromRGB(0,0,0)
    end)
end

buildGUI()

LocalPlayer.CharacterAdded:Connect(function()
    hbeActive = false
    ghostActive = false
    if immunityConnection then
        immunityConnection:Disconnect()
        immunityConnection = nil
    end
end)


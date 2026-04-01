-- ==========================================
-- XINEX V5
-- ==========================================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

local ghostActive = false
local hbeActive = false
local currentSize = 10
local connections = {}
local ghostOutline = nil

local SETTINGS = {
    ThemeColor = Color3.fromRGB(0, 255, 255),
    MinWalkSpeed = 15.5,
    RecoveryDelay = 0.05,
    VelocityDampen = 0.1
}

-- ==========================================
-- INSTANT CENTERED HBE (ONE PART ONLY)
-- ==========================================
local function clearHBE()
    local char = LocalPlayer.Character
    if char then
        for _, p in pairs(char:GetChildren()) do
            if p.Name == "HBE_Root_Xinex" then p:Destroy() end
        end
    end
end

local function createInstantHBE()
    clearHBE()
    if not hbeActive then return end
    
    local char = LocalPlayer.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end

    -- Create ONE single master hitbox
    local hb = Instance.new("Part")
    hb.Name = "HBE_Root_Xinex"
    hb.Size = Vector3.new(currentSize, currentSize, currentSize)
    hb.CanCollide = false
    hb.Massless = true
    hb.CanTouch = true
    hb.Transparency = 1
    hb.Parent = char

    -- Cyan Border (Only 1 visible)
    local box = Instance.new("SelectionBox")
    box.Adornee = hb
    box.LineThickness = 0.1 -- Thick and clear
    box.Color3 = SETTINGS.ThemeColor
    box.SurfaceTransparency = 1 
    box.Parent = hb

    -- Weld it INSTANTLY to the RootPart
    local weld = Instance.new("Weld", hb)
    weld.Part0 = hb
    weld.Part1 = root
    weld.C0 = CFrame.new(0, 0, 0)
end

-- ==========================================
-- GHOST LOGIC (DESYNC)
-- ==========================================
local function toggleGhost(state)
    local char = LocalPlayer.Character
    if not char then return end
    
    if connections.Ghost then connections.Ghost:Disconnect() end
    if ghostOutline then ghostOutline:Destroy() end

    if state then
        ghostOutline = Instance.new("Highlight")
        ghostOutline.FillTransparency = 1
        ghostOutline.OutlineColor = SETTINGS.ThemeColor
        ghostOutline.Parent = char

        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") and part.Name ~= "HBE_Root_Xinex" then
                part.CanTouch = false
                part.CanQuery = false
            end
        end

        connections.Ghost = RunService.PostSimulation:Connect(function()
            local hum = char:FindFirstChildOfClass("Humanoid")
            local hrp = char:FindFirstChild("HumanoidRootPart")
            if not hum or not hrp then return end

            if hrp.Velocity.Magnitude > 80 then hrp.Velocity *= SETTINGS.VelocityDampen end
            if hum.WalkSpeed < SETTINGS.MinWalkSpeed then hum.WalkSpeed = SETTINGS.MinWalkSpeed end
            if hum.Sit then
                task.delay(SETTINGS.RecoveryDelay, function()
                    if ghostActive then hum.Sit = false end
                end)
            end
        end)
    else
        for _, part in pairs(char:GetDescendants()) do
            if part:IsA("BasePart") then part.CanTouch = true; part.CanQuery = true end
        end
    end
end

-- ==========================================
-- MOBILE GUI (DRAGGABLE)
-- ==========================================
local function buildGUI()
    local sg = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    sg.Name = "Xinex12_UI"; sg.ResetOnSpawn = false

    local main = Instance.new("Frame", sg)
    main.Size, main.Position = UDim2.new(0, 160, 0, 120), UDim2.new(0.1, 0, 0.4, 0)
    main.BackgroundColor3, main.Active = Color3.fromRGB(15, 15, 15), true
    Instance.new("UICorner", main)

    -- Mobile Drag
    local d, ds, sp; main.InputBegan:Connect(function(i) if i.UserInputType == Enum.UserInputType.Touch then d = true; ds = i.Position; sp = main.Position end end)
    UserInputService.InputChanged:Connect(function(i) if d and i.UserInputType == Enum.UserInputType.Touch then local dl = i.Position - ds; main.Position = UDim2.new(sp.X.Scale, sp.X.Offset + dl.X, sp.Y.Scale, sp.Y.Offset + dl.Y) end end)
    main.InputEnded:Connect(function(i) if i.UserInputType == Enum.UserInputType.Touch then d = false end end)

    local gBtn = Instance.new("TextButton", main)
    gBtn.Size, gBtn.Position, gBtn.Text = UDim2.new(1, -10, 0, 30), UDim2.new(0, 5, 0, 5), "PHANTOM: OFF"
    gBtn.BackgroundColor3, gBtn.TextColor3 = Color3.fromRGB(25, 25, 25), Color3.fromRGB(255, 255, 255)
    Instance.new("UICorner", gBtn)

    local hBtn = Instance.new("TextButton", main)
    hBtn.Size, hBtn.Position, hBtn.Text = UDim2.new(1, -10, 0, 30), UDim2.new(0, 5, 0, 40), "HBE: OFF"
    hBtn.BackgroundColor3, hBtn.TextColor3 = Color3.fromRGB(25, 25, 25), Color3.fromRGB(255, 255, 255)
    Instance.new("UICorner", hBtn)

    local sInp = Instance.new("TextBox", main)
    sInp.Size, sInp.Position, sInp.Text = UDim2.new(1, -10, 0, 30), UDim2.new(0, 5, 0, 75), "10"
    sInp.BackgroundColor3, sInp.TextColor3 = Color3.fromRGB(35, 35, 35), SETTINGS.ThemeColor
    Instance.new("UICorner", sInp)

    gBtn.MouseButton1Click:Connect(function()
        ghostActive = not ghostActive; toggleGhost(ghostActive)
        gBtn.Text = ghostActive and "PHANTOM: ON" or "PHANTOM: OFF"
    end)

    hBtn.MouseButton1Click:Connect(function()
        hbeActive = not hbeActive; createInstantHBE()
        hBtn.Text = hbeActive and "HBE: ON" or "HBE: OFF"
    end)

    sInp.FocusLost:Connect(function()
        local v = tonumber(sInp.Text)
        if v then currentSize = v; if hbeActive then createInstantHBE() end end
    end)
end

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.5)
    if ghostActive then toggleGhost(true) end
    if hbeActive then createInstantHBE() end
end)

buildGUI()

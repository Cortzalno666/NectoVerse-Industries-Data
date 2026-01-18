-- [[ XINEX: The Ultimate Sls SCRIPT ]] --
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local ActionRF = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RF"):WaitForChild("PerformActionThenGet")

-- [[ GLOBAL CONFIG ]] --
local active = false
local chargeStarted = 0
local transparencyValue = 1
local increment = 0.1

-- [[ 1. MIX FEATURES (INTERNAL) ]] --

-- Module Bypass (No CD / Inf Stamina / Anti-Stun)
local success, Timegate = pcall(function()
    return require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Timegate"))
end)
if success and Timegate then
    if setreadonly then setreadonly(Timegate, false) end
    Timegate.IsLocked = function() return false end
    Timegate.Consume = function(self, amount) return 0 end
    Timegate.IsGoalie = function() return true end
    if setreadonly then setreadonly(Timegate, true) end
end

-- Ghost Ball Logic (1s + Anti-Void)
local function triggerGhostBall()
    if not active then return end
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if ball then
            local endTime = tick() + 1
            while tick() < endTime and active do
                ball.CanCollide = false
                if ball.Position.Y < 2.0 then ball.AssemblyLinearVelocity += Vector3.new(0, 3, 0) end
                task.wait()
            end
            ball.CanCollide = true
        end
    end)
end

-- Remote Hook (The 0.9s Power Logic)
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if active and (method == "FireServer" or method == "InvokeServer") and self.Name:find("PerformAction") then
        local holdDuration = tick() - chargeStarted
        if holdDuration >= 0.9 then
            for i, arg in pairs(args) do
                if typeof(arg) == "Vector3" and arg.Magnitude > 30 then 
                    -- 2x Speed / 1.5x Height
                    args[i] = Vector3.new(arg.X * 2.0, arg.Y * 1.5, arg.Z * 2.0)
                    triggerGhostBall()
                    break 
                end
            end
        end
        chargeStarted = tick() 
    end
    return oldNamecall(self, unpack(args))
end)

-- Phasing Thread
task.spawn(function()
    while true do
        if active then
            pcall(function() ActionRF:InvokeServer("EvadeActivated") end)
        end
        task.wait(0.3)
    end
end)

-- Physics Protection
LocalPlayer.CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid", 10)
    if hum then
        hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    end
    -- IMPORTANT: We reset 'active' state on death to prevent bugs, but GUI stays.
    if active then active = false end 
end)

-- [[ 2. HBE LOGIC ]] --

local function sendNotification(title, text)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 3
    })
end

local function updateTransparency()
    local char = LocalPlayer.Character
    if char then
        for _, part in pairs(char:GetChildren()) do
            if part:IsA("Part") and part.Name:match("_Expanded") then
                part.Transparency = transparencyValue
            end
        end
    end
end

local function increaseTransparency()
    if transparencyValue < 1 then
        transparencyValue = math.min(transparencyValue + increment, 1)
        updateTransparency()
        sendNotification("Transparência Atualizada", "Aumentada para: " .. transparencyValue)
    else
        sendNotification("Transparência Máxima", "Não pode aumentar mais.")
    end
end

local function decreaseTransparency()
    if transparencyValue > 0 then
        transparencyValue = math.max(transparencyValue - increment, 0)
        updateTransparency()
        sendNotification("Transparência Atualizada", "Diminuída para: " .. transparencyValue)
    else
        sendNotification("Transparência Mínima", "Não pode diminuir mais.")
    end
end

local function createAndStabilizePart(part, size, name, transparency)
    local existingClone = part.Parent:FindFirstChild(name)
    if existingClone then existingClone:Destroy() end

    local clone = Instance.new("Part")
    clone.Size = size
    clone.CanCollide = false
    clone.Transparency = transparencyValue 
    clone.CastShadow = false
    clone.Name = name
    clone.Position = part.Position
    clone.Anchored = false
    clone.Parent = part.Parent

    local originalAttachment = Instance.new("Attachment")
    originalAttachment.Name = "OriginalAttachment"
    originalAttachment.Parent = part

    local cloneAttachment = Instance.new("Attachment")
    cloneAttachment.Name = "CloneAttachment"
    cloneAttachment.Parent = clone

    local alignPosition = Instance.new("AlignPosition")
    alignPosition.Attachment0 = cloneAttachment
    alignPosition.Attachment1 = originalAttachment
    alignPosition.RigidityEnabled = true
    alignPosition.Parent = clone

    local alignOrientation = Instance.new("AlignOrientation")
    alignOrientation.Attachment0 = cloneAttachment
    alignOrientation.Attachment1 = originalAttachment
    alignOrientation.RigidityEnabled = true
    alignOrientation.Parent = clone

    return clone
end

-- [[ 3. MAIN TOGGLE FUNCTION (LINKED TO GUI) ]] --
local function expandParts()
    active = not active 

    local character = LocalPlayer.Character
    if not character then return end

    if active then
        -- TURN ON
        local targets = {"LowerTorso", "UpperTorso", "HumanoidRootPart", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftFoot", "RightFoot"}
        for _, name in pairs(targets) do
            local part = character:FindFirstChild(name)
            if part then
                createAndStabilizePart(part, Vector3.new(12, 12, 12), name.."_Expanded", transparencyValue)
            end
        end
        sendNotification("XINEX", "SYSTEM ACTIVATED")
    else
        -- TURN OFF
        for _, v in pairs(character:GetDescendants()) do
            if v.Name:match("_Expanded") or v.Name == "OriginalAttachment" or v.Name == "CloneAttachment" or v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
                v:Destroy()
            end
        end
        sendNotification("XINEX", "SYSTEM DEACTIVATED")
    end
end

-- [[ 4. GUI SECTION (PERMANENT) ]] --
local function createCustomGUI()
    -- Check if it already exists so we don't duplicate it
    if LocalPlayer.PlayerGui:FindFirstChild("ExpandPartsGui") then return end

    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ExpandPartsGui"
    screenGui.ResetOnSpawn = false -- KEY FEATURE: Keeps GUI alive on death
    screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 220, 0, 70)
    frame.Position = UDim2.new(0, 10, 0, 10)
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.BorderSizePixel = 2
    frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    frame.Active = true
    frame.Draggable = true
    frame.Parent = screenGui

    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, -30, 0, 30)
    title.Position = UDim2.new(0, 0, 0, 0)
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.BorderSizePixel = 2
    title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    title.Text = "XINEX V2"
    title.TextColor3 = Color3.fromRGB(0, 0, 0)
    title.Font = Enum.Font.Gotham
    title.TextSize = 14
    title.Parent = frame

    local closeButton = Instance.new("TextButton")
    closeButton.Size = UDim2.new(0, 30, 0, 30)
    closeButton.Position = UDim2.new(1, -30, 0, 0)
    closeButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    closeButton.BorderSizePixel = 2
    closeButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    closeButton.Text = "X"
    closeButton.TextColor3 = Color3.fromRGB(0, 0, 0)
    closeButton.Font = Enum.Font.GothamBold
    closeButton.TextSize = 14
    closeButton.Parent = frame

    closeButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
        active = false 
    end)

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 40)
    button.Position = UDim2.new(0, 0, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    button.BorderSizePixel = 2
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.Text = "EXPD"
    button.TextColor3 = Color3.fromRGB(0, 0, 0)
    button.Font = Enum.Font.Gotham
    button.TextSize = 14
    button.Parent = frame

    button.MouseButton1Click:Connect(expandParts)
end

-- [[ 5. INITIALIZATION ]] --
-- Trigger GUI creation immediately, not inside CharacterAdded
createCustomGUI()

-- Input Handling
UserInputService.InputBegan:Connect(function(input, processed)
    if processed then return end
    
    if input.KeyCode == Enum.KeyCode.T then
        expandParts()
    elseif input.KeyCode == Enum.KeyCode.M then
        increaseTransparency()
    elseif input.KeyCode == Enum.KeyCode.N then
        decreaseTransparency()
    elseif input.KeyCode == Enum.KeyCode.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonX then
        chargeStarted = tick()
    end
end)


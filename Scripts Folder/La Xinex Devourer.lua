-- Xinex HBE v2
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local transparencyValue = 1 -- made fully transparent
local increment = 0.1

local function sendNotification(title, text)
    game.StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = text,
        Duration = 3
    })
end

local function updateTransparency()
    for _, part in pairs(LocalPlayer.Character:GetChildren()) do
        if part:IsA("Part") and part.Name:match("_Expanded") then
            part.Transparency = transparencyValue
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

UserInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.M then
        increaseTransparency()
    elseif input.KeyCode == Enum.KeyCode.N then
        decreaseTransparency()
    end
end)

LocalPlayer.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid").Died:Connect(function()
        wait(5)
        updateTransparency()
    end)
end)

local function createAndStabilizePart(part, size, name, transparency)
    local existingClone = part.Parent:FindFirstChild(name)
    if existingClone then
        existingClone:Destroy()
    end

    local clone = Instance.new("Part")
    clone.Size = size
    clone.CanCollide = false
    clone.Transparency = transparency
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

local function expandParts()
    local character = LocalPlayer.Character
    if character then
        local lowerTorso = character:FindFirstChild("LowerTorso")
        local upperTorso = character:FindFirstChild("UpperTorso")
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        local leftArm = character:FindFirstChild("Left Arm")
        local rightArm = character:FindFirstChild("Right Arm")
        local leftLeg = character:FindFirstChild("Left Leg")
        local rightLeg = character:FindFirstChild("Right Leg")
        local leftHand = character:FindFirstChild("LeftHand")
        local rightHand = character:FindFirstChild("RightHand")
        local leftFoot = character:FindFirstChild("LeftFoot")
        local rightFoot = character:FindFirstChild("RightFoot")

        if lowerTorso then
            local lowerClone1 = createAndStabilizePart(lowerTorso, Vector3.new(12, 12, 12), "LowerTorso_Expanded", 1)
            local lowerClone2 = createAndStabilizePart(lowerClone1, Vector3.new(9, 9, 9), "LowerTorso_MidExpanded1", 1)
            local lowerClone3 = createAndStabilizePart(lowerClone2, Vector3.new(6, 6, 6), "LowerTorso_HalfExpanded", 1)
            createAndStabilizePart(lowerClone3, Vector3.new(3, 3, 3), "LowerTorso_MidExpanded2", 1)
        end

        if upperTorso then
            local upperClone1 = createAndStabilizePart(upperTorso, Vector3.new(12, 12, 12), "UpperTorso_Expanded", 1)
            local upperClone2 = createAndStabilizePart(upperClone1, Vector3.new(9, 9, 9), "UpperTorso_MidExpanded1", 1)
            local upperClone3 = createAndStabilizePart(upperClone2, Vector3.new(6, 6, 6), "UpperTorso_HalfExpanded", 1)
            createAndStabilizePart(upperClone3, Vector3.new(3, 3, 3), "UpperTorso_MidExpanded2", 1)
        end

        if humanoidRootPart then
            createAndStabilizePart(humanoidRootPart, Vector3.new(12, 12, 12), "HumanoidRootPart_Expanded1", 0.9)
            createAndStabilizePart(humanoidRootPart, Vector3.new(9, 9, 9), "HumanoidRootPart_Expanded2", 0.9)
            createAndStabilizePart(humanoidRootPart, Vector3.new(6, 6, 6), "HumanoidRootPart_Expanded3", 0.9)
            createAndStabilizePart(humanoidRootPart, Vector3.new(3, 3, 3), "HumanoidRootPart_Expanded4", 0.9)
        end

        if leftArm then
            local leftArmClone1 = createAndStabilizePart(leftArm, Vector3.new(12, 12, 12), "LeftArm_Expanded", 1)
            local leftArmClone2 = createAndStabilizePart(leftArmClone1, Vector3.new(9, 9, 9), "LeftArm_MidExpanded1", 1)
            local leftArmClone3 = createAndStabilizePart(leftArmClone2, Vector3.new(6, 6, 6), "LeftArm_HalfExpanded", 1)
            createAndStabilizePart(leftArmClone3, Vector3.new(3, 3, 3), "LeftArm_MidExpanded2", 1)
        end

        if rightArm then
            local rightArmClone1 = createAndStabilizePart(rightArm, Vector3.new(12, 12, 12), "RightArm_Expanded", 1)
            local rightArmClone2 = createAndStabilizePart(rightArmClone1, Vector3.new(9, 9, 9), "RightArm_MidExpanded1", 1)
            local rightArmClone3 = createAndStabilizePart(rightArmClone2, Vector3.new(6, 6, 6), "RightArm_HalfExpanded", 1)
            createAndStabilizePart(rightArmClone3, Vector3.new(3, 3, 3), "RightArm_MidExpanded2", 1)
        end

        if leftLeg then
            local leftLegClone1 = createAndStabilizePart(leftLeg, Vector3.new(12, 12, 12), "LeftLeg_Expanded", 1)
            local leftLegClone2 = createAndStabilizePart(leftLegClone1, Vector3.new(9, 9, 9), "LeftLeg_MidExpanded1", 1)
            local leftLegClone3 = createAndStabilizePart(leftLegClone2, Vector3.new(6, 6, 6), "LeftLeg_HalfExpanded", 1)
            createAndStabilizePart(leftLegClone3, Vector3.new(3, 3, 3), "LeftLeg_MidExpanded2", 1)
        end

        if rightLeg then
            local rightLegClone1 = createAndStabilizePart(rightLeg, Vector3.new(12, 12, 12), "RightLeg_Expanded", 1)
            local rightLegClone2 = createAndStabilizePart(rightLegClone1, Vector3.new(9, 9, 9), "RightLeg_MidExpanded1", 1)
            local rightLegClone3 = createAndStabilizePart(rightLegClone2, Vector3.new(6, 6, 6), "RightLeg_HalfExpanded", 1)
            createAndStabilizePart(rightLegClone3, Vector3.new(3, 3, 3), "RightLeg_MidExpanded2", 1)
        end

        if leftHand then
            local leftHandClone1 = createAndStabilizePart(leftHand, Vector3.new(12, 12, 12), "LeftHand_Expanded", 1)
            local leftHandClone2 = createAndStabilizePart(leftHandClone1, Vector3.new(9, 9, 9), "LeftHand_MidExpanded1", 1)
            local leftHandClone3 = createAndStabilizePart(leftHandClone2, Vector3.new(6, 6, 6), "LeftHand_HalfExpanded", 1)
            createAndStabilizePart(leftHandClone3, Vector3.new(3, 3, 3), "LeftHand_MidExpanded2", 1)
        end

        if rightHand then
            local rightHandClone1 = createAndStabilizePart(rightHand, Vector3.new(12, 12, 12), "RightHand_Expanded", 1)
            local rightHandClone2 = createAndStabilizePart(rightHandClone1, Vector3.new(9, 9, 9), "RightHand_MidExpanded1", 1)
            local rightHandClone3 = createAndStabilizePart(rightHandClone2, Vector3.new(6, 6, 6), "RightHand_HalfExpanded", 1)
            createAndStabilizePart(rightHandClone3, Vector3.new(3, 3, 3), "RightHand_MidExpanded2", 1)
        end

        if leftFoot then
            local leftFootClone1 = createAndStabilizePart(leftFoot, Vector3.new(12, 12, 12), "LeftFoot_Expanded", 1)
            local leftFootClone2 = createAndStabilizePart(leftFootClone1, Vector3.new(9, 9, 9), "LeftFoot_MidExpanded1", 1)
            local leftFootClone3 = createAndStabilizePart(leftFootClone2, Vector3.new(6, 6, 6), "LeftFoot_HalfExpanded", 1)
            createAndStabilizePart(leftFootClone3, Vector3.new(3, 3, 3), "LeftFoot_MidExpanded2", 1)
        end

        if rightFoot then
            local rightFootClone1 = createAndStabilizePart(rightFoot, Vector3.new(12, 12, 12), "RightFoot_Expanded", 1)
            local rightFootClone2 = createAndStabilizePart(rightFootClone1, Vector3.new(9, 9, 9), "RightFoot_MidExpanded1", 1)
            local rightFootClone3 = createAndStabilizePart(rightFootClone2, Vector3.new(6, 6, 6), "RightFoot_HalfExpanded", 1)
            createAndStabilizePart(rightFootClone3, Vector3.new(3, 3, 3), "RightFoot_MidExpanded2", 1)
        end
    end
end

-- GUI SECTION --
local function createCustomGUI()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "ExpandPartsGui"
    screenGui.ResetOnSpawn = false
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
    title.Text = "XINEX"
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
    end)

    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 0, 40)
    button.Position = UDim2.new(0, 0, 0, 30)
    button.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Grey = Off initially
    button.BorderSizePixel = 2
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.Text = "EXPD"
    button.TextColor3 = Color3.fromRGB(0, 0, 0)
    button.Font = Enum.Font.Gotham
    button.TextSize = 14
    button.Parent = frame

    local expanded = false -- tracks the On/Off state

    button.MouseButton1Click:Connect(function()
        expanded = not expanded

        if expanded then
            button.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Black = On
            expandParts()
        else
            button.BackgroundColor3 = Color3.fromRGB(128, 128, 128) -- Grey = Off
            -- Remove all expanded parts
            local character = LocalPlayer.Character
            if character then
                for _, part in pairs(character:GetChildren()) do
                    if part.Name:match("_Expanded") then
                        part:Destroy()
                    end
                end
            end
        end
    end)
end
-- END GUI SECTION --

local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.T then
        expandParts()
    end
end

UserInputService.InputBegan:Connect(onKeyPress)

local function onCharacterAdded()
    createCustomGUI()
end

LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
if LocalPlayer.Character then
    onCharacterAdded(LocalPlayer.Character)
end

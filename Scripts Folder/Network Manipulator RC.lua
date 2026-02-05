-- [[ OMNI-UNIVERSAL: NETWORK MANIPULATOR (STRIPPED) ]]
getgenv().OmniUniversal = {
    Enabled = true,
    TargetPart = "HumanoidRootPart", -- Optimized for network registration
    
    Physics = {
        SpeedMulti = 2.5,    
        AntiStun = true,
        NetworkBias = 0.35   -- Packet timestamp manipulation
    },
    Interaction = {
        AutoTouch = true,    
        AutoPrompt = true,   
        MagnetRange = 10     
    },
    Combat = {
        SilentAim = true,    
        HitscanDirect = true 
    }
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local lp = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- [[ 1. AGNOSTIC TARGET ACQUISITION ]]
local function GetRawTarget()
    local bestTarget, minAngle = nil, math.huge
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= lp and plr.Character and plr.Character:FindFirstChild(getgenv().OmniUniversal.TargetPart) then
            local part = plr.Character[getgenv().OmniUniversal.TargetPart]
            local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
            if onScreen then
                local dist = (Vector2.new(game:GetService("UserInputService"):GetMouseLocation().X, game:GetService("UserInputService"):GetMouseLocation().Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                if dist < minAngle then
                    minAngle = dist
                    bestTarget = part
                end
            end
        end
    end
    return bestTarget
end

-- [[ 2. INTERACTION HEGEMONY (TOUCH/PROMPT) ]]
task.spawn(function()
    while task.wait(0.1) do
        if not getgenv().OmniUniversal.Enabled then continue end
        local root = lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        -- Force Instant Interaction (Bypass Hold Times)
        if getgenv().OmniUniversal.Interaction.AutoPrompt then
            for _, p in pairs(workspace:GetDescendants()) do
                if p:IsA("ProximityPrompt") and p.Enabled then
                    if (root.Position - p.Parent.Position).Magnitude <= getgenv().OmniUniversal.Interaction.MagnetRange then
                        fireproximityprompt(p)
                    end
                end
            end
        end

        -- Engine-Level Touch (Ball/Loot Magnet)
        if getgenv().OmniUniversal.Interaction.AutoTouch then
            for _, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and not v.Anchored and (root.Position - v.Position).Magnitude <= getgenv().OmniUniversal.Interaction.MagnetRange then
                    firetouchinterest(root, v, 0)
                    firetouchinterest(root, v, 1)
                end
            end
        end
    end
end)

-- [[ 3. PHYSICS OVERRIDE (GROUNDED SPEED & ANTI-STUN) ]]
task.spawn(function()
    RunService.PreSimulation:Connect(function()
        if not getgenv().OmniUniversal.Enabled or not lp.Character then return end
        local root = lp.Character:FindFirstChild("HumanoidRootPart")
        local hum = lp.Character:FindFirstChildOfClass("Humanoid")

        if root and hum then
            -- Force State Consistency
            if getgenv().OmniUniversal.Physics.AntiStun then
                local s = hum:GetState()
                if s == Enum.HumanoidStateType.FallingDown or s == Enum.HumanoidStateType.Ragdoll or s == Enum.HumanoidStateType.Sit then
                    hum:ChangeState(Enum.HumanoidStateType.Running)
                end
            end

            -- Direct Velocity Injection
            if hum.MoveDirection.Magnitude > 0 and hum:GetState() ~= Enum.HumanoidStateType.Jumping then
                root.AssemblyLinearVelocity = (hum.MoveDirection * (root.AssemblyLinearVelocity.Magnitude + getgenv().OmniUniversal.Physics.SpeedMulti)) + Vector3.new(0, root.AssemblyLinearVelocity.Y, 0)
            end
        end
    end)
end)

-- [[ 4. NETWORK DOMINANCE HOOK ]]
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if getgenv().OmniUniversal.Enabled and not checkcaller() then
        -- 1. Packet Spoofing (Ping/Latency)
        if method == "InvokeServer" and (self.Name:lower():find("ping") or self.Name:lower():find("latency")) then
            return 0.012 -- Constant low-latency spoof
        end

        -- 2. Trajectory & Hitscan Redirection
        if getgenv().OmniUniversal.Combat.SilentAim then
            local target = GetRawTarget()
            if target then
                if method == "Raycast" and self == workspace then
                    args[2] = (target.Position - args[1]).Unit * 1000
                    return oldNamecall(self, unpack(args))
                elseif method == "FireServer" then
                    for i, arg in pairs(args) do
                        if typeof(arg) == "Vector3" then
                            args[i] = target.Position
                        elseif typeof(arg) == "number" and arg > 1000000000 then
                            args[i] = tick() - getgenv().OmniUniversal.Physics.NetworkBias -- Priority Win
                        end
                    end
                end
            end
        end
    end
    return oldNamecall(self, unpack(args))
end)

setreadonly(mt, true)
print("OMNI-STRIPPED: NETWORK DOMINANCE LOADED")


-- [[ OMNI-UNIVERSAL V2.1: STABILIZED ]]
getgenv().OmniUniversal = {
    Enabled = true,
    TeamCheck = true,
    TargetPart = "Head",
    Physics = { SpeedMulti = 1.5, AntiStun = true, AntiRubberband = true },
    Interaction = { AutoTouch = true, AutoPrompt = true, PromptRange = 12 },
    Combat = { SilentAim = true, HitChance = 100 }
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local lp = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- [[ 1. CACHED TARGETING ]] 
-- Runs at 60Hz instead of "Every Namecall" to prevent CPU/Camera freezing
local CurrentTarget = nil
task.spawn(function()
    while task.wait() do
        local maxDist = math.huge
        local potential = nil
        for _, plr in pairs(Players:GetPlayers()) do
            if plr ~= lp and plr.Character and plr.Character:FindFirstChild(getgenv().OmniUniversal.TargetPart) then
                if not getgenv().OmniUniversal.TeamCheck or plr.Team ~= lp.Team then
                    local pos, onScreen = Camera:WorldToViewportPoint(plr.Character[getgenv().OmniUniversal.TargetPart].Position)
                    if onScreen then
                        local mouse = UserInputService:GetMouseLocation()
                        local dist = (Vector2.new(pos.X, pos.Y) - mouse).Magnitude
                        if dist < maxDist then
                            maxDist = dist
                            potential = plr.Character[getgenv().OmniUniversal.TargetPart]
                        end
                    end
                end
            end
        end
        CurrentTarget = potential
    end
end)

-- [[ 2. SURGICAL HOOK ]]
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}

    if not checkcaller() and getgenv().OmniUniversal.Enabled and CurrentTarget then
        -- Only redirect Raycasts (Shooters)
        if method == "Raycast" and self == workspace then
            args[2] = (CurrentTarget.Position - args[1]).Unit * 1000
            return oldNamecall(self, unpack(args))
        end

        -- Only redirect FireServer if it looks like a Combat event
        if method == "FireServer" then
            local name = self.Name:lower()
            if name:find("fire") or name:find("shoot") or name:find("hit") or name:find("weapon") then
                for i, arg in pairs(args) do
                    if typeof(arg) == "Vector3" then
                        -- Check: Is this a target position or just a camera direction?
                        -- Camera directions are usually small unit vectors; world positions are large.
                        if arg.Magnitude > 5 then 
                            args[i] = CurrentTarget.Position
                        end
                    end
                end
            end
        end
    end
    return oldNamecall(self, unpack(args))
end)

setreadonly(mt, true)

-- [[ 3. PHYSICS & INTERACTION ]]
-- (Kept your original logic for speed/prompts as it doesn't affect camera)
task.spawn(function()
    RunService.PreSimulation:Connect(function()
        if not getgenv().OmniUniversal.Enabled or not lp.Character then return end
        local root = lp.Character:FindFirstChild("HumanoidRootPart")
        local hum = lp.Character:FindFirstChildOfClass("Humanoid")
        if root and hum and hum.MoveDirection.Magnitude > 0 then
            root.AssemblyLinearVelocity = root.AssemblyLinearVelocity + (hum.MoveDirection * getgenv().OmniUniversal.Physics.SpeedMulti)
        end
    end)
end)


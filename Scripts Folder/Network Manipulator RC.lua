-- [[ OMNI-UNIVERSAL: THE COMPLETE STABILIZED MIX ]]

getgenv().OmniUniversal = {
    Enabled = true,
    TargetPart = "HumanoidRootPart",
    Physics = { 
        SpeedMulti = 1.4, -- Balanced for control
        AntiStun = true, 
        NetworkBias = 0.3 
    },
    Interaction = { 
        AutoTouch = true, 
        AutoPrompt = true, 
        MagnetRange = 12 
    },
    Combat = { SilentAim = true },
    Boost = {
        FPSBooster = true,
        CullDistance = 500 -- Parts further than this are automatically "washed"
    }
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Lighting = game:GetService("Lighting")
local lp = Players.LocalPlayer
local Camera = workspace.CurrentCamera

local CurrentTarget = nil
local OriginalMaterials = {}

-- [[ 0. GLOBAL RENDERING OVERRIDE ]]
if getgenv().OmniUniversal.Boost.FPSBooster then
    settings().Rendering.QualityLevel = 1
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 9e9
    -- FIXED: Protected call to prevent "Decoration" member error
    pcall(function()
        workspace.Terrain.Decoration = false
    end)
end

-- [[ 1. OPTIMIZED TARGETING ]]
task.spawn(function()
    while task.wait(0.2) do 
        if not getgenv().OmniUniversal.Enabled then continue end
        local best, minAngle = nil, 250
        local mousePos = UIS:GetMouseLocation()
        
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr ~= lp and plr.Character then
                local part = plr.Character:FindFirstChild(getgenv().OmniUniversal.TargetPart)
                if part then
                    local pos, onScreen = Camera:WorldToViewportPoint(part.Position)
                    if onScreen then
                        local dist = (Vector2.new(mousePos.X, mousePos.Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                        if dist < minAngle then
                            minAngle = dist
                            best = part
                        end
                    end
                end
            end
        end
        CurrentTarget = best
    end
end)

-- [[ 2. SMOOTH PHYSICS (STABILIZED) ]]
RunService.PreRender:Connect(function()
    if not getgenv().OmniUniversal.Enabled or not lp.Character then return end
    local root = lp.Character:FindFirstChild("HumanoidRootPart")
    local hum = lp.Character:FindFirstChildOfClass("Humanoid")

    if root and hum then
        local state = hum:GetState()

        -- FIXED: Used 'Seated' to resolve Enum error
        if getgenv().OmniUniversal.Physics.AntiStun and state == Enum.HumanoidStateType.Seated then
            hum:ChangeState(Enum.HumanoidStateType.Running)
        end

        -- FIXED: Added Ground Check to prevent sky-launching
        local isGrounded = (state ~= Enum.HumanoidStateType.Jumping and state ~= Enum.HumanoidStateType.Freefall)
        
        if isGrounded and hum.MoveDirection.Magnitude > 0 then
            -- Base speed set to 16 (default) multiplied by your SpeedMulti
            root.AssemblyLinearVelocity = (hum.MoveDirection * (16 * getgenv().OmniUniversal.Physics.SpeedMulti)) + Vector3.new(0, root.AssemblyLinearVelocity.Y, 0)
        end
    end
end)

-- [[ 3. LOW-IMPACT INTERACTION ]]
task.spawn(function()
    local overlap = OverlapParams.new()
    overlap.FilterType = Enum.RaycastFilterType.Exclude
    
    while task.wait(0.4) do 
        if not getgenv().OmniUniversal.Enabled or not lp.Character then continue end
        local root = lp.Character:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        overlap.FilterDescendantsInstances = {lp.Character}
        local nearby = workspace:GetPartBoundsInRadius(root.Position, getgenv().OmniUniversal.Interaction.MagnetRange, overlap)

        for i = 1, #nearby do
            local v = nearby[i]
            if getgenv().OmniUniversal.Interaction.AutoPrompt then
                local p = v:FindFirstChildOfClass("ProximityPrompt") or v.Parent:FindFirstChildOfClass("ProximityPrompt")
                if p then fireproximityprompt(p) end
            end
            if getgenv().OmniUniversal.Interaction.AutoTouch and not v.Anchored then
                firetouchinterest(root, v, 0)
                firetouchinterest(root, v, 1)
            end
        end
    end
end)

-- [[ 4. DYNAMIC FPS BOOSTER (CULLER) ]]
task.spawn(function()
    while task.wait(0.5) do
        if not getgenv().OmniUniversal.Boost.FPSBooster then continue end
        
        -- Wrapped in pcall to prevent errors if objects are destroyed during loop
        pcall(function()
            for _, obj in ipairs(workspace:GetDescendants()) do
                if obj:IsA("BasePart") and not obj.Parent:FindFirstChildOfClass("Humanoid") then
                    local _, onScreen = Camera:WorldToViewportPoint(obj.Position)
                    local dist = (lp.Character and lp.Character:FindFirstChild("HumanoidRootPart")) and (obj.Position - lp.Character.HumanoidRootPart.Position).Magnitude or 0
                    
                    if not onScreen or dist > getgenv().OmniUniversal.Boost.CullDistance then
                        if not OriginalMaterials[obj] then
                            OriginalMaterials[obj] = {M = obj.Material, R = obj.Reflectance}
                        end
                        obj.Material = Enum.Material.SmoothPlastic
                        obj.Reflectance = 0
                    else
                        local data = OriginalMaterials[obj]
                        if data then
                            obj.Material = data.M
                            obj.Reflectance = data.R
                        end
                    end
                end
            end
        end)
    end
end)

-- [[ 5. THE CLEAN HOOK ]]
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(self, ...)
    local method = getnamecallmethod()
    local args = {...}
    
    if getgenv().OmniUniversal.Enabled and not checkcaller() then
        if method == "FireServer" or method == "InvokeServer" then
            if CurrentTarget and getgenv().OmniUniversal.Combat.SilentAim then
                for i, v in ipairs(args) do
                    if typeof(v) == "Vector3" then 
                        args[i] = CurrentTarget.Position 
                        return oldNamecall(self, unpack(args))
                    end
                end
            end
        end
    end
    return oldNamecall(self, ...)
end)

setreadonly(mt, true)
print("OMNI-FINAL-MIX: LOADED & STABILIZED")

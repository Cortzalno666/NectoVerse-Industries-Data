-- [[ OMNI-UNIVERSAL V2: THE ALL-EATER FRAMEWORK ]]
getgenv().OmniUniversal = {
    -- [CONFIGURATION]
    Enabled = true,
    TeamCheck = true,        -- Don't aim at teammates
    TargetPart = "Head",     -- "Head" or "HumanoidRootPart"
    
    -- [MODULES]
    Physics = {
        SpeedMulti = 1.5,    -- Lower is safer for universal
        AntiStun = true,
        AntiRubberband = true -- Auto-disables speed if server forces you back
    },
    Interaction = {
        AutoTouch = true,    -- For "Touch" items (Coins/Balls)
        AutoPrompt = true,   -- For "Hold E" items (Doors/Loot)
        PromptRange = 12     -- Range to press buttons
    },
    Combat = {
        SilentAim = true,    -- Works for Projectile AND Hitscan
        HitChance = 100,     -- Accuracy %
    }
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local lp = Players.LocalPlayer
local mouse = lp:GetMouse()
local Camera = workspace.CurrentCamera

-- [[ 1. UNIVERSAL TARGET SELECTOR ]]
local function GetBestTarget()
    local bestTarget = nil
    local minAngle = math.huge
    
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= lp and (not getgenv().OmniUniversal.TeamCheck or plr.Team ~= lp.Team) then
            local char = plr.Character
            if char and char:FindFirstChild(getgenv().OmniUniversal.TargetPart) then
                -- Check if on screen
                local pos, onScreen = Camera:WorldToViewportPoint(char[getgenv().OmniUniversal.TargetPart].Position)
                if onScreen then
                    -- Calculate FOV/Distance from Mouse
                    local mouseDist = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                    if mouseDist < minAngle then
                        minAngle = mouseDist
                        bestTarget = char[getgenv().OmniUniversal.TargetPart]
                    end
                end
            end
        end
    end
    return bestTarget
end

-- [[ 2. INTERACTION ADAPTER (PROMPTS + TOUCH) ]]
task.spawn(function()
    while task.wait(0.2) do
        if not getgenv().OmniUniversal.Enabled then continue end
        local char = lp.Character
        if not char then continue end
        local root = char:FindFirstChild("HumanoidRootPart")
        if not root then continue end

        -- A. PROXIMITY PROMPT (The "Hold E" Support)
        if getgenv().OmniUniversal.Interaction.AutoPrompt then
            for _, prompt in pairs(workspace:GetDescendants()) do
                if prompt:IsA("ProximityPrompt") and prompt.Enabled then
                    if prompt.Parent and prompt.Parent:IsA("BasePart") then
                        local dist = (root.Position - prompt.Parent.Position).Magnitude
                        if dist <= getgenv().OmniUniversal.Interaction.PromptRange then
                            fireproximityprompt(prompt) -- Instant trigger
                        end
                    end
                end
            end
        end

        -- B. TOUCH INTEREST (The "Ball/Item" Support)
        if getgenv().OmniUniversal.Interaction.AutoTouch then
            for _, v in pairs(workspace:GetChildren()) do
                if v:IsA("BasePart") and not v.Anchored and v.CanCollide and v.Name ~= "Baseplate" then
                    local dist = (root.Position - v.Position).Magnitude
                    if dist <= 8 then -- Range for auto-pickup
                        firetouchinterest(root, v, 0)
                        firetouchinterest(root, v, 1)
                    end
                end
            end
        end
    end
end)

-- [[ 3. PHYSICS ADAPTER (SERVER-SLIP) ]]
local lastPos = Vector3.zero
task.spawn(function()
    RunService.PreSimulation:Connect(function()
        if not getgenv().OmniUniversal.Enabled then return end
        local char = lp.Character
        if not char then return end
        local root = char:FindFirstChild("HumanoidRootPart")
        local hum = char:FindFirstChildOfClass("Humanoid")

        if root and hum then
            -- Anti-Stun
            if getgenv().OmniUniversal.Physics.AntiStun then
                local state = hum:GetState()
                if state == Enum.HumanoidStateType.FallingDown or state == Enum.HumanoidStateType.Ragdoll then
                    hum:ChangeState(Enum.HumanoidStateType.Running)
                end
            end

            -- Rubberband Detection
            if getgenv().OmniUniversal.Physics.AntiRubberband then
                if (root.Position - lastPos).Magnitude > 20 then
                    -- If we moved too fast (teleported back), skip this frame's boost
                    lastPos = root.Position
                    return 
                end
                lastPos = root.Position
            end

            -- Universal Speed
            if hum.MoveDirection.Magnitude > 0 then
                -- We add velocity but keep it "Grounded" to avoid flying checks
                local flatVel = Vector3.new(root.AssemblyLinearVelocity.X, 0, root.AssemblyLinearVelocity.Z)
                local addedVel = hum.MoveDirection * getgenv().OmniUniversal.Physics.SpeedMulti
                
                root.AssemblyLinearVelocity = Vector3.new(flatVel.X + addedVel.X, root.AssemblyLinearVelocity.Y, flatVel.Z + addedVel.Z)
            end
        end
    end)
end)

-- [[ 4. THE OMNI-HOOK (PROJECTILE & HITSCAN) ]]
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
setreadonly(mt, false)

-- A. RAYCAST HOOK (Support for Shooters like Arsenal)
mt.__namecall = newcclosure(function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    
    if getgenv().OmniUniversal.Enabled and getgenv().OmniUniversal.Combat.SilentAim and not checkcaller() then
        
        -- 1. DETECT RAYCAST (Hitscan Weapons)
        if method == "Raycast" and self == workspace then
            -- args[1] = Origin, args[2] = Direction
            local target = GetBestTarget()
            if target then
                -- Redirect the ray towards the enemy head
                args[2] = (target.Position - args[1]).Unit * 1000
                return oldNamecall(self, unpack(args))
            end
        end

        -- 2. DETECT FIND PART ON RAY (Legacy Shooters)
        if method:find("FindPartOnRay") then
            local target = GetBestTarget()
            if target then
                -- Create a new Ray pointing at the enemy
                local origin = args[1].Origin
                args[1] = Ray.new(origin, (target.Position - origin).Unit * 1000)
                return oldNamecall(self, unpack(args))
            end
        end

        -- 3. DETECT MOUSE HIT (Da Hood / Projectile)
        if method == "FireServer" then
             for i, arg in pairs(args) do
                if typeof(arg) == "Vector3" then
                     -- Check if this vector looks like a direction (Unit vector-ish) or a Mouse Position
                     local target = GetBestTarget()
                     if target then
                         -- Calculate direction to target
                         local origin = lp.Character.Head.Position
                         args[i] = (target.Position - origin).Unit -- Update Direction
                         -- OR Update Position if the game uses Position
                         if (arg - lp.Character.HumanoidRootPart.Position).Magnitude > 5 then
                             args[i] = target.Position
                         end
                     end
                end
             end
        end
    end
    
    return oldNamecall(self, unpack(args))
end)

setreadonly(mt, true)

print("OMNI-UNIVERSAL V2: HITSCAN, INTERACTION & PHYSICS LOADED")

-- [[ ULTIMATE PRECISION MIX - LASER TRAJECTORY + VOID FIX ]] --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService") -- Essential for Void fix
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")

local lp = Players.LocalPlayer

-- Global Config (Prevents overlaps)
getgenv().PrecisionSettings = {
    ShieldActive = false,
    ChargeStart = 0,
    FloorLimit = 3.5, -- Height at which collisions force enable (Void Protection)
    Trajectory = {X = 2.2, Y = 0.8, Z = 2.2} -- The Laser Values
}

-- 1. INTERNAL MODULE BYPASS
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

-- 2. VOID-PROOF GHOST BALL (Heartbeat Upgrade)
-- This replaces the "while wait()" loop which causes voiding.
local function triggerGhostBall()
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if not ball then return end

        local endTime = tick() + 1.2
        local connection
        
        connection = RunService.Heartbeat:Connect(function()
            if not ball or not ball.Parent then 
                connection:Disconnect() 
                return 
            end

            if tick() >= endTime then
                ball.CanCollide = true
                connection:Disconnect()
                return
            end

            -- SMART COLLISION:
            -- If ball is close to the floor (Y < 3.5), FORCE collision to prevent voiding.
            -- If ball is in the air, DISABLE collision to phase through players.
            if ball.Position.Y <= getgenv().PrecisionSettings.FloorLimit then
                ball.CanCollide = true
            else
                ball.CanCollide = false
            end
        end)
    end)
end

-- 3. DESYNC SHIELD LOGIC
local function activateDesync()
    if getgenv().PrecisionSettings.ShieldActive then return end
    getgenv().PrecisionSettings.ShieldActive = true
    
    -- Optional: Visual feedback (print or highlight)
    -- print(">> DESYNC ACTIVE")
    
    task.delay(2, function() 
        getgenv().PrecisionSettings.ShieldActive = false 
    end)
end

-- 4. MASTER HOOK (Laser + Desync)
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    local name = self.Name

    if not checkcaller() then
        -- A. DESYNC: Block Tackles
        if (method == "FireServer" or method == "InvokeServer") and (name:find("Tackle") or name:find("ClaimBall")) then
            if getgenv().PrecisionSettings.ShieldActive then
                return nil -- Drop the tackle request
            end
        end

        -- B. LASER SHOT LOGIC
        if (method == "FireServer" or method == "InvokeServer") and name:find("PerformAction") then
            local holdDuration = tick() - getgenv().PrecisionSettings.ChargeStart
            
            -- Gate 1: Charge Time (0.95s)
            if holdDuration >= 0.95 then
                for i, arg in pairs(args) do
                    -- Gate 2: Power/Magnitude (90+)
                    if typeof(arg) == "Vector3" and arg.Magnitude > 90 then
                        local mult = getgenv().PrecisionSettings.Trajectory
                        
                        -- Apply Laser Math
                        args[i] = Vector3.new(
                            arg.X * mult.X, -- 2.2 Speed
                            arg.Y * mult.Y, -- 0.8 Low Arc (Driven Shot)
                            arg.Z * mult.Z  -- 2.2 Speed
                        )
                        
                        triggerGhostBall()
                    end
                end
            end
            getgenv().PrecisionSettings.ChargeStart = tick() -- Reset
        end
    end

    return oldNamecall(self, unpack(args))
end)

-- 5. PHYSICS & TOUCH SENSORS
local function applyPhysics(char)
    task.wait(0.2) -- Brief load wait
    local hum = char:WaitForChild("Humanoid")
    local root = char:WaitForChild("HumanoidRootPart")

    -- Anti-Stun
    hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    
    -- Desync Trigger
    root.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= lp.Name then
            activateDesync()
        end
    end)
end

-- 6. INPUT TRACKING
UIS.InputBegan:Connect(function(input, processed)
    if not processed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonX) then
        getgenv().PrecisionSettings.ChargeStart = tick() 
    end
end)

-- Init
if lp.Character then applyPhysics(lp.Character) end
lp.CharacterAdded:Connect(applyPhysics)

print(":: FINAL MIX :: Laser Trajectory + Anti-Void Active")

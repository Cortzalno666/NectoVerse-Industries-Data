-- [[ ULTIMATE PRECISION MIX - V11: WALL-LOCK EDITION ]] --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")

local lp = Players.LocalPlayer

getgenv().PrecisionSettings = {
    ShieldActive = false,
    ChargeStart = 0,
    Trajectory = {X = 2.2, Y = 0.8, Z = 2.2},
    LatencyComp = 0.05
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

-- 2. SMART GHOST & LATENCY CONTROLLER (V11)
local function triggerGhostBall()
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if not ball or not lp.Character then return end

        local endTime = tick() + 1.2
        local connection
        local rayParams = RaycastParams.new()
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        
        connection = RunService.Heartbeat:Connect(function()
            -- Safety checks: If ball is gone or time is up, force SOLID and kill loop
            if not ball or not ball.Parent or tick() >= endTime then
                if ball then ball.CanCollide = true end
                if connection then connection:Disconnect() end
                return
            end

            local root = lp.Character:FindFirstChild("HumanoidRootPart")
            if not root then return end

            -- 1. CATCH PRIORITY (4ms Feel)
            -- If ball is near you, it MUST be solid to catch it.
            local predictedPos = ball.Position + (ball.AssemblyLinearVelocity * getgenv().PrecisionSettings.LatencyComp)
            if (predictedPos - root.Position).Magnitude < 9 then
                ball.CanCollide = true
                return
            end

            -- 2. WALL SAFETY (Whitelist Logic)
            -- We default to CanCollide = true. We ONLY ghost if we hit a player.
            rayParams.FilterDescendantsInstances = {ball, lp.Character}
            local velocity = ball.AssemblyLinearVelocity
            -- Look ahead 7 studs (Longer range to account for your 50ms lat)
            local lookAhead = (velocity.Magnitude > 1) and velocity.Unit * 7 or Vector3.new(0, -7, 0)
            local cast = workspace:Raycast(ball.Position, lookAhead, rayParams)

            if cast and cast.Instance then
                local hitModel = cast.Instance:FindFirstAncestorOfClass("Model")
                local isPlayer = hitModel and hitModel:FindFirstChild("Humanoid")
                
                if isPlayer then
                    -- ONLY GHOST IF IT'S A PLAYER
                    ball.CanCollide = false
                else
                    -- IT'S A WALL/GOAL/GROUND: STAY SOLID
                    ball.CanCollide = true
                end
            else
                -- IF NOTHING IS IN FRONT: STAY SOLID (This prevents wall phasing)
                ball.CanCollide = true
            end
        end)
    end)
end

-- 3. THE MASTER HOOK
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    local name = self.Name

    if not checkcaller() then
        if (method == "FireServer" or method == "InvokeServer") and (name:find("Tackle") or name:find("ClaimBall")) then
            if getgenv().PrecisionSettings.ShieldActive then return nil end
        end

        if (method == "FireServer" or method == "InvokeServer") and name:find("PerformAction") then
            local holdDuration = tick() - getgenv().PrecisionSettings.ChargeStart
            if holdDuration >= 0.95 then
                for i, arg in pairs(args) do
                    if typeof(arg) == "Vector3" and arg.Magnitude > 90 then
                        local t = getgenv().PrecisionSettings.Trajectory
                        args[i] = Vector3.new(arg.X * t.X, arg.Y * t.Y, arg.Z * t.Z)
                        triggerGhostBall()
                    end
                end
            end
            getgenv().PrecisionSettings.ChargeStart = tick()
        end
    end
    return oldNamecall(self, unpack(args))
end)

-- 4. PHYSICS & AUTO-DESYNC
local function applyPhysics(char)
    local root = char:WaitForChild("HumanoidRootPart")
    char:WaitForChild("Humanoid"):SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    
    root.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= lp.Name then
            getgenv().PrecisionSettings.ShieldActive = true
            task.delay(2, function() getgenv().PrecisionSettings.ShieldActive = false end)
        end
    end)
end

UIS.InputBegan:Connect(function(input, processed)
    if not processed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonX) then
        getgenv().PrecisionSettings.ChargeStart = tick() 
    end
end)

if lp.Character then applyPhysics(lp.Character) end
lp.CharacterAdded:Connect(applyPhysics)

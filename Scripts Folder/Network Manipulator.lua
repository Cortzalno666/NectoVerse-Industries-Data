local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer

-- [[ 1. THE OMNI-MIX CONFIG ]]
getgenv().OmniMix = {
    PriorityBias = 0.35,      
    LeadDistance = 3.5,       
    TargetPing = 10,          
    Jitter = 2,               
    Trajectory = Vector3.new(2.4, 0.9, 2.4),
    TapSpam = 3               
}

-- [[ 2. PHYSICS & SPATIAL STICK ]]
task.spawn(function()
    RunService.PreSimulation:Connect(function()
        if not lp.Character then return end
        local root = lp.Character:FindFirstChild("HumanoidRootPart")
        local hum = lp.Character:FindFirstChild("Humanoid")
        
        if root and hum then
            -- [A] THE JUMP LOCK
            -- If we are jumping or falling, we disable the Lead Force to prevent 'Flying'
            local state = hum:GetState()
            local isJumping = (state == Enum.HumanoidStateType.Jumping or state == Enum.HumanoidStateType.Freefall)

            local vel = root.AssemblyLinearVelocity
            if vel.Magnitude > 2 and not isJumping then
                -- Only apply Lead Force when grounded and moving
                local horizontalVel = Vector3.new(vel.X, 0, vel.Z)
                local leadForce = horizontalVel.Unit * getgenv().OmniMix.LeadDistance
                root.AssemblyLinearVelocity = vel + leadForce
            end

            -- [B] PHYSICS FLUSH (The Stick)
            -- Keeps you synced to server without adding upward force
            root.CFrame = root.CFrame
            
            -- [C] ZERO BUFFER
            settings().Network.IncomingReplicationLag = 0
        end
    end)
end)

-- [[ 3. DYNAMIC REMOTE LOCATOR ]]
local function GetKnitRemote(service, name, type)
    local index = ReplicatedStorage:FindFirstChild("Packages") and ReplicatedStorage.Packages:FindFirstChild("_Index")
    if not index then return nil end
    local success, result = pcall(function()
        local s = index:FindFirstChild("sleitnick_knit@1.7.0", true).Parent.knit.Services[service]
        return type == "RF" and s.RF[name] or s.RE[name]
    end)
    return success and result
end

local ActionRE = GetKnitRemote("ActionService", "PerformAction", "RE")
local AntiCheatRF = GetKnitRemote("AntiCheatService", "FireClientTouch", "RF")

-- [[ 4. THE MASTER OMNI-HOOK ]]
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    local name = self.Name

    -- [A] PUBLIC PING SPOOF w/ JITTER
    if (method == "InvokeServer" or method == "FireServer") and (name:find("Ping") or name:find("Latency")) then
        local jitter = math.random(-getgenv().OmniMix.Jitter, getgenv().OmniMix.Jitter)
        return (getgenv().OmniMix.TargetPing + jitter) / 1000
    end

    -- [B] PACKET PRIORITY (Register First)
    if self == ActionRE and not checkcaller() then
        for i, v in pairs(args) do
            if type(v) == "number" and v > 1000000 then
                args[i] = tick() - getgenv().OmniMix.PriorityBias
            end
        end

        local action = args[1]
        if action == "ActionPrimary" and typeof(args[3]) == "Vector3" then
            local t = getgenv().OmniMix.Trajectory
            args[3] = Vector3.new(args[3].X * t.X, args[3].Y * t.Y, args[3].Z * t.Z)
        elseif action == "Tackle" or action == "Dribble" then
            task.spawn(function()
                for i = 1, getgenv().OmniMix.TapSpam do
                    ActionRE:FireServer(unpack(args))
                    task.wait()
                end
            end)
        end
    end

    -- [C] ANTI-CHEAT HANDSHAKE
    if self == AntiCheatRF and method == "InvokeServer" then
        return oldNamecall(self, unpack(args))
    end

    return oldNamecall(self, unpack(args))
end)

print("V21.2: OMNIPOTENCE MIX LOADED - PHYSICS STABILIZED")


-- [[ ULTIMATE PRECISION MIX - VOID PROTECT + DESYNC [v2] ]] --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService") -- Added for Physics sync
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")

local lp = Players.LocalPlayer
local mouse = lp:GetMouse()

-- Global State Management (Prevents script overlap)
getgenv().PrecisionConfig = {
    IsShielded = false,
    ChargeStarted = 0,
    FloorHeight = 3.5, -- Adjusted slightly higher to prevent clipping
    ShotMultiplier = {X = 2.2, Y = 0.75, Z = 2.2}
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
-- Logic: Uses Heartbeat to check position EVERY frame. No more falling through floor.
local function triggerGhostBall()
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if not ball then return end

        local endTime = tick() + 1.2 -- Slightly longer duration
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

            -- PRECISION CHECK: If ball is near floor, FORCE collision.
            -- If ball is high up, disable collision to phase through players.
            if ball.Position.Y <= getgenv().PrecisionConfig.FloorHeight then
                ball.CanCollide = true
            else
                ball.CanCollide = false
            end
        end)
    end)
end

-- 3. THE 2-SECOND DESYNC SHIELD
local function activateDesync()
    if getgenv().PrecisionConfig.IsShielded then return end
    getgenv().PrecisionConfig.IsShielded = true
    
    -- Visual Indicator (Optional: remove if you want stealth)
    -- local highlight = Instance.new("Highlight", lp.Character)
    -- task.delay(2, function() highlight:Destroy() end)
    
    task.delay(2, function() 
        getgenv().PrecisionConfig.IsShielded = false 
    end)
end

-- 4. THE MASTER HOOK
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    local name = self.Name

    if not checkcaller() then -- Only hook game calls
        -- Desync: Block Incoming Tackles
        if (method == "FireServer" or method == "InvokeServer") and (name:find("Tackle") or name:find("ClaimBall")) then
            if getgenv().PrecisionConfig.IsShielded then 
                return nil -- Silently drop the remote
            end
        end

        -- Power Shot Logic
        if (method == "FireServer" or method == "InvokeServer") and name:find("PerformAction") then
            local holdDuration = tick() - getgenv().PrecisionConfig.ChargeStarted
            
            -- If fully charged (approx 1s)
            if holdDuration >= 0.9 then
                for i, arg in pairs(args) do
                    if typeof(arg) == "Vector3" and arg.Magnitude > 50 then 
                        -- LASER SHOT: Modify the velocity vector
                        local mult = getgenv().PrecisionConfig.ShotMultiplier
                        args[i] = Vector3.new(arg.X * mult.X, arg.Y * mult.Y, arg.Z * mult.Z)
                        
                        -- Activate Ghost Ball Physics
                        triggerGhostBall() 
                    end
                end
            end
            -- Reset charge timer
            getgenv().PrecisionConfig.ChargeStarted = tick()
        end
    end

    return oldNamecall(self, unpack(args))
end)

-- 5. PHYSICS & TOUCH SENSORS
local function applyPhysics(char)
    task.wait(0.5) -- Wait for character to fully load
    local hum = char:WaitForChild("Humanoid")
    local root = char:WaitForChild("HumanoidRootPart")

    -- Disable Stun States
    hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    hum:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false) -- Added for extra anti-stun
    
    -- Desync Trigger on Touch
    root.Touched:Connect(function(hit)
        if hit.Parent and hit.Parent:FindFirstChild("Humanoid") then
            local hitPlayer = Players:GetPlayerFromCharacter(hit.Parent)
            if hitPlayer and hitPlayer ~= lp then
                activateDesync()
            end
        end
    end)
end

-- Input Handling
UIS.InputBegan:Connect(function(input, processed)
    if not processed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonX) then
        getgenv().PrecisionConfig.ChargeStarted = tick()
    end
end)

-- Initialize
if lp.Character then applyPhysics(lp.Character) end
lp.CharacterAdded:Connect(applyPhysics)

print(":: PRECISION MIX V2 :: Heartbeat Physics & Desync Active")


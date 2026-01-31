-- [[ ULTIMATE PRECISION MIX - VOID PROTECT + DESYNC ]] --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local lp = Players.LocalPlayer

local isShielded = false
local chargeStarted = 0

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

-- 2. VOID-PROOF GHOST BALL (Collision Filtering)
-- This version ensures the ball only phases through PLAYERS, not the FLOOR.
local function triggerGhostBall()
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if ball then
            local endTime = tick() + 1
            while tick() < endTime do
                -- Logic: If the ball gets too close to the floor, force collisions back on
                if ball.Position.Y < 3 then
                    ball.CanCollide = true
                else
                    ball.CanCollide = false
                end
                task.wait()
            end
            ball.CanCollide = true
        end
    end)
end

-- 3. THE 2-SECOND DESYNC SHIELD
local function activateDesync()
    if isShielded then return end
    isShielded = true
    task.delay(2, function() isShielded = false end)
end

-- 4. THE MASTER HOOK
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    local name = self.Name

    -- Desync: Block Tackles
    if (method == "FireServer" or method == "InvokeServer") and (name:find("Tackle") or name:find("ClaimBall")) then
        if isShielded then return nil end
    end

    -- Power Shot Logic
    if (method == "FireServer" or method == "InvokeServer") and name:find("PerformAction") then
        local holdDuration = tick() - chargeStarted
        
        if holdDuration >= 0.95 then
            for i, arg in pairs(args) do
                if typeof(arg) == "Vector3" and arg.Magnitude > 90 then 
                    -- LASER SHOT: High Speed, Low Arc
                    args[i] = Vector3.new(arg.X * 2.2, arg.Y * 0.75, arg.Z * 2.2)
                    triggerGhostBall() 
                end
            end
        end
        chargeStarted = tick()
    end
    return oldNamecall(self, unpack(args))
end)

-- 5. PHYSICS & TOUCH SENSORS
local function applyPhysics(char)
    local hum = char:WaitForChild("Humanoid")
    hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    
    char.PrimaryPart.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= lp.Name then
            activateDesync()
        end
    end)
end

UIS.InputBegan:Connect(function(input, processed)
    if not processed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonX) then
        chargeStarted = tick() 
    end
end)

if lp.Character then applyPhysics(lp.Character) end
lp.CharacterAdded:Connect(applyPhysics)

print("Final Mix: Anti-Void & Desync Engaged")

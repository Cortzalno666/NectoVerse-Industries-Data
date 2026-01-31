-- [[ ULTIMATE PRECISION MIX - LOW TRAJECTORY FIX ]] --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UIS = game:GetService("UserInputService")

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

-- 2. SMART CHARGE TIMER
local chargeStarted = 0
UIS.InputBegan:Connect(function(input, processed)
    if not processed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonX) then
        chargeStarted = tick() 
    end
end)

-- 3. GHOST BALL
local function triggerGhostBall()
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if ball then
            local endTime = tick() + 1
            while tick() < endTime do
                ball.CanCollide = false
                task.wait()
            end
            ball.CanCollide = true
        end
    end)
end

-- 4. SMART POWER HOOK (The "Laser" Adjustment)
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if (method == "FireServer" or method == "InvokeServer") and self.Name:find("PerformAction") then
        local holdDuration = tick() - chargeStarted
        
        -- GATE 1: Must hold for nearly a full second
        if holdDuration >= 0.95 then
            for i, arg in pairs(args) do
                if typeof(arg) == "Vector3" then
                    -- GATE 2: Magnitude must be massive (90+) to trigger
                    if arg.Magnitude > 90 then 
                        local pX = arg.X * 2.2 -- Extra Speed
                        local pZ = arg.Z * 2.2 -- Extra Speed
                        
                        -- TRAJECTORY FIX: Instead of multiplying height, we dampen it.
                        -- This keeps the ball low and fast like a "driven shot."
                        local pY = arg.Y * 0.8 
                        
                        args[i] = Vector3.new(pX, pY, pZ)
                        triggerGhostBall() 
                    end
                    break 
                end
            end
        end
        chargeStarted = tick() 
    end
    return oldNamecall(self, unpack(args))
end)

-- 5. CHARACTER PHYSICS
local lp = game.Players.LocalPlayer
local function applyPhysics(char)
    local hum = char:WaitForChild("Humanoid")
    hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
end

if lp.Character then applyPhysics(lp.Character) end
lp.CharacterAdded:Connect(applyPhysics)

print("Precision Mix: Laser Shot Mode Active")

-- [[ ULTIMATE PRECISION MIX ]] --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ActionRF = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RF"):WaitForChild("PerformActionThenGet")
local UIS = game:GetService("UserInputService")

-- 1. INTERNAL MODULE BYPASS (No CD / Infinite Stamina / Anti-Stun)
local success, Timegate = pcall(function()
    return require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Timegate"))
end)
if success and Timegate then
    if setreadonly then setreadonly(Timegate, false) end
    Timegate.IsLocked = function() return false end
    Timegate.Consume = function(self, amount) return 0 end
    Timegate.IsGoalie = function() return true end -- Collision Priority
    if setreadonly then setreadonly(Timegate, true) end
end

-- 2. SMART CHARGE TIMER
local chargeStarted = 0
UIS.InputBegan:Connect(function(input, processed)
    if not processed and (input.UserInputType == Enum.UserInputType.MouseButton1 or input.KeyCode == Enum.KeyCode.ButtonX) then
        chargeStarted = tick() -- Record the exact moment you start holding
    end
end)

-- 3. GHOST BALL (1s Phase + Anti-Void)
local function triggerGhostBall()
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if ball then
            local endTime = tick() + 1
            while tick() < endTime do
                ball.CanCollide = false
                -- Anti-Void: Low force to keep trajectory flat
                if ball.Position.Y < 2.0 then ball.AssemblyLinearVelocity += Vector3.new(0, 3, 0) end
                task.wait()
            end
            ball.CanCollide = true
        end
    end)
end

-- 4. SMART POWER HOOK (2x Speed / 1.5x Height)
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if (method == "FireServer" or method == "InvokeServer") and self.Name:find("PerformAction") then
        local holdDuration = tick() - chargeStarted
        
        -- ONLY apply if held for 0.9s (The PowerShot threshold)
        if holdDuration >= 0.9 then
            for i, arg in pairs(args) do
                if typeof(arg) == "Vector3" then
                    -- Ignore tiny nudges to protect dribbling
                    if arg.Magnitude > 30 then 
                        -- THE MIX: 2x Horizontal Speed, 1.5x Vertical Height
                        local pX = arg.X * 2.0
                        local pY = arg.Y * 1.5 
                        local pZ = arg.Z * 2.0
                        
                        args[i] = Vector3.new(pX, pY, pZ)
                        triggerGhostBall() -- Only ghost on power actions
                    end
                    break 
                end
            end
        end
        chargeStarted = tick() -- Reset timer instantly after action
    end
    return oldNamecall(self, unpack(args))
end)

-- 5. PERMANENT STEALTH PHASING (Non-Blocking)
_G.GodMode = true
task.spawn(function()
    while _G.GodMode do
        task.spawn(function()
            pcall(function() ActionRF:InvokeServer("EvadeActivated") end)
        end)
        task.wait(0.3) -- Safety buffer to prevent crashes
    end
end)

-- 6. CHARACTER PHYSICS (Anti-Trip)
local lp = game.Players.LocalPlayer
local char = lp.Character or lp.CharacterAdded:Wait()
char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
char.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)

print("Ultimate Precision Mix Loaded!")

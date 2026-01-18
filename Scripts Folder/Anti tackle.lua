-- [[ Comes with special perks ]] --

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ActionRF = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RF"):WaitForChild("PerformActionThenGet")
local ActionRE = ReplicatedStorage:WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("ActionService"):WaitForChild("RE"):WaitForChild("PerformAction")

-- 1. MODULE BYPASSES (Stun, Stamina, Read-Only Fix)
local success, Timegate = pcall(function()
    return require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Timegate"))
end)

if success and Timegate then
    if setreadonly then setreadonly(Timegate, false) end
    Timegate.IsLocked = function() return false end -- Anti-Stun
    Timegate.Consume = function(self, amount) return 0 end -- No Cooldown/Stamina
    Timegate.IsGoalie = function() return true end -- Collision Priority
    if setreadonly then setreadonly(Timegate, true) end
end

-- 2. THE ULTIMATE HOOK (2X POWER & PHASING)
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    -- Intercept the Shooting Remote you logged
    if method == "FireServer" and self.Name == "PerformAction" and args[1] == "ShotActivated" then
        -- Multiplies the Force (args[4]) by 2 to give you that 2x power boost
        if typeof(args[4]) == "Vector3" then
            args[4] = args[4] * 2 
            return oldNamecall(self, unpack(args))
        end
    end

    return oldNamecall(self, ...)
end)

-- 3. PHASING LOOP (Continuous Evade)
_G.UltimateActive = true
task.spawn(function()
    while _G.UltimateActive do
        pcall(function()
            ActionRF:InvokeServer("EvadeActivated")
        end)
        task.wait(0.4) 
    end
end)

-- 4. BALL PHYSICS (Ensuring ball is never stuck)
task.spawn(function()
    while task.wait() do
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if ball and ball:IsA("BasePart") then
            if ball.Anchored then ball.Anchored = false end
        end
    end
end)

print("Power Shot, Anti-Tackle active")


-- [[ ULTIMATE PRECISION MIX - V5: NOTIFICATION EDITION ]] --
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local lp = Players.LocalPlayer

getgenv().PrecisionSettings = {
    ShieldActive = false,
    ChargeStart = 0,
    FloorLimit = 3.2,
    Trajectory = {X = 2.2, Y = 0.8, Z = 2.2}
}

-- Notification Helper
local function Notify(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration or 2;
    })
end

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

-- 2. SMART GHOST BALL (Wall-Detection)
local function triggerGhostBall()
    task.spawn(function()
        local ball = workspace:FindFirstChild("Misc") and workspace.Misc:FindFirstChild("Football")
        if not ball then return end
        local endTime = tick() + 1.2
        local connection
        local rayParams = RaycastParams.new()
        rayParams.FilterType = Enum.RaycastFilterType.Exclude
        
        connection = RunService.Heartbeat:Connect(function()
            if not ball or not ball.Parent or tick() >= endTime then
                if ball then ball.CanCollide = true end
                connection:Disconnect()
                return
            end

            if ball.Position.Y <= getgenv().PrecisionSettings.FloorLimit then
                ball.CanCollide = true
                return
            end

            rayParams.FilterDescendantsInstances = {ball, lp.Character}
            local cast = workspace:Raycast(ball.Position, ball.AssemblyLinearVelocity.Unit * 3, rayParams)

            if cast and cast.Instance then
                local isPlayer = cast.Instance:FindFirstAncestorOfClass("Model") and cast.Instance.Parent:FindFirstChild("Humanoid")
                ball.CanCollide = isPlayer == nil -- Solid if NOT a player
            else
                ball.CanCollide = false
            end
        end)
    end)
end

-- 3. DESYNC SHIELD (With Notifications)
local function activateDesync()
    if getgenv().PrecisionSettings.ShieldActive then return end
    
    getgenv().PrecisionSettings.ShieldActive = true
    Notify("🛡️ SHIELD ACTIVE", "Tackles are now being desynced!", 2)
    
    task.delay(2, function() 
        getgenv().PrecisionSettings.ShieldActive = false 
        Notify("⚠️ SHIELD EXPIRED", "You are vulnerable to tackles.", 1.5)
    end)
end

-- 4. THE MASTER HOOK
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    local name = self.Name

    if not checkcaller() then
        -- DESYNC: Block incoming tackles/claims
        if (method == "FireServer" or method == "InvokeServer") and (name:find("Tackle") or name:find("ClaimBall")) then
            if getgenv().PrecisionSettings.ShieldActive then 
                return nil 
            end
        end

        -- LASER SHOT: Modify shot power
        if (method == "FireServer" or method == "InvokeServer") and name:find("PerformAction") then
            local holdDuration = tick() - getgenv().PrecisionSettings.ChargeStart
            
            if holdDuration >= 0.95 then
                for i, arg in pairs(args) do
                    if typeof(arg) == "Vector3" and arg.Magnitude > 90 then
                        local t = getgenv().PrecisionSettings.Trajectory
                        args[i] = Vector3.new(arg.X * t.X, arg.Y * t.Y, arg.Z * t.Z)
                        triggerGhostBall()
                        Notify("⚽ LASER SHOT", "Max power trajectory engaged!", 1.5)
                    end
                end
            end
            getgenv().PrecisionSettings.ChargeStart = tick()
        end
    end
    return oldNamecall(self, unpack(args))
end)

-- 5. PHYSICS & TOUCH DETECTION
local function applyPhysics(char)
    local hum = char:WaitForChild("Humanoid")
    local root = char:WaitForChild("HumanoidRootPart")
    hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    
    root.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= lp.Name then
            activateDesync()
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

print(":: PRECISION MIX [V5] :: Notifications & Wall-Proofing Live")

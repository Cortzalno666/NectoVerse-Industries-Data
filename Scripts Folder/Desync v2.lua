-- [[ ULTIMATE PRECISION MIX - V7: SPEED, STAMINA, WALL-PROOF ]] --
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
    Trajectory = {X = 2.2, Y = 0.8, Z = 2.2},
    InfiniteStamina = true,
    SprintSpeed = 24 -- Default is usually 16. 24 is a safe, noticeable boost.
}

-- Notification Helper
local function Notify(title, text, duration)
    StarterGui:SetCore("SendNotification", {
        Title = title;
        Text = text;
        Duration = duration or 2;
    })
end

-- 1. STAMINA & SPEED LOOP (Safety First)
task.spawn(function()
    while task.wait(0.1) do
        local char = lp.Character
        local hum = char and char:FindFirstChild("Humanoid")
        
        if getgenv().PrecisionSettings.InfiniteStamina then
            -- Force Attributes
            if lp:GetAttribute("Stamina") then lp:SetAttribute("Stamina", 100) end
            if lp:GetAttribute("Energy") then lp:SetAttribute("Energy", 100) end
            
            -- Speed Management
            if hum then
                -- Only apply boost if the player is actually holding Shift or moving
                if UIS:IsKeyDown(Enum.KeyCode.LeftShift) and hum.MoveDirection.Magnitude > 0 then
                    hum.WalkSpeed = getgenv().PrecisionSettings.SprintSpeed
                else
                    -- Returns to normal speed when not sprinting to avoid detection
                    hum.WalkSpeed = 16 
                end
            end
        end
    end
end)

-- 2. INTERNAL MODULE BYPASS
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

-- 3. SMART GHOST BALL (Wall-Detection)
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
                ball.CanCollide = isPlayer == nil
            else
                ball.CanCollide = false
            end
        end)
    end)
end

-- 4. THE MASTER HOOK
local oldNamecall
oldNamecall = hookmetamethod(game, "__namecall", function(self, ...)
    local args = {...}
    local method = getnamecallmethod()
    local name = self.Name

    if not checkcaller() then
        -- DESYNC: Block tackles
        if (method == "FireServer" or method == "InvokeServer") and (name:find("Tackle") or name:find("ClaimBall")) then
            if getgenv().PrecisionSettings.ShieldActive then return nil end
        end

        -- STAMINA: Block depletion requests
        if (method == "FireServer") and (name:find("Stamina") or name:find("Consume")) then
            return nil 
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
                        Notify("⚽ LASER SHOT", "Power set to 2.2x", 1.5)
                    end
                end
            end
            getgenv().PrecisionSettings.ChargeStart = tick()
        end
    end
    return oldNamecall(self, unpack(args))
end)

-- 5. PHYSICS & TOUCH SENSORS
local function applyPhysics(char)
    local hum = char:WaitForChild("Humanoid")
    local root = char:WaitForChild("HumanoidRootPart")
    hum:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
    hum:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
    
    root.Touched:Connect(function(hit)
        if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= lp.Name then
            if not getgenv().PrecisionSettings.ShieldActive then
                getgenv().PrecisionSettings.ShieldActive = true
                Notify("🛡️ SHIELD ACTIVE", "Desync engaged!", 2)
                task.delay(2, function() 
                    getgenv().PrecisionSettings.ShieldActive = false 
                    Notify("⚠️ SHIELD EXPIRED", "Shield recharging.", 1.5)
                end)
            end
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

Notify("⚡ ALL SYSTEMS GO", "Stamina, Speed, and Laser Ready", 3)

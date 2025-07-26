local Sprinting = game:GetService("ReplicatedStorage").Systems.Character.Game.Sprinting
local stamina = require(Sprinting)
stamina.MaxStamina = 100  -- Maximum stamina
stamina.MinStamina = -20  -- Minimum stamina
stamina.StaminaGain = 100 -- Stamina gain
stamina.StaminaLoss = 5 -- Stamina loss
stamina.SprintSpeed = 26 -- Regular sprint speed
stamina.StaminaLossDisabled = true -- Disable stamina drain (true/false)

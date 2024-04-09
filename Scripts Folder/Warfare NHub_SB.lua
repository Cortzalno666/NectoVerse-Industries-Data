local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Warfare NHub",
   LoadingTitle = "Loading UI",
   LoadingSubtitle = "by DevoloperBob",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Warfare NHub SB"
   },
   Discord = {
      Enabled = false
      Invite = "", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- True for keysystem and false for no keysystem
   KeySettings = {
      Title = "Key System",
      Subtitle = "The Key Will Save",
      Note = "Made by NeLiga and NectoVerse Developmen",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Necto"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local CreditsTab = Window:CreateTab("Credits", nil) -- Title, Image
local MainTab = Window:CreateTab("Spawns", nil) -- Title, Image
local READMETab = Window:CreateTab("READ ME", nil) -- Title, Image

local Section = MainTab:CreateSection("Spawns")
local CreditsSection = CreditsTab:CreateSection("Credits")
local READmeSection = READMETab:CreateSection("Press The Button Under Here")

local Button = MainTab:CreateButton({
   Name = "Spawn Null Minions (all gloves)",
   Callback = function()
    game.ReplicatedStorage.NullAbility:FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Spawn Cloud (all gloves)",
   Callback = function()
   game.ReplicatedStorage.CloudAbility:FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Spawn Golden Cloud (all gloves)",
   Callback = function()
   game.ReplicatedStorage.NimbusAbility:FireServer()
   end,
})

local Button = MainTab:CreateButton({
   Name = "Spawn Brick (dont spam)",
   Callback = function()
    game.ReplicatedStorage.lbrick:FireServer()
   end,
})

local Button = READMETab:CreateButton({
   Name = "Enable Anti Admins Please",
   Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
   end,
})
   end,
})rcontent.com/ionlyusegithubformcmods/1-Line-Scripts/main/Slap%20Battles")))()
   end,
})

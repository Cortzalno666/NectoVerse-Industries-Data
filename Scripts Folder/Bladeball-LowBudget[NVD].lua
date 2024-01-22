local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/vFishyTurtle/wiihub/main/rayfield'))()local Window = Rayfield:CreateWindow({
   Name = "NVD Bladeball Lowbudget",
   LoadingTitle = "You Loaded Bladeball script by NVD",
   LoadingSubtitle = "by NectoVerse Development on discord.",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Bladeball Lowbudget"
   },
   KeySystem = nil, -- turned
   KeySettings = {
      Title = "Fuck You if you skid",
      Subtitle = "Skidder? nuh uh",
      Note = "Nuh uh",
      FileName = "No2024only28373", -- nuh uh
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"No2024only2030","Raw808"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})
 
  local MainTab = Window:CreateTab ("Home", nil) -- Title, Image
  Rayfield:Notify({
     Title = "Executed/Succesfully",
     Content = "Enjoy>.<",
     Duration = 5,
     Image = nil,
     Actions = { -- Notification Buttons
        Ignore = {
           Name = "Okay!",
           Callback = function()
           print("The user tapped Okay!")
        end
     },
  },
  })
 
  local Button = MainTab:CreateButton({
     Name = "Auto Parry",
     Callback = function()
          loadstring(game:HttpGet("https://raw.githubusercontent.com/1f0yt/community/main/AutoBlock"))()
     end,
  })
 
  local playerTab = Window:CreateTab("player", nil) -- Title, Image
  local Slider = playerTab:CreateSlider({
    Name = "Walkspeed!",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
 
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end,
 })
 
 local Button = playerTab:CreateButton({
   Name = "Inf jump",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/BsGlitch/-nfJumps/main/BsGlitch"))()
   end,
})
 
 local Tab = Window:CreateTab("Shop", nil) -- Title, Image    
 
 local Button = Tab:CreateButton({
    Name = "Sword Autobuy",
    Callback = function()
        while true do
            wait()
            game:GetService("ReplicatedStorage").Remotes.Store.RequestOpenSwordBox:InvokeServer()
            end
    end,
 })
 
 local Button = MainTab:CreateButton({
    Name = "Spam parry(Autoclick for close Range)",
    Callback = function()
      while true do
         task.wait()
         local ball = workspace.Balls:FindFirstChildWhichIsA("BasePart")
         local hum = game.Players.LocalPlayer.Character
         local balldist = 6
         if ball then
         local dist = (ball.Position - hum.HumanoidRootPart.position).Magnitude
         if dist <= balldist and hum:FindFirstChild("Highlight") then
         keypress(0x46)
         end
         end
         end
    end,
 })
 

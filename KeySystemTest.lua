local KeyGuardLibrary = loadstring(game:HttpGet("https://cdn.keyguardian.org/library/v1.0.0.lua"))()
local trueData = "626be8a92602472fbb10caea3348004e"
local falseData = "c9471da7d1a94def91f8b8d6ac3a9410"

KeyGuardLibrary.Set({
  publicToken = "47f2c0d2db7346db8411e3c2df2973e3",
  privateToken = "c0d66e7628014e688fe2e19cbdc1aebf",
  trueData = trueData,
  falseData = falseData,
})

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local key = ""

local window = DrRayLibrary:Load("NectoHub Key System", "Default")
local tab = DrRayLibrary.newTab("Access", "ImageIdHere")

tab.newInput("Key input", "Put your key", function(value)
    key = Value
    print("Enter key")
end)

tab.newButton("Check key", "Vaildate your key", function()
    local response = KeyGuardLibrary.validateDefaultKey(key)
        if response == trueData then
           print("Key is valid")
           -- Your code here
        else
           print("Key is invalid")
        end
end)

tab.newButton("Get key", "get the link to get key", function()
    setclipboard(KeyGuardLibrary.getLink())
    print('Copied')
end)

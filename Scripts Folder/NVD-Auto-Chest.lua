getgenv().Config = {
    ["StartFarmChest"] = true,
    ["Team"] = "Marines",
    ["TimeReset"] = 5, -- No Edit
    ["White Screen"] = false,
    ["Stop The God's Chalice"] = true,
    ["Stop The Fist of Darkness"] = false,
    ["HopServer"] = {
        ["Enable"] = true,
        ["BypassServer"] = true,
        ["Region"] = "Singapore"
    },
    ["Server Discord"] = "https://discord.gg/aPevmdnnge"
}
repeat wait() until game:IsLoaded()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Cortzalno666/NectoVerse-Industries-Data/blob/master/Scripts%20Folder/Scripts%20folder%20%5BV2%5D/Farm.lua"))()

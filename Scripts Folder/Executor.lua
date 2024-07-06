local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("Executor")

local KillingCheats = PhantomForcesWindow:NewSection("?")


KillingCheats:CreateTextbox("Paste code", function(text)
    local function q()
    tb.Text = "" 
end
        print(text)
end)

KillingCheats:CreateButton("Execute", function()
        loadstring(tb.Text)()
    end
print("HI")
end)

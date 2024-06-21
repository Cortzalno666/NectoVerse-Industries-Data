-----------//REFLUX\\-----------
--[[Movelist
mouseclick = 3 combo attacks
K = Kick
P = Upwards slash
J = Jump boost
N = Scythe swing
U = Scythe whirlwind
G = Scythe combo
E = Sword Buster
H = Knife throw
R = Forward dash/slash
Y = Omega blaster
T = Taunt
F = Transform
Q = ???
---------]]

for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then game:GetService("RunService").Heartbeat:connect(function() v.Velocity = Vector3.new(-30,0,0) end) end end game:GetService("StarterGui"):SetCore("SendNotification", { Title = "Convert Impatrick"; Text = "Netless Loaded!"; Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"}) Duration = 16;
wait(0.2)

--SB is getting boring lately, no new scripts, people still using overpowered scripts etc etc--
--Seen too many people running around with the old one or crappy edited ones(A.K.A dark eccentrics edit), blame Dark eccentric--
--Just a lil' secret for anyone that reads this. my next project is gonna be called "Blackburn" OR "Influx" ORR "Card Master"--
--Fuck the jade key.--
--Enjoy.--

HumanDied = false
local CountSCIFIMOVIELOL = 1
function SCIFIMOVIELOL(Part0,Part1,Position,Angle)
	local AlignPos = Instance.new('AlignPosition', Part1); AlignPos.Name = "AliP_"..CountSCIFIMOVIELOL
	AlignPos.ApplyAtCenterOfMass = true;
	AlignPos.MaxForce = 5772000--67752;
	AlignPos.MaxVelocity = math.huge/9e110;
	AlignPos.ReactionForceEnabled = false;
	AlignPos.Responsiveness = 200;
	AlignPos.RigidityEnabled = false;
	local AlignOri = Instance.new('AlignOrientation', Part1); AlignOri.Name = "AliO_"..CountSCIFIMOVIELOL
	AlignOri.MaxAngularVelocity = math.huge/9e110;
	AlignOri.MaxTorque = 5772000
	AlignOri.PrimaryAxisOnly = false;
	AlignOri.ReactionTorqueEnabled = false;
	AlignOri.Responsiveness = 200;
	AlignOri.RigidityEnabled = false;
	local AttachmentA=Instance.new('Attachment',Part1); AttachmentA.Name = "Ath_"..CountSCIFIMOVIELOL
	local AttachmentB=Instance.new('Attachment',Part0); AttachmentB.Name = "Ath_"..CountSCIFIMOVIELOL
	AttachmentA.Orientation = Angle or Vector3.new(0,0,0)
	AttachmentA.Position = Position or Vector3.new(0,0,0)
	AlignPos.Attachment1 = AttachmentA;
	AlignPos.Attachment0 = AttachmentB;
	AlignOri.Attachment1 = AttachmentA;
	AlignOri.Attachment0 = AttachmentB;
	CountSCIFIMOVIELOL = CountSCIFIMOVIELOL + 1
	return {AlignPos,AlignOri,AttachmentA,AttachmentB}
end

if _G.netted ~= true then
	_G.netted = true
	coroutine.wrap(function()
		settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
		settings().Physics.AllowSleep = false
		game:GetService("RunService").RenderStepped:Connect(function()
			game:FindFirstChildOfClass("Players").LocalPlayer.MaximumSimulationRadius=math.pow(math.huge,math.huge)
			sethiddenproperty(game:FindFirstChildOfClass("Players").LocalPlayer,"SimulationRadius",math.huge*math.huge)
		end)
	end)()
end

game:FindFirstChildOfClass("Players").LocalPlayer["Character"].Archivable = true
local hatnameclone = {}
for _,v in next, game:FindFirstChildOfClass("Players").LocalPlayer["Character"]:GetChildren() do
	if v:IsA("Accessory") then
		if hatnameclone[v.Name] then
			if hatnameclone[v.Name] == "s" then
				hatnameclone[v.Name] = {}
			end
			table.insert(hatnameclone[v.Name],v)
		else
			hatnameclone[v.Name] = "s"
		end
	end
end
for _,v in pairs(hatnameclone) do
	if type(v) == "table" then
		local num = 1
		for _,w in pairs(v) do
			w.Name = w.Name..num
			num = num + 1
		end
	end
end
hatnameclone = nil

local DeadChar = game:FindFirstChildOfClass("Players").LocalPlayer.Character

local fldr = Instance.new("Folder",game:FindFirstChildOfClass("Players").LocalPlayer["Character"])
fldr.Name = "DMYF"
local CloneChar = DeadChar:Clone()
local ANIMATIONHERE
if CloneChar:FindFirstChild("Animate") then
	ANIMATIONHERE = CloneChar:FindFirstChild("Animate"):Clone()
	CloneChar:FindFirstChild("Animate"):Destroy()
end
if CloneChar:FindFirstChildOfClass("Folder") then CloneChar:FindFirstChildOfClass("Folder"):Destroy() end
if CloneChar.Torso:FindFirstChild("Neck") then
	local Clonessss = CloneChar.Torso:FindFirstChild("Neck"):Clone()
	Clonessss.Part0 = nil
	Clonessss.Part1 = DeadChar.Head
	Clonessss.Parent = DeadChar.Torso
end
CloneChar.Parent = fldr
CloneChar.HumanoidRootPart.CFrame = DeadChar.HumanoidRootPart.CFrame
CloneChar.Humanoid.BreakJointsOnDeath = false
CloneChar.Name = "non"
CloneChar.Humanoid.DisplayDistanceType = "None"

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		local topacc = false
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
		v.Handle.Massless = true
		v.Handle.CanCollide = false
		if v.Handle:FindFirstChildOfClass("Attachment") then
			local ath__ = v.Handle:FindFirstChildOfClass("Attachment")
			if ath__.Name == "HatAttachment" or ath__.Name == "HairAttachment" or ath__.Name == "FaceFrontAttachment" or ath__.Name == "FaceCenterAttachment" then
				topacc = ath__.Name
			end
		end
        local bv = Instance.new("BodyVelocity",v.Handle)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			if topacc then
				local allthings = SCIFIMOVIELOL(v.Handle,DeadChar.Torso,Vector3.new(0,1.5,0)+ (DeadChar.Head[topacc].Position + (v.Handle[topacc].Position*-1)),Vector3.new(0,0,0))
				local normaltop = allthings[1].Attachment1
				local alipos = allthings[1]
				local alirot = allthings[2]
				local p0 = v.Handle
				local p1 = DeadChar.Head
				alipos.Parent = CloneChar:FindFirstChild(v.Name).Handle
				alirot.Parent = CloneChar:FindFirstChild(v.Name).Handle
				while true do
					game:GetService("RunService").RenderStepped:wait()
					if HumanDied then break end
					coroutine.wrap(function()
						if alipos.Attachment1 == normaltop then
							p0.CFrame = p0.CFrame:lerp((((DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)) * p1[topacc].CFrame) * p0[topacc].CFrame:inverse()),1)
						else
							v.Handle.CFrame = v.Handle.CFrame:lerp(alipos.Attachment1.Parent.CFrame * CFrame.new(alipos.Attachment1.Position) * CFrame.Angles(math.rad(alipos.Attachment1.Rotation.X),math.rad(alipos.Attachment1.Rotation.Y),math.rad(alipos.Attachment1.Rotation.Z)),1)
						end
					end)()
				end
			else
				SCIFIMOVIELOL(v.Handle,CloneChar[v.Name].Handle,Vector3.new(0,0,0),Vector3.new(0,0,0))
			end
		end)()
    end
end

local a = DeadChar.Torso
local b = DeadChar.HumanoidRootPart
local c = DeadChar.Humanoid
a.Parent = game:FindFirstChildOfClass("Workspace")
c.Parent = game:FindFirstChildOfClass("Workspace")
local told = a:Clone()
local told1 = c:Clone()
b["RootJoint"].Part0 = told
b["RootJoint"].Part1 = DeadChar.Head
a.Name = "torso"
a.Neck:Destroy()
c.Name = "Mizt Hub Best"
told.Parent = DeadChar
told1.Parent = DeadChar
DeadChar.PrimaryPart = told
told1.Health = 0
b:Destroy()
a.Parent = DeadChar
c.Parent = DeadChar
told:Destroy()
told1:Destroy()
a.Name = "Torso"

if CloneChar.Head:FindFirstChildOfClass("Decal") then CloneChar.Head:FindFirstChildOfClass("Decal").Transparency = 1 end
if DeadChar:FindFirstChild("Animate") then DeadChar:FindFirstChild("Animate"):Destroy() end

local Collider
function UnCollide()
    if HumanDied then Collider:Disconnect(); return end
    --[[for _,Parts in next, CloneChar:GetChildren() do
        if Parts:IsA("BasePart") then
            Parts.CanCollide = false 
        end 
    end]]
    for _,Parts in next, DeadChar:GetChildren() do
        if Parts:IsA("BasePart") then
        Parts.CanCollide = false
        end 
    end 
end
Collider = game:GetService("RunService").Stepped:Connect(UnCollide)

local resetBindable = Instance.new("BindableEvent")
resetBindable.Event:connect(function()
    game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
	resetBindable:Destroy()
	HumanDied = true
    pcall(function()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
		DeadChar.Head:Destroy()
		DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
		game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
		if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
	end)
end)
game:GetService("StarterGui"):SetCore("ResetButtonCallback", resetBindable)

coroutine.wrap(function()
    while true do
        game:GetService("RunService").RenderStepped:wait()
        if not CloneChar or not CloneChar:FindFirstChild("Head") or not CloneChar:FindFirstChildOfClass("Humanoid") or CloneChar:FindFirstChildOfClass("Humanoid").Health <= 0 and not DeadChar or not DeadChar:FindFirstChild("Head") or not DeadChar:FindFirstChildOfClass("Humanoid") or DeadChar:FindFirstChildOfClass("Humanoid").Health <= 0 then 
            HumanDied = true
            pcall(function()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = DeadChar
				DeadChar.Head:Destroy()
				DeadChar:FindFirstChildOfClass("Humanoid"):Destroy()
				game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
				if DeadChar:FindFirstChildOfClass("Folder") then DeadChar:FindFirstChildOfClass("Folder"):Destroy() end
			end)
            if resetBindable then
                game:GetService("StarterGui"):SetCore("ResetButtonCallback", true)
                resetBindable:Destroy()
            end
            break
        end		
    end
end)()


SCIFIMOVIELOL(DeadChar["Head"],CloneChar["Head"])
SCIFIMOVIELOL(DeadChar["Torso"],CloneChar["Torso"])
SCIFIMOVIELOL(DeadChar["Left Arm"],CloneChar["Left Arm"])
SCIFIMOVIELOL(DeadChar["Right Arm"],CloneChar["Right Arm"])
SCIFIMOVIELOL(DeadChar["Left Leg"],CloneChar["Left Leg"])
SCIFIMOVIELOL(DeadChar["Right Leg"],CloneChar["Right Leg"])

for _,v in pairs(DeadChar:GetChildren()) do
	if v:IsA("BasePart") and v.Name ~= "Head" then
		--[[local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = CloneChar[v.Name].CFrame
			end
		end)()]]
	elseif v:IsA("BasePart") and v.Name == "Head" then
		local bv = Instance.new("BodyVelocity",v)
		bv.Velocity = Vector3.new(0,0,0)
		coroutine.wrap(function()
			while true do
				game:GetService("RunService").RenderStepped:wait()
				if HumanDied then break end
				v.CFrame = DeadChar.Torso.CFrame * CFrame.new(0,1.5,0)
			end
		end)()
	end
end

for _,BodyParts in next, CloneChar:GetDescendants() do
if BodyParts:IsA("BasePart") or BodyParts:IsA("Part") then
BodyParts.Transparency = 1 end end
game:GetService("RunService").RenderStepped:wait()
game:FindFirstChildOfClass("Players").LocalPlayer.Character = CloneChar
game:FindFirstChildOfClass("Workspace"):FindFirstChildOfClass("Camera").CameraSubject = CloneChar.Humanoid

for _,v in next, DeadChar:GetChildren() do
	if v:IsA("Accessory") then
		if v.Handle:FindFirstChildOfClass("Weld") then v.Handle:FindFirstChildOfClass("Weld"):Destroy() end
	end
end

if ANIMATIONHERE then ANIMATIONHERE.Parent = CloneChar end

Player=game:GetService("Players").LocalPlayer
Character=Player.Character
Character.Humanoid.Name = "noneofurbusiness"
hum = Character.noneofurbusiness
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
Neck=Torso["Neck"]
walking = false
attacking = false
running = false
tragedy = false
change = 0
doombounce = false
swordbounce = false
absoluteannihilation = false 
position = nil
MseGuide = true
settime = 0
sine = 0
t = 0
combo1 = true
dgs = 75
combo2 = false
combo3 = false
mouse = Player:GetMouse()
RunSrv = game:GetService("RunService")
RenderStepped = game:GetService("RunService").RenderStepped
local soundtable = {263033191,263032252,263032172,263032182,263032221}
local lmon3 = {"My scythe will tear you apart.","Come a bit closer...","Die from my scythe.","Futile.","Take this scythe.","Where do you want your scar?","My scythe wants to introduce itself.","Feel honored to even touch my scythe.","Flee while you can.","Don't even try.","Slicing time!"}
local lmon = {"Feeling Lucky?","I will direct this personally.","Just stay right where you are...","Let's play catch.","Where is that confidence now?","This will hurt...","Remember this.","My power is rising.","Playtime is over.","I'm gonna wipe that smug off your face.","Don't even bother to run.","All of your actions remain futile"}
local lmon5 = {"What's wrong? You've gone pale all of the sudden.","I'll use you as target practice.","Sharper than a needle.","Just a friendly reminder...","Come on then!","Are you beginning to sweat?","This will leave a scar...","Surgery time...","Like a hot knife through butter..."}
local lmon7 = {"Are you afraid?","Take this!","Can't dodge this.","Kaboom.","Hope is irrelevant.","Why don't you take this head on?","I'm not finished.","Dare to underestimate my power again?","Shoo.","Begone.","Out of my way!"}
local secrettalk = {"And now you'll cease to exist.","This is the last time you've ridiculed my power.","End of the chapter for you.","I will send you to the next world with this.","I had enough of your attitude.","Consider this as a gift.","Fatality.","Another one bites the dust...","Don't come back.","Let me show you true power."}
local mostrandomsoundtable = {527970724,1026907795,12222058,1282729525,165431824,167293985,717192545,150245085,143796003,948494432,1434756150,130801781,138124641,132470328,602163388,174658105,220042720,292838651,949987327,142347633,141679994,223147718,130759239,257642130,224299497}
local glassshatter = {566476056,566477077,566476547,566476140,566475199,566476026}
rdnm = #soundtable
mostrandom = #mostrandomsoundtable
lmon2 = #lmon
lmon4 = #lmon3
lmon6 = #lmon5
lmon8 = #lmon7
secret = #secrettalk
glasss = #glassshatter
removeuseless = game:GetService("Debris")
damageall={}
Repeater={}
Repeater2={}
nonmeshRepeater={}
nonmeshRepeater2={}
dmgii={}
DamageAll2={}
SlowlyFade={}
th1={}
th2={}
th3={}
Extreme={}
ExtremeM={}
ExtremeM2={}
m3={}
th4={}
th5={}
UpMover={}
openshocktable={}
LessSize={}
ForwardMover={}
signtable={}
signtransparency={}
signmover={}
signrotator={}
TheColor = BrickColor.new("Lime green")

landingsound = Instance.new("Sound", Torso)
landingsound.SoundId = "rbxassetid://379698301"
landingsound.Volume = 4

step = Instance.new("Sound", Torso)
step.SoundId = "rbxassetid://337064700"
step.Volume = 3

energyburst = Instance.new("Sound", Torso)
energyburst.SoundId = "rbxassetid://278641993"
energyburst.Volume = 3

charge = Instance.new("Sound", Torso)
charge.SoundId = "rbxassetid://1620566047"
charge.Volume = 3

energyburst2 = Instance.new("Sound", Torso)
energyburst2.SoundId = "rbxassetid://1368637781"
energyburst2.Volume = 3

lunge = Instance.new("Sound", Torso)
lunge.SoundId = "rbxassetid://28144425"
lunge.Pitch = .7
lunge.Volume = 5

kiready = Instance.new("Sound", Torso)
kiready.SoundId = "rbxassetid://1619519574"
kiready.Pitch = 1
kiready.Volume = 3

kigo = Instance.new("Sound", Torso)
kigo.SoundId = "rbxassetid://1620239422"
kigo.Pitch = 1
kigo.Volume = 3

lunge2 = Instance.new("Sound", Torso)
lunge2.SoundId = "rbxassetid://28144425"
lunge2.Pitch = .5
lunge2.Volume = 5

lunge3 = Instance.new("Sound", Torso)
lunge3.SoundId = "rbxassetid://28144425"
lunge3.Pitch = .6
lunge3.Volume = 5

aura = Instance.new("Sound", Torso)
aura.Volume = 2
aura.Looped = true
aura.SoundId = "rbxassetid://1382718007"

swordlang = Instance.new("Sound", Torso)
swordlang.SoundId = "rbxassetid://62339698"
swordlang.Volume = 5
swordlang.Pitch = .3

daggersheet = Instance.new("Sound", Torso)
daggersheet.SoundId = "rbxassetid://62339698"
daggersheet.Volume = 3

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Head
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Root
TORSOLERP.Part0 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

local function ci(x, c, y, n)
so = Instance.new("Sound", x)
so.SoundId = c
so.Volume = y
so.Looped = n
end

ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")

frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false


lastframe = tick()
script.Heartbeat:Fire()


game:GetService("RunService").Heartbeat:connect(function(s, p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)

function swait(num)
	if num == 0 or num == nil then
		game:service("RunService").Stepped:wait(0)
	else
		for i = 0, num do
			game:service("RunService").Stepped:wait(0)
		end
	end
end

godmode = coroutine.wrap(function()
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
wait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChildOfClass('Humanoid') and v:FindFirstChild('Torso') or v:FindFirstChild('UpperTorso') then
if v:FindFirstChild("Torso") then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
elseif v:FindFirstChild("UpperTorso") then	
			local Mag = (v.UpperTorso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end
end	
		end		
	end		
	return Returning		
end

doomtheme = Instance.new("Sound", Torso)
doomtheme.Volume = 1
doomtheme.Looped = true
doomtheme.SoundId = "rbxassetid://1535710893"
doomtheme:Play()

light = Instance.new("PointLight", Torso)
light.Color = Color3.new(0,255,0)
light.Range = 8
light.Brightness = 35

pBase = Instance.new("Part", LeftArm)
pBase.BrickColor = BrickColor.new("Really black")
pBase.Material = "Granite"
pBase.Size = Vector3.new(1.05,.3,1.05)
pBase.CanCollide = false
pBasew = weldBetween(pBase,LeftArm)
pBasew.C0 = CFrame.new(0,.92,0)

pBase2 = Instance.new("WedgePart", pBase)
pBase2.BrickColor = BrickColor.new("Really black")
pBase2.Material = "Granite"
pBase2.Size = Vector3.new(1.05,1.05,1.05)
pBase2.CanCollide = false
pBase2w = weldBetween(pBase2,LeftArm)
pBase2w.C0 = CFrame.new(0,0,-.25) * CFrame.Angles(math.rad(-90),math.rad(-90),math.rad(0))

pBase3 = Instance.new("Part", pBase)
pBase3.BrickColor = BrickColor.new("Really black")
pBase3.Material = "Granite"
pBase3.Size = Vector3.new(.4,.65,.85)
pBase3.CanCollide = false
pBase3w = weldBetween(pBase3,LeftArm)
pBase3w.C0 = CFrame.new(0.4,.85,0)

pBase4 = Instance.new("Part", pBase)
pBase4.BrickColor = BrickColor.new("Mid Gray")
pBase4.Material = "Ice"
pBase4.Size = Vector3.new(.3,.45,.75)
pBase4.CanCollide = false
pBase4w = weldBetween(pBase4,LeftArm)
pBase4w.C0 = CFrame.new(0.4,1.03,0)

pBase5 = Instance.new("Part", pBase)
pBase5.BrickColor = BrickColor.new("Mid Gray")
pBase5.Material = "Glass"
pBase5.Size = Vector3.new(.15,2,.65)
pBase5.CanCollide = false
pBase5w = weldBetween(pBase5,LeftArm)
pBase5w.C0 = CFrame.new(0.4,1.53,0)

pBase6 = Instance.new("WedgePart", pBase)
pBase6.BrickColor = BrickColor.new("Mid Gray")
pBase6.Material = "Glass"
pBase6.Size = Vector3.new(.15,1.05,.65)
pBase6.CanCollide = false
pBase6w = weldBetween(pBase6,LeftArm)
pBase6w.C0 = CFrame.new(0.4,-3.05,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0))

pBase7 = Instance.new("Part", pBase)
pBase7.BrickColor = TheColor
pBase7.Material = "Neon"
pBase7.Size = Vector3.new(.07,2,.67)
pBase7.CanCollide = false
pBase7w = weldBetween(pBase7,LeftArm)
pBase7w.C0 = CFrame.new(0.4,1.53,0)

pBase8 = Instance.new("WedgePart", pBase)
pBase8.BrickColor = TheColor
pBase8.Material = "Neon"
pBase8.Size = Vector3.new(.07,1.05,.65)
pBase8.CanCollide = false
pBase8w = weldBetween(pBase8,LeftArm)
pBase8w.C0 = CFrame.new(0.4,-3.05,0.016) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0))

pBase9 = Instance.new("Part", pBase)
pBase9.BrickColor = TheColor
pBase9.Material = "Neon"
pBase9.Size = Vector3.new(.07,2,.05)
pBase9.CanCollide = false
pBase9w = weldBetween(pBase9,LeftArm)
pBase9w.C0 = CFrame.new(0.4,2.53,0.31)

pBase10 = Instance.new("Part", pBase)
pBase10.BrickColor = TheColor
pBase10.Material = "Neon"
pBase10.Size = Vector3.new(.4,.55,.75)
pBase10.CanCollide = false
pBase10w = weldBetween(pBase10,LeftArm)
pBase10w.C0 = CFrame.new(0.42,.85,0)

pBase11 = Instance.new("Part", pBase)
pBase11.BrickColor = BrickColor.new("Really black")
pBase11.Material = "Granite"
pBase11.Size = Vector3.new(.4,.50,.70)
pBase11.CanCollide = false
pBase11w = weldBetween(pBase11,LeftArm)
pBase11w.C0 = CFrame.new(0.43,.85,0)

pBase12 = Instance.new("Part", pBase)
pBase12.BrickColor = TheColor
pBase12.Material = "Neon"
pBase12.Size = Vector3.new(.2,.2,.2)
pBase12.CanCollide = false
pBase12.Shape = 0
pBase12w = weldBetween(pBase12,LeftArm)
pBase12w.C0 = CFrame.new(0.5,.135,0)

TheCore = Instance.new("Part", pBase)
TheCore.CanCollide = false
TheCore.Size = Vector3.new(0,0,0)
TheCore.Material = "Fabric"
TheCore.BrickColor = TheColor
TheCoreMESH = Instance.new("SpecialMesh", TheCore)
TheCoreMESH.Scale = Vector3.new(.29,.29,.29)
TheCoreMESH.MeshId = "rbxassetid://19251107"
TheCoreweld = weldBetween(TheCore, pBase12)
TheCoreweld.C0 = CFrame.new(0, 0.05, 0) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0))

larmf = Instance.new("Part", Torso)
larmf.BrickColor = TheColor
larmf.Size = Vector3.new(1.001, 2.001, 1.001)
larmf.Material = "Neon"
larmf.Transparency = .9
larmf.CanCollide = false
larmfweld = weldBetween(larmf,LeftArm)

rarmf = Instance.new("Part", larmf)
rarmf.BrickColor = TheColor
rarmf.Size = Vector3.new(1.001, 2.001, 1.001)
rarmf.Material = "Neon"
rarmf.Transparency = .9
rarmf.CanCollide = false
rarmfweld = weldBetween(rarmf,RightArm)

llegf = Instance.new("Part", larmf)
llegf.BrickColor = TheColor
llegf.Size = Vector3.new(1.001, 2.001, 1.001)
llegf.Material = "Neon"
llegf.Transparency = .9
llegf.CanCollide = false
llegffweld = weldBetween(llegf,LeftLeg)

rlegf = Instance.new("Part", larmf)
rlegf.BrickColor = TheColor
rlegf.Size = Vector3.new(1.001, 2.001, 1.001)
rlegf.Material = "Neon"
rlegf.Transparency = .9
rlegf.CanCollide = false
rlegfweld = weldBetween(rlegf,RightLeg)

Torsof = Instance.new("Part", larmf)
Torsof.BrickColor = TheColor
Torsof.Size = Vector3.new(2.001, 2.001, 1.001)
Torsof.Material = "Neon"
Torsof.Transparency = .9
Torsof.CanCollide = false
Torsofweld = weldBetween(Torsof,Torso)

local turnoffandon = coroutine.wrap(function()
while wait() do
if transformingpart then
else
for i = 1, 25 do
larmf.Transparency = larmf.Transparency + .01
rarmf.Transparency = rarmf.Transparency + .01
llegf.Transparency = llegf.Transparency + .01
rlegf.Transparency = rlegf.Transparency + .01
Torsof.Transparency = Torsof.Transparency + .01
swait()
end
end
for i = 1, 25 do
if transformingpart then
else
larmf.Transparency = larmf.Transparency - .01
rarmf.Transparency = rarmf.Transparency - .01
llegf.Transparency = llegf.Transparency - .01
rlegf.Transparency = rlegf.Transparency - .01
Torsof.Transparency = Torsof.Transparency - .01
swait()
end
end
end
end)
turnoffandon()

local fidgetspinner = coroutine.wrap(function()
while true do
TheCoreweld.C0 = TheCoreweld.C0 * CFrame.Angles(math.rad(1), math.rad(0), math.rad(0))
swait()
end
end)
fidgetspinner()

for _,n in pairs(Character:GetChildren()) do
if n:IsA("Accessory") then n:Remove() end
end
for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end

shirt = Instance.new("Shirt", Character)
shirt.Name = "Shirt"
pants = Instance.new("Pants", Character)
pants.Name = "Pants"
Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=765406892"
Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=783981083"

local PumpkinOverlord = Instance.new("Part",Character)
PumpkinOverlord.Size = Vector3.new(2,2,2)
PumpkinOverlord.CFrame = Head.CFrame
PumpkinOverlord.CanCollide = false
local PumpkinOverlordWeld = Instance.new("Weld",PumpkinOverlord)
PumpkinOverlordWeld.Part0 = PumpkinOverlord
PumpkinOverlordWeld.Part1 = Head
PumpkinOverlordWeld.C0 = PumpkinOverlord.CFrame:inverse() * Head.CFrame * CFrame.new(0.05,-.4,.1)
mPumpkinOverlord = Instance.new("SpecialMesh", PumpkinOverlord)
mPumpkinOverlord.MeshType = "FileMesh"
mPumpkinOverlord.Scale = Vector3.new(.5, .5, .5)
mPumpkinOverlord.MeshId,mPumpkinOverlord.TextureId = 'http://www.roblox.com/asset/?id=1158007','http://www.roblox.com/asset/?id=1158033'
mPumpkinOverlord.VertexColor = Vector3.new(0,10,0)

JohnDoe = Instance.new("Part", Head)
JohnDoe.Shape = 0 
JohnDoe.Size = Vector3.new(2.05,2.05,2.05)
JohnDoe.Material = "Neon"
JohnDoe.CanCollide = false
JohnDoe.BrickColor = TheColor
Jw = weldBetween(Head,JohnDoe)
Jw.C0 = CFrame.new(0,0.25,.05)

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.Magnitude > 2 and running == false then
trail = true
position = "Walking"
elseif Root.Velocity.Magnitude < 0.5 and running == false and nottransform then
trail = false
position = "Idle"
elseif Root.Velocity.Magnitude < 0.5 and running == false then
trail = false
position = "Idle2"
elseif Root.Velocity.Magnitude > 15 then
position = "Running"
else
end
wait()
end
end)
checks1()

Trail = coroutine.wrap(function()
while true do
if transformingpart then
elseif trail then
if trailntrue then
for i = 1, 10 do
Trailn.BrickColor = TheCore.BrickColor
TrailnMESH.Scale = TrailnMESH.Scale + Vector3.new(0,.4,.4)
Trailn.Transparency = Trailn.Transparency + 0.1
wait()
end
end
elseif not trail then
trailntrue = true
Trailn = Instance.new("Part", Torso)
Trailn.Size = Vector3.new(0.5, 0.5, 0.5)
Trailn.Material = "Neon"
Trailn.BrickColor = TheCore.BrickColor
Trailn.Transparency = 0
Trailn.Anchored = true
Trailn.CanCollide = false
TrailnMESH = Instance.new("SpecialMesh", Trailn)
TrailnMESH.MeshType = "Cylinder"
TrailnMESH.Scale = Vector3.new(.1,0.01,0.01)
Trailn.CFrame = Root.CFrame * CFrame.new(0,-2.9,0) * CFrame.Angles(math.rad(90),math.rad(90),0)
for i = 1, 35 do
Trailn.BrickColor = TheCore.BrickColor
TrailnMESH.Scale = TrailnMESH.Scale + Vector3.new(0,.4,.4)
wait()
end
for i = 1, 10 do
Trailn.BrickColor = TheCore.BrickColor
TrailnMESH.Scale = TrailnMESH.Scale + Vector3.new(0,.4,.4)
Trailn.Transparency = Trailn.Transparency + .1
wait()
end
Trailn:Remove()
trailntrue = false
end
wait()
end
end)
Trail()

OrgnC0 = Neck.C0
local movelimbs = coroutine.wrap(function()
while RunSrv.RenderStepped:wait() do
TrsoLV = Torso.CFrame.lookVector
Dist = nil
Diff = nil
if not MseGuide then
print("l")
else
local _, Point = Workspace:FindPartOnRay(Ray.new(Head.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist = (Head.CFrame.p-Point).magnitude
Diff = Head.CFrame.Y-Point.Y
local _, Point2 = Workspace:FindPartOnRay(Ray.new(LeftArm.CFrame.p, mouse.Hit.lookVector), Workspace, false, true)
Dist2 = (LeftArm.CFrame.p-Point).magnitude
Diff2 = LeftArm.CFrame.Y-Point.Y
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
Neck.C0 = Neck.C0:lerp(OrgnC0*CFrame.Angles((math.tan(Diff/Dist)*1), 0, (((Head.CFrame.p-Point).Unit):Cross(Torso.CFrame.lookVector)).Y*1), .1)
end
end
end)
movelimbs()

mouse.Button1Down:connect(function()
	if combo1 then
if debounce then return end
debounce = true
attacking = true
combo1 = false
tr1.Enabled = true
combo2 = true
hum.WalkSpeed = 10
for i = 1, 12 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-55), math.rad(0)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-55),0),0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5,.2,-1) * CFrame.Angles(math.rad(-165),math.rad(0),math.rad(90)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.6)
swait()
end
lunge:Play()
htbox = Instance.new("Part", pBase5)
htbox.CFrame = pBase5.CFrame
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(.17,4,.68)
htboxweld = weldBetween(htbox,pBase5)
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
Slachtoffer:TakeDamage(math.random(25,35))
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
end
end)
trailactivate = true
for i = 1, 12 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(55), math.rad(0)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(55),0),0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5,1,-1) * CFrame.Angles(math.rad(-50),math.rad(0),math.rad(90)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.6)
swait()
end
attacking = false   
debounce = false
damagedebounce = false
htbox:Remove()
trailactivate = false
hum.WalkSpeed = 18
tr1.Enabled = false
elseif combo2 then
if debounce then return end
hum.WalkSpeed = 8
trailactive = true
debounce = true
attacking = true
tr1.Enabled = true
combo2 = false
combo3 = true
swordlang:Play()
for i = 1, 12 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2, 0, 0.501) * CFrame.Angles(math.rad(-90), math.rad(45), math.rad(0)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0, 2, 0.5) * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(0)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.6)
swait()
end
htbox = Instance.new("Part", pBase5)
htbox.CFrame = pBase5.CFrame
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(.25,6,.1)
htboxweld = weldBetween(htbox,pBase5)
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
Slachtoffer:TakeDamage(math.random(31,47))
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
end
end)
lunge2:Play()
for i = 1, 14 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0, 2, 0.5) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(90)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.6)
swait()
end
debounce = false
attacking = false
damagedebounce = false
htbox:Remove()
hum.WalkSpeed = 18
tr1.Enabled = false
elseif combo3 then
if debounce then return end
debounce = true
trailactivate = true
attacking = true
combo3 = false
trailactivate = false
combo1 = true
tr1.Enabled = true
t = 0
htbox = Instance.new("Part", pBase5)
htbox.CFrame = pBase5.CFrame
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(.17,4,.68)
htboxweld = weldBetween(htbox,pBase5)
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
for i = 1, 5 do
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
Slachtoffer:TakeDamage(math.random(7,15))
wait(.1)
damagedebounce = false
wait()
end
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
end
end)
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
swait()
end
hum.WalkSpeed = 25
lunge3:Play()
for i = 1, 40 do
t = t + 80
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
swait()
end
htbox:Remove()
hum.WalkSpeed = 18
attacking = false
damagedebounce = false
debounce = false
trailactivate = false
tr1.Enabled = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='t' then
if tauntdebounce == true then return end
tauntdebounce = true
RAW = Instance.new("Sound", Torso)
RAW.SoundId = "rbxassetid://347972965"
RAW.Volume = 6
RAW:Play()
RAWPOWER = Instance.new("Part", Torso)
RAWPOWER.Size = Vector3.new(0.5, 0.5, 0.5)
RAWPOWER.Material = "Neon"
RAWPOWER.BrickColor = TheColor
RAWPOWER.Transparency = 0
RAWPOWER.Anchored = true
RAWPOWER.CanCollide = false
RAWPOWERMESH = Instance.new("SpecialMesh", RAWPOWER)
RAWPOWERMESH.MeshType = "Cylinder"
RAWPOWERMESH.Scale = Vector3.new(.1,0.01,0.01)
RAWPOWER.CFrame = Root.CFrame * CFrame.new(0,-2.9,0) * CFrame.Angles(math.rad(90),math.rad(90),0)
for i = 1, 100 do
RAWPOWER.BrickColor = TheCore.BrickColor
RAWPOWERMESH.Scale = RAWPOWERMESH.Scale + Vector3.new(0,2,2)
RAWPOWER.Transparency = RAWPOWER.Transparency + 0.01
wait()
end
wait(RAW.TimeLength)
RAWPOWER:Remove()
RAW:Remove()
tauntdebounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='l' then ------------- Orbital cannon of doom
if doombounce then return end
doombounce = true
if debounce then return end
debounce = true
attacking = true
acti = true
hum.WalkSpeed = 0
quicklerppp = coroutine.wrap(function()
for i = 1, 10 do 
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 1.8, .2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 1.8, 0.2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(3)), 0.5)
wait()
end
end)
quicklerppp()
BallOfDeath = Instance.new("Part", Torso)
BallOfDeath.Material = "Neon"
BallOfDeath.CanCollide = false
BallOfDeath.Anchored = true
BallOfDeath.BrickColor = TheColor
BallOfDeath.Size = Vector3.new(.1,.1,.1)
BallOfDeathShape = Instance.new("SpecialMesh", BallOfDeath)
BallOfDeathShape.MeshType = "Sphere"
BallOfDeathShape.Scale = Vector3.new(1,1,1)
sou = coroutine.wrap(function()
mylegacy = Instance.new("Sound", BallOfDeath)
mylegacy.SoundId = "rbxassetid://907530407"
mylegacy.Looped = true
mylegacy.Volume = 0
mylegacy:Play()
for i = 1, 50 do
mylegacy.Volume = mylegacy.Volume + .1
wait()
end
end)
sou()
if nottransform then
for i = 1, 94 do
BallOfDeath.BrickColor = TheCore.BrickColor
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.59 + .05 * math.sin(sine/12), 0.1 -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(-8  + 6 * math.sin(sine/12))), .2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(2)),.2)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-0),math.rad(0)),.2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
BallOfDeath.CFrame = pBase5.CFrame * CFrame.new(0,-20,0)
BallOfDeathShape.Scale = BallOfDeathShape.Scale + Vector3.new(4,4,4)
wait()
end
elseif not nottransform then
for i = 1, 190 do
BallOfDeath.BrickColor = TheCore.BrickColor
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5+ .02 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(-8), math.rad(0 * math.cos(sine/8)), math.rad(0)), .3)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-0),math.rad(0)),.4)
TORSOLERP.C0 = TORSOLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55 + .02 * math.sin(sine/8), .15) * CFrame.Angles(math.rad(0 * math.sin(sine/8)), math.rad(0 + 2 * math.sin(sine/8)), math.rad(-2 - 0 * math.sin(sine/8))), .3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, .1 + 0.05 * math.sin(sine/8), 0.1) * CFrame.Angles(math.rad(2 - 2 * math.sin(sine/8)), math.rad(15 - 2 * math.sin(sine/8)), math.rad(-8 - 1 * math.sin(sine/8))), .3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.8 + .02 * math.sin(sine/8), .2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(2 + 0 * math.sin(sine/8))), .3)
BallOfDeath.CFrame = pBase5.CFrame * CFrame.new(0,-20,0)
BallOfDeathShape.Scale = BallOfDeathShape.Scale + Vector3.new(2,2,2)
wait()
end
end
minsou = coroutine.wrap(function()
for i = 1, 50 do
mylegacy.Volume = mylegacy.Volume - 0.08
wait()
end
mylegacy:Remove()
end)
minsou()
quicklerpppp = coroutine.wrap(function()
for i = 1, 10 do 
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(160),math.rad(0),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
hum.WalkSpeed = 18
attacking = false
end)
quicklerpppp()
LightOfDeath = Instance.new("Part", Torso)
LightOfDeath.Size = Vector3.new(0.5, 0.5, 0.5)
LightOfDeath.Material = "Neon"
LightOfDeath.BrickColor = TheColor
LightOfDeath.Transparency = 1
LightOfDeath.Anchored = true
LightOfDeath.CanCollide = false
LightOfDeathMESH = Instance.new("SpecialMesh", LightOfDeath)
LightOfDeathMESH.MeshType = "Cylinder"
LightOfDeathMESH.Scale = Vector3.new(1000,3,3)
LightOfDeath.CFrame = CFrame.new(mouse.Hit.p) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
removeuseless:AddItem(LightOfDeath,25)
removeuseless:AddItem(BallOfDeath,25)
positioning = coroutine.wrap(function()
BallOfDeath.CFrame = BallOfDeath.CFrame:lerp(CFrame.new(mouse.Hit.p) * CFrame.new(0,250,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.5)
while acti do
LightOfDeath.BrickColor = TheCore.BrickColor
BallOfDeath.BrickColor = TheCore.BrickColor
BallOfDeath.CFrame = BallOfDeath.CFrame:lerp(CFrame.new(mouse.Hit.p) * CFrame.new(0,250,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.1)
LightOfDeath.CFrame = LightOfDeath.CFrame:lerp(CFrame.new(mouse.Hit.p) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),.1)
wait()
end
end)
positioning()
wait(1)
debounce = false
attacking = false
quickcourrr = coroutine.wrap(function()
for i = 1, 100 do
LightOfDeath.Transparency = LightOfDeath.Transparency - 0.01
wait()
end
end)
quickcourrr()
soundofdoom = Instance.new("Sound", LightOfDeath)
soundofdoom.SoundId = "rbxassetid://1545630949"
soundofdoom.Volume = 10
soundofdoom:Play()
wait(9)
acti = false
LightOfDeath.Anchored = true
rays = Instance.new("Part", Torso)
rays.Size = Vector3.new(1, 1, 1)
rays.Transparency = 0
rays.BrickColor = TheColor
rays.Material = "Neon"
rays.Anchored = true
rays.CanCollide = false
rays.CFrame = LightOfDeath.CFrame * CFrame.new(250,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
raysmesh = Instance.new("SpecialMesh", rays) 
raysmesh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
raysmesh.Scale = Vector3.new(1, 1, 1)
rays2 = Instance.new("Part", Torso)
rays2.Size = Vector3.new(1, 1, 1)
rays2.Transparency = 0
rays2.BrickColor = TheColor
rays2.Material = "Neon"
rays2.Anchored = true
rays2.CanCollide = false
rays2.CFrame = LightOfDeath.CFrame * CFrame.new(200,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
raysmesh2 = Instance.new("SpecialMesh", rays2) 
raysmesh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
raysmesh2.Scale = Vector3.new(1, 1, 1)
rays3 = Instance.new("Part", Torso)
rays3.Size = Vector3.new(1, 1, 1)
rays3.Transparency = 0
rays3.BrickColor = TheColor
rays3.Material = "Neon"
rays3.Anchored = true
rays3.CanCollide = false
rays3.CFrame = LightOfDeath.CFrame * CFrame.new(150,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
raysmesh3 = Instance.new("SpecialMesh", rays3) 
raysmesh3.MeshId = "http://www.roblox.com/asset/?id=3270017" 
raysmesh3.Scale = Vector3.new(1, 1, 1)
rays4 = Instance.new("Part", Torso)
rays4.Size = Vector3.new(1, 1, 1)
rays4.Transparency = 0
rays4.BrickColor = TheColor
rays4.Material = "Neon"
rays4.Anchored = true
rays4.CanCollide = false
rays4.CFrame = LightOfDeath.CFrame * CFrame.new(100,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
raysmesh4 = Instance.new("SpecialMesh", rays4) 
raysmesh4.MeshId = "http://www.roblox.com/asset/?id=3270017" 
raysmesh4.Scale = Vector3.new(1, 1, 1)
rays5 = Instance.new("Part", Torso)
rays5.Size = Vector3.new(1, 1, 1)
rays5.Transparency = 0
rays5.BrickColor = TheColor
rays5.Material = "Neon"
rays5.Anchored = true
rays5.CanCollide = false
rays5.CFrame = LightOfDeath.CFrame * CFrame.new(50,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
raysmesh5 = Instance.new("SpecialMesh", rays5) 
raysmesh5.MeshId = "http://www.roblox.com/asset/?id=3270017" 
raysmesh5.Scale = Vector3.new(1, 1, 1)
rays6 = Instance.new("Part", Torso)
rays6.Size = Vector3.new(1, 1, 1)
rays6.Transparency = 0
rays6.BrickColor = TheColor
rays6.Material = "Neon"
rays6.Anchored = true
rays6.CanCollide = false
rays6.CFrame = LightOfDeath.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
raysmesh6 = Instance.new("SpecialMesh", rays6) 
raysmesh6.MeshId = "http://www.roblox.com/asset/?id=3270017" 
raysmesh6.Scale = Vector3.new(1, 1, 1)
ff = coroutine.wrap(function()
for i = 1, 100 do
raysmesh.Scale = raysmesh.Scale + Vector3.new(6,6,6)
rays.Transparency = rays.Transparency + 0.03
raysmesh2.Scale = raysmesh2.Scale + Vector3.new(6,6,6)
rays2.Transparency = rays2.Transparency + 0.03
raysmesh3.Scale = raysmesh3.Scale + Vector3.new(6,6,6)
rays3.Transparency = rays3.Transparency + 0.03
raysmesh4.Scale = raysmesh4.Scale + Vector3.new(6,6,6)
rays4.Transparency = rays4.Transparency + 0.03
raysmesh5.Scale = raysmesh5.Scale + Vector3.new(6,6,6)
rays5.Transparency = rays5.Transparency + 0.03
raysmesh6.Scale = raysmesh6.Scale + Vector3.new(6,6,6)
rays6.Transparency = rays6.Transparency + 0.03
wait()
end
end)
ff()
blastwave = Instance.new("Part", Torso)
blastwave.Size = Vector3.new(1, 1, 1)
blastwave.Transparency = 0
blastwave.BrickColor = TheColor
blastwave.Material = "Neon"
blastwave.Anchored = true
blastwave.CanCollide = false
blastwave.CFrame = CFrame.new(LightOfDeath.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave,10)
DDTblastwave = Instance.new("SpecialMesh", blastwave) 
DDTblastwave.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave.Scale = Vector3.new(1, 1, 1)
blastwave2 = Instance.new("Part", Torso)
blastwave2.Size = Vector3.new(1, 1, 1)
blastwave2.Transparency = 0
blastwave2.BrickColor = TheColor
blastwave2.Material = "Neon"
blastwave2.Anchored = true
blastwave2.CanCollide = false
blastwave2.CFrame = CFrame.new(LightOfDeath.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave2,10)
DDTblastwave2 = Instance.new("SpecialMesh", blastwave2) 
DDTblastwave2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave2.Scale = Vector3.new(1, 1, 1)
blastwave3 = Instance.new("Part", Torso)
blastwave3.Size = Vector3.new(1, 1, 1)
blastwave3.Transparency = 0
blastwave3.BrickColor = TheColor
blastwave3.Material = "Neon"
blastwave3.Anchored = true
blastwave3.CanCollide = false
blastwave3.CFrame = CFrame.new(LightOfDeath.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave3,10)
DDTblastwave3 = Instance.new("SpecialMesh", blastwave3) 
DDTblastwave3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave3.Scale = Vector3.new(1, 1, 1)
blastwave4 = Instance.new("Part", Torso)
blastwave4.Size = Vector3.new(1, 1, 1)
blastwave4.Transparency = 0
blastwave4.BrickColor = TheColor
blastwave4.Material = "Neon"
blastwave4.Anchored = true
blastwave4.CanCollide = false
blastwave4.CFrame = CFrame.new(LightOfDeath.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave4,10)
DDTblastwave4 = Instance.new("SpecialMesh", blastwave4) 
DDTblastwave4.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave4.Scale = Vector3.new(1, 1, 1)
blastwave5 = Instance.new("Part", Torso)
blastwave5.Size = Vector3.new(1, 1, 1)
blastwave5.Transparency = 0
blastwave5.BrickColor = TheColor
blastwave5.Material = "Neon"
blastwave5.Anchored = true
blastwave5.CanCollide = false
blastwave5.CFrame = CFrame.new(LightOfDeath.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave5,10)
DDTblastwave5 = Instance.new("SpecialMesh", blastwave5) 
DDTblastwave5.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave5.Scale = Vector3.new(1, 1, 1)
Blastcircle = Instance.new("Part", Torso)
Blastcircle.Material = "Neon"
Blastcircle.Anchored = true
Blastcircle.Transparency = 0
Blastcircle.CanCollide = false
Blastcircle.BrickColor = TheColor
Blastcircle.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle,10)
BlastShape = Instance.new("SpecialMesh", Blastcircle)
BlastShape.MeshType = "Sphere"
BlastShape.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle.CFrame = LightOfDeath.CFrame
Blastcircle2 = Instance.new("Part", Torso)
Blastcircle2.Material = "Neon"
Blastcircle2.Anchored = true
Blastcircle2.Transparency = 0
Blastcircle2.CanCollide = false
Blastcircle2.BrickColor = TheColor
Blastcircle2.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle2,10)
BlastShape2 = Instance.new("SpecialMesh", Blastcircle2)
BlastShape2.MeshType = "Sphere"
BlastShape2.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle2.CFrame = LightOfDeath.CFrame
Blastcircle3 = Instance.new("Part", Torso)
Blastcircle3.Material = "Neon"
Blastcircle3.Anchored = true
Blastcircle3.Transparency = 0
Blastcircle3.CanCollide = false
Blastcircle3.BrickColor = TheColor
Blastcircle3.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle3,10)
BlastShape3 = Instance.new("SpecialMesh", Blastcircle3)
BlastShape3.MeshType = "Sphere"
BlastShape3.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle3.CFrame = LightOfDeath.CFrame
Blastcircle4 = Instance.new("Part", Torso)
Blastcircle4.Material = "Neon"
Blastcircle4.Anchored = true
Blastcircle4.Transparency = 0
Blastcircle4.CanCollide = false
Blastcircle4.BrickColor = TheColor
Blastcircle4.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle4,10)
BlastShape4 = Instance.new("SpecialMesh", Blastcircle4)
BlastShape4.MeshType = "Sphere"
BlastShape4.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle4.CFrame = LightOfDeath.CFrame
Blastcircle5 = Instance.new("Part", Torso)
Blastcircle5.Material = "Neon"
Blastcircle5.Anchored = true
Blastcircle5.Transparency = 0
Blastcircle5.CanCollide = false
Blastcircle5.BrickColor = TheColor
Blastcircle5.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle5,10)
BlastShape5 = Instance.new("SpecialMesh", Blastcircle5)
BlastShape5.MeshType = "Sphere"
BlastShape5.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle5.CFrame = LightOfDeath.CFrame

shockwav = Instance.new("Part", Torso)
shockwav.Size = Vector3.new(1, 1, 1)
shockwav.Transparency = 0
shockwav.BrickColor = TheColor
shockwav.Material = "Neon"
shockwav.Anchored = true
shockwav.CanCollide = false
shockwav.CFrame = LightOfDeath.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
removeuseless:AddItem(shockwav,10)
dea = Instance.new("SpecialMesh", shockwav) 
dea.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav.CFrame = LightOfDeath.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
shockwav2 = Instance.new("Part", Torso)
shockwav2.Size = Vector3.new(1, 1, 1)
shockwav2.Transparency = 0
shockwav2.BrickColor = TheColor
shockwav2.Material = "Neon"
shockwav2.Anchored = true
shockwav2.CanCollide = false
shockwav2.CFrame = LightOfDeath.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
removeuseless:AddItem(shockwav2,10)
dea2 = Instance.new("SpecialMesh", shockwav2) 
dea2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea2.Scale = Vector3.new(0.1, 0.4, 0.1)
shockwav2.CFrame = LightOfDeath.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
local Hit = damagealll(150,LightOfDeath.Position)		
for _,v in pairs(Hit) do
local velo2 = Instance.new("BodyVelocity", v)
velo2.MaxForce = Vector3.new(999999, 999999, 999999)
removeuseless:AddItem(velo2,2)
if absoluteannihilation then
v:Remove()
else			
v:BreakJoints()
end
end
opopo = coroutine.wrap(function()
for i = 1, 200 do
shockwav2.BrickColor = TheCore.BrickColor
shockwav.BrickColor = TheCore.BrickColor
Blastcircle5.BrickColor = TheCore.BrickColor
Blastcircle4.BrickColor = TheCore.BrickColor
Blastcircle3.BrickColor = TheCore.BrickColor
Blastcircle2.BrickColor = TheCore.BrickColor
Blastcircle.BrickColor = TheCore.BrickColor
blastwave5.BrickColor = TheCore.BrickColor
blastwave4.BrickColor = TheCore.BrickColor
blastwave3.BrickColor = TheCore.BrickColor
blastwave2.BrickColor = TheCore.BrickColor
blastwave.BrickColor = TheCore.BrickColor
dea.Scale = dea.Scale + Vector3.new(10,10,10)
shockwav.Transparency = shockwav.Transparency + 0.02
dea2.Scale = dea2.Scale + Vector3.new(5,5,5)
shockwav2.Transparency = shockwav2.Transparency + 0.010
DDTblastwave.Scale = DDTblastwave.Scale + Vector3.new(5, .5, 5)
DDTblastwave2.Scale = DDTblastwave2.Scale + Vector3.new(12, 12, 12)
DDTblastwave3.Scale = DDTblastwave3.Scale + Vector3.new(4, .5, 4)
DDTblastwave4.Scale = DDTblastwave4.Scale + Vector3.new(6, .5, 6)
DDTblastwave5.Scale = DDTblastwave5.Scale + Vector3.new(2, .1, 2)
blastwave.Transparency = blastwave.Transparency + .01
blastwave2.Transparency = blastwave2.Transparency + .03
blastwave3.Transparency = blastwave3.Transparency + .02
blastwave4.Transparency = blastwave4.Transparency + .015
blastwave5.Transparency = blastwave5.Transparency + .01
BlastShape.Scale = BlastShape.Scale + Vector3.new(1,1,1)
BlastShape2.Scale = BlastShape2.Scale + Vector3.new(1.4,1.4,1.4)
BlastShape3.Scale = BlastShape3.Scale + Vector3.new(1.1,1.1,1.1)
BlastShape4.Scale = BlastShape4.Scale + Vector3.new(1.05,1.05,1.05)
Blastcircle.Transparency = Blastcircle.Transparency + .01
Blastcircle2.Transparency = Blastcircle2.Transparency + .02
Blastcircle3.Transparency = Blastcircle3.Transparency + .012
Blastcircle4.Transparency = Blastcircle4.Transparency + .015
Blastcircle5.Transparency = Blastcircle5.Transparency + 0.01
BlastShape5.Scale = BlastShape5.Scale + Vector3.new(1.5,1.5,1.5)
wait()
end
end)
opopo()
waff = coroutine.wrap(function()
for i = 1, 100 do
LightOfDeath.Transparency = LightOfDeath.Transparency + 0.03
BallOfDeath.Transparency =  BallOfDeath.Transparency + 0.03
TheEndTimeWave2 = Instance.new("Part", Torso)
TheEndTimeWave2.Size = Vector3.new(1, 1, 1)
TheEndTimeWave2.Transparency = 0.4
TheEndTimeWave2.BrickColor = TheCore.BrickColor
TheEndTimeWave2.Material = "Neon"
TheEndTimeWave2.Anchored = true
TheEndTimeWave2.CanCollide = false
TheEndTimeWave2.CFrame = LightOfDeath.CFrame * CFrame.Angles(math.random(1, 100),math.random(1, 100),math.random(1, 100))
DDT2 = Instance.new("SpecialMesh", TheEndTimeWave2) 
DDT2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDT2.Scale = Vector3.new(1, 1, 1)
removeuseless:AddItem(TheEndTimeWave2,3)
table.insert(th4,TheEndTimeWave2)
table.insert(ExtremeM,DDT2)
EnddOrb2 = Instance.new("Part", Torso)
EnddOrb2.Size = Vector3.new(0.5, 0.5, 0.5)
EnddOrb2.Material = "Neon"
EnddOrb2.BrickColor = TheColor
EnddOrb2.Transparency = 0
EnddOrb2.Anchored = true
EnddOrb2.CanCollide = false
EnddOrbMESH2 = Instance.new("SpecialMesh", EnddOrb2)
EnddOrbMESH2.MeshType = "Sphere"
EnddOrbMESH2.Scale = Vector3.new(2,2,2)
EnddOrb2.CFrame = LightOfDeath.CFrame * CFrame.new(0, 0, 0)
removeuseless:AddItem(EnddOrb2,2)
table.insert(ExtremeM,EnddOrbMESH2)
table.insert(SlowlyFade,EnddOrb2)
TheEndTimeWave2.BrickColor = TheCore.BrickColor
EnddOrb2.BrickColor = TheCore.BrickColor 
wait()
end
end)
waff()
shockingshock = coroutine.wrap(function()
for i = 1, 50 do
shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(1, 1, 1)
shockwave3.Transparency = 0
shockwave3.BrickColor = TheCore.BrickColor
shockwave3.Anchored = true
shockwave3.CanCollide = false
shockwave3.CFrame = LightOfDeath.CFrame * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(-90))
sh3 = Instance.new("SpecialMesh", shockwave3) 
sh3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh3.Scale = Vector3.new(15, 0, 15)
removeuseless:AddItem(shockwave3,3)
table.insert(SlowlyFade,shockwave3)
table.insert(ExtremeM2,sh3)
wait(.1)
end
end)
shockingshock()
dmgcollateral = coroutine.wrap(function()
for i = 1, 85 do
local Hit2 = damagealll(90,LightOfDeath.Position)
for _,v in pairs(Hit2) do
local velo2 = Instance.new("BodyVelocity", v)
velo2.MaxForce = Vector3.new(999999, 999999, 999999)
removeuseless:AddItem(velo2,2)				
v:BreakJoints()
wait()
end
end
end)
dmgcollateral()
rays:Remove()
rays2:Remove()
rays3:Remove()
rays4:Remove()
rays5:Remove()
rays6:Remove()
wait(5)
doombounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='r' then
if debounce then return end
debounce = true
attacking = true
tr1.Enabled = true
gpf = true
hum.WalkSpeed = 0
for i = 1, 3 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,3,0), .4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,-.2) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,-.2) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.8)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
wait()
end
quickcour2 = coroutine.wrap(function()
while gpf do
local Hit = damagealll(8,Torso.Position)	
for _,v in pairs(Hit) do
local velo2 = Instance.new("BodyVelocity", v)
velo2.MaxForce = Vector3.new(999999, 999999, 999999)
removeuseless:AddItem(velo2,2)
if absoluteannihilation then
v:BreakJoints()
else			
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(15,30))
vsound = Instance.new("Sound",v:FindFirstChildOfClass("Humanoid").Torso)
vsound.SoundId = "rbxassetid://944772014"
vsound.Volume = 3
vsound:Play()
removeuseless:AddItem(vsound,5)
wait(.1)
end
end
wait()
end
end)
quickcour2()
socnot = coroutine.wrap(function()
for i = 1, 6 do
lunge:Play()
wait(.1)
end
end)
socnot()
local fly = Instance.new("BodyVelocity", Torso)
fly.MaxForce = Vector3.new(999999, 999999, 999999)
fly.Velocity = Root.CFrame.lookVector * 90
Torso.CFrame = Root.CFrame * CFrame.new(0,0,-.5)
t = 0
for i = 1, 20 do
leftarmeffect = Instance.new("Part", Torso)
leftarmeffect.BrickColor = TheColor
leftarmeffect.Size = Vector3.new(1.001, 2.001, 1.001)
leftarmeffect.Material = "Neon"
leftarmeffect.Anchored = true
leftarmeffect.CanCollide = false
leftarmeffect.CFrame = LeftArm.CFrame
table.insert(SlowlyFade,leftarmeffect)
removeuseless:AddItem(leftarmeffect,2)
rightarmeffect = Instance.new("Part", Torso)
rightarmeffect.BrickColor = TheColor
rightarmeffect.Size = Vector3.new(1.001, 2.001, 1.001)
rightarmeffect.Material = "Neon"
rightarmeffect.Anchored = true
rightarmeffect.CanCollide = false
rightarmeffect.CFrame = RightArm.CFrame
table.insert(SlowlyFade,rightarmeffect)
removeuseless:AddItem(rightarmeffect,2)
leftlegeffect = Instance.new("Part", Torso)
leftlegeffect.BrickColor = BrickColor.new("Really black")
leftlegeffect.Size = Vector3.new(1.001, 2.001, 1.001)
leftlegeffect.Material = "Neon"
leftlegeffect.Anchored = true
leftlegeffect.CanCollide = false
leftlegeffect.CFrame = LeftLeg.CFrame
table.insert(SlowlyFade,leftlegeffect)
removeuseless:AddItem(leftlegeffect,2)
rightlegeffect = Instance.new("Part", Torso)
rightlegeffect.BrickColor = BrickColor.new("Really black")
rightlegeffect.Size = Vector3.new(1.001, 2.001, 1.001)
rightlegeffect.Material = "Neon"
rightlegeffect.Anchored = true
rightlegeffect.CanCollide = false
rightlegeffect.CFrame = RightLeg.CFrame
table.insert(SlowlyFade,rightlegeffect)
removeuseless:AddItem(rightlegeffect,2)
t = t - 60
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 3, 0) * CFrame.Angles(math.rad(t), math.rad(0), math.rad(0)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(40),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(-40),math.rad(0)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
wait()
end
fly:Remove()
debounce = false
damagedebounce = false
attacking = false
gpf = false
tr1.Enabled = false
hum.WalkSpeed = 18
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='k' then
if debounce then return end
debounce = true
attacking = true
for i = 1, 6 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, .5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.4, 1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-32)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.6)
wait()
end
htbox = Instance.new("Part", LeftLeg)
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(1.001,3,1.001)
htboxweld = weldBetween(htbox,LeftLeg)
htboxweld.C0 = CFrame.new(0,0,0)
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
else
Slachtoffer:TakeDamage(math.random(7,11))
mostrandom = mostrandomsoundtable[math.random(1,#mostrandomsoundtable)]
hitsound = Instance.new("Sound", Slachtoffer.Torso)
hitsound.SoundId = "rbxassetid://"..mostrandom
hitsound.Volume = 4
hitsound:Play()
removeuseless:AddItem(hitsound,4)
end
end
end)
for i = 1, 6 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, .5) * CFrame.Angles(math.rad(36), math.rad(0), math.rad(0)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, -.5) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8, 1.8, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-72)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.6)
wait()
end
attacking = false
debounce = false
damagedebounce = false
htbox:Remove()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='j' then
if debounce then return end
debounce = true
attacking = true
step:Play()
hum.WalkSpeed = 0
for i = 1, 6 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-40), math.rad(2)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, .3) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(7), math.rad(0)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(10), math.rad(0)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.4)
wait()
end
local shockwefe = coroutine.wrap(function()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(5, 5, 5)
shockwave.Transparency = 0
shockwave.BrickColor = TheColor
shockwave.Anchored = true
shockwave.CanCollide = false
shockwave.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh1 = Instance.new("SpecialMesh", shockwave) 
sh1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh1.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave,2)
for i = 1, 100 do
sh1.Scale = sh1.Scale + Vector3.new(3,3,0)
shockwave.Transparency = shockwave.Transparency + 0.1
wait()
end
end)
shockwefe()
for i = 1, 6 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-40), math.rad(2)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 1.2, .3) * CFrame.Angles(math.rad(-90), math.rad(30), math.rad(0)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-80), math.rad(30), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(10), math.rad(0)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.6)
wait()
end
energblast1 = Instance.new("Part", Torso)
energblast1.BrickColor = TheColor
energblast1.Anchored = true
energblast1.Shape = 0
energblast1.Material = "Neon"
energblast1.CanCollide = false
energblast1.Size = Vector3.new(1,1,1)
energblast1.Transparency = 0
energblast1.CFrame = Root.CFrame
removeuseless:AddItem(energblast1,2)
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(5, 5, 5)
shockwave2.Transparency = 0
shockwave2.BrickColor = TheColor
shockwave2.Anchored = true
shockwave2.CanCollide = false
shockwave2.CFrame = energblast1.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh2 = Instance.new("SpecialMesh", shockwave2) 
sh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh2.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave2,4)
shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(5, 5, 5)
shockwave3.Transparency = 0
shockwave3.BrickColor = TheColor
shockwave3.Anchored = true
shockwave3.CanCollide = false
shockwave3.CFrame = energblast1.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
sh3 = Instance.new("SpecialMesh", shockwave3) 
sh3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh3.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave3,4)
magicsound = Instance.new("Sound", energblast1)
magicsound.SoundId = "rbxassetid://750094966"
magicsound.Volume = 6
magicsound:Play()
soundcoroutine = coroutine.wrap(function()
for i = 1, 100 do
magicsound.Volume = magicsound.Volume - 0.05
wait()
end
end)
soundcoroutine()
removeuseless:AddItem(magicsound,5)
local Hit = damagealll(22,energblast1.Position)		
for _,v in pairs(Hit) do
removeuseless:AddItem(velo2,1)
if absoluteannihilation then
v:BreakJoints()
else				
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(28,40))
end
end
local cc = coroutine.wrap(function()
for i = 1, 60 do
energblast1.Size = energblast1.Size + Vector3.new(5,5,5)
energblast1.Transparency = energblast1.Transparency + 0.1
sh2.Scale = sh2.Scale + Vector3.new(4,4,0)
shockwave2.Transparency = shockwave2.Transparency + 0.06
sh3.Scale = sh3.Scale + Vector3.new(5,2,5)
shockwave3.Transparency = shockwave3.Transparency + 0.07
wait()
end
end)
cc()
quicklerp = coroutine.wrap(function()
for i = 1, 6 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-40), math.rad(2)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(-40),math.rad(0)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-80), math.rad(-50), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.6)
wait()
end
end)
quicklerp()
cc2 = coroutine.wrap(function()
local BV = Instance.new("BodyVelocity", Root)
BV.maxForce = Vector3.new(0,20000,0)
BV.P = 1000
BV.velocity = Vector3.new(0,100,0)
wait(1)
BV:Remove()
end)
cc2()
cc3 = coroutine.wrap(function()
t = 0
flipsound = Instance.new("Sound", Torso)
flipsound.SoundId = "rbxassetid://470532887"
flipsound.Looped = true
flipsound.Volume = 2
flipsound.Pitch = 1.3
flipsound:Play()
hum.WalkSpeed = 75
for i = 1, 60 do
t = t + 40
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(t), math.rad(0), math.rad(0)), 0.6)
wait()
end
for i = 1, 10 do
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
wait()
end
end)
cc3()
for i = 1, 70 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
hum.WalkSpeed = 0
landingsound:Play()
flipsound:Remove()
local shockwefe2 = coroutine.wrap(function()
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(5, 5, 5)
shockwave2.Transparency = 0
shockwave2.BrickColor = TheColor
shockwave2.Anchored = true
shockwave2.CanCollide = false
shockwave2.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh2 = Instance.new("SpecialMesh", shockwave2) 
sh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh2.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave2,1)
for i = 1, 100 do
sh2.Scale = sh2.Scale + Vector3.new(2,2,0)
shockwave2.Transparency = shockwave2.Transparency + 0.1
wait()
end
end)
shockwefe2()
for i = 1, 20 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-5), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(-10), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
wait()
end
hum.WalkSpeed = 18
debounce = false
attacking = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='p' then
if debounce then return end
debounce = true
attacking = true
tr1.Enabled = true
for i = 1, 5 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5, 0) * CFrame.Angles(math.rad(-35), math.rad(20), math.rad(0)), .6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, .1, 0.1) * CFrame.Angles(math.rad(2), math.rad(15), math.rad(-8)), .6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, .25, -.4) * CFrame.Angles(math.rad(80), math.rad(0), math.rad(0)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2, .5) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55, .15) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-2)), .6)
wait()
end
local shockwefe2 = coroutine.wrap(function()
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(5, 5, 5)
shockwave2.Transparency = 0
shockwave2.BrickColor = TheColor
shockwave2.Anchored = true
shockwave2.CanCollide = false
shockwave2.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh2 = Instance.new("SpecialMesh", shockwave2) 
sh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh2.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave2,1)
shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(1, 1, 1)
shockwave3.Transparency = 0
shockwave3.BrickColor = TheColor
shockwave3.Anchored = true
shockwave3.CanCollide = false
shockwave3.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
sh3 = Instance.new("SpecialMesh", shockwave3) 
sh3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh3.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave3,4)
for i = 1, 100 do
sh2.Scale = sh2.Scale + Vector3.new(2,2,0)
shockwave2.Transparency = shockwave2.Transparency + 0.1
sh3.Scale = sh3.Scale + Vector3.new(2.5,.2,2.5)
shockwave3.Transparency = shockwave3.Transparency + 0.1
wait()
end
end)
shockwefe2()
hohoho = coroutine.wrap(function()
for i = 1, 10 do
rings = Instance.new("Part", Torso)
rings.Size = Vector3.new(5, 5, 5)
rings.Transparency = 0.5
rings.BrickColor = TheColor
rings.Anchored = true
rings.CanCollide = false
rings.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
ringsh = Instance.new("SpecialMesh", rings) 
ringsh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
ringsh.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(rings,2)
table.insert(Repeater,ringsh)
table.insert(nonmeshRepeater2,rings)
wait(.1)
end
end)
hohoho()
local BV = Instance.new("BodyVelocity", Root)
BV.maxForce = Vector3.new(0,20000,0)
BV.P = 1000
BV.velocity = Vector3.new(0,50,0)
quickcour = coroutine.wrap(function()
t = 0
for i = 1, 25 do
t  = t + 1
Root.CFrame = Root.CFrame * CFrame.Angles(math.rad(0),math.rad(0 + 50),0)
wait()
end
BV:Remove()
Root.CFrame = Root.CFrame * CFrame.Angles(math.rad(0),math.rad(0),0)
end)
quickcour()
local Hit = damagealll(5,Root.Position)		
for _,v in pairs(Hit) do
if absoluteannihilation then
v:BreakJoints()
else				
v:FindFirstChildOfClass("Humanoid"):TakeDamage(30,45)
end
end
quickcour2 = coroutine.wrap(function()
jumpsound = Instance.new("Sound", Torso)
jumpsound.Volume = 10
jumpsound.SoundId = "rbxassetid://1574842373"
jumpsound:Play()
removeuseless:AddItem(jumpsound,3)
for i = 1, 9 do
lunge:Play()
wait(.1)
end
lunge2:Play()
end)
quickcour2()
for i = 1, 25 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, .1, 0.1) * CFrame.Angles(math.rad(2), math.rad(15), math.rad(-8)), .6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, 1, -.1) * CFrame.Angles(math.rad(190), math.rad(0), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
wait()
end
attacking = false
debounce = false
tr1.Enabled = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='e' then
if debounce then return end
debounce = true
attacking = true
continue = true
hum.WalkSpeed = 0
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
lmon8 = lmon7[math.random(1,#lmon7)]
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = ""..lmon8
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
billboardcour = coroutine.wrap(function()
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency - 0.1
b2.TextSize = b2.TextSize + 3
wait()
end
wait(1)
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency + 0.1
b2.TextSize = b2.TextSize - 3
wait()
end
b1:Remove()
end)
billboardcour()
for i = 1, 10 do
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.45,1.3,0) * CFrame.Angles(math.rad(180),math.rad(1),math.rad(5)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 1.8, .2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 1.8, 0.2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(3)), 0.5)
wait()
end
lilball = Instance.new("Part", RightArm)
lilball.Material = "Neon"
lilball.CanCollide = false
lilball.Anchored = true
lilball.Transparency = 1
lilball.BrickColor = TheColor
lilball.Size = Vector3.new(.1,.1,.1)
lilballShape = Instance.new("SpecialMesh", lilball)
lilballShape.MeshType = "Sphere"
lilballShape.Scale = Vector3.new(10,10,10)
lilball.CFrame = RightArm.CFrame * CFrame.new(0,-1.5,0)
removeuseless:AddItem(lilball,5)
qucicour = coroutine.wrap(function()
for i = 1, 10 do
lilball.Transparency = lilball.Transparency - 0.05
wait()
end
end)
qucicour()
SwordPortal = Instance.new("Part", Torso)
SwordPortal.Size = Vector3.new(0.5, 0.5, 0.5)
SwordPortal.Material = "Neon"
SwordPortal.BrickColor = TheColor
SwordPortal.Transparency = 0
SwordPortal.Anchored = true
SwordPortal.CanCollide = false
SwordPortalMESH = Instance.new("SpecialMesh", SwordPortal)
SwordPortalMESH.MeshType = "Cylinder"
SwordPortalMESH.Scale = Vector3.new(.2,0.01,0.01)
SwordPortal.CFrame = CFrame.new(mouse.Hit.p) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
swordportalsound = Instance.new("Sound", SwordPortal)
swordportalsound.SoundId = "rbxassetid://159296220"
swordportalsound.Volume = 5
swordportalsound:Play()
removeuseless:AddItem(swordportalsound,3)
sizeincreasor = coroutine.wrap(function()
while continue do
SwordPortalMESH.Scale = SwordPortalMESH.Scale + Vector3.new(0,8,8)
wait()
end
end)
sizeincreasor()
for i = 1, 20 do
wait()
end
continue = false
local openshocks = coroutine.wrap(function()
for i = 1, 5 do
openshock2 = Instance.new("Part", Torso)
openshock2.Size = Vector3.new(1, 1, 1)
openshock2.Transparency = 0
openshock2.BrickColor = TheColor
openshock2.Material = "Neon"
openshock2.Anchored = true
openshock2.CanCollide = false
openshock2.CFrame = CFrame.new(SwordPortal.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
DDTopenshock2 = Instance.new("SpecialMesh", openshock2) 
DDTopenshock2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTopenshock2.Scale = Vector3.new(1, 2, 1)
removeuseless:AddItem(openshock2,2)
table.insert(ExtremeM,DDTopenshock2)
table.insert(SlowlyFade,openshock2)
openshock = Instance.new("Part", Torso)
openshock.Size = Vector3.new(1, 1, 1)
openshock.Transparency = 0
openshock.BrickColor = TheColor
openshock.Material = "Neon"
openshock.Anchored = true
openshock.CanCollide = false
openshock.CFrame = CFrame.new(SwordPortal.Position) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
DDTopenshock = Instance.new("SpecialMesh", openshock) 
DDTopenshock.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDTopenshock.Scale = Vector3.new(1, 2, 1)
removeuseless:AddItem(openshock,2)
table.insert(ExtremeM,DDTopenshock)
table.insert(SlowlyFade,openshock)
wait(.05)
end
end)
openshocks()
bigopenshock = coroutine.wrap(function()
bigopenshock = Instance.new("Part", Torso)
bigopenshock.Size = Vector3.new(1, 1, 1)
bigopenshock.Transparency = 0
bigopenshock.BrickColor = TheColor
bigopenshock.Material = "Neon"
bigopenshock.Anchored = true
bigopenshock.CanCollide = false
bigopenshock.CFrame = CFrame.new(SwordPortal.Position) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
DDTbigopenshock = Instance.new("SpecialMesh", bigopenshock) 
DDTbigopenshock.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDTbigopenshock.Scale = Vector3.new(1, 2, 1)
removeuseless:AddItem(bigopenshock,2)
table.insert(m3,DDTbigopenshock)
table.insert(SlowlyFade,bigopenshock)
end)
removeuseless:AddItem(swordoutofportal,6)
swordoutofportal = Instance.new("Sound", SwordPortal)
swordoutofportal.SoundId = "rbxassetid://1201801124"
swordoutofportal.Volume = 5
swordoutofportal:Play()
GiantSword = Instance.new("Part", Torso)
GiantSword.Size = Vector3.new(0.5, 0.5, 0.5)
GiantSword.Material = "Neon"
GiantSword.BrickColor = TheColor
GiantSword.Transparency = .2
GiantSword.Anchored = true
GiantSword.CanCollide = false
GiantSwordMESH = Instance.new("SpecialMesh", GiantSword)
GiantSwordMESH.Scale = Vector3.new(15,15,15)
GiantSwordMESH.MeshId = "rbxassetid://94840342"
GiantSword.CFrame = SwordPortal.CFrame * CFrame.new(-50,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90))
move = coroutine.wrap(function()
local Hit = damagealll(35,SwordPortal.Position)		
for _,v in pairs(Hit) do
if absoluteannihilation then
v:BreakJoints()
else			
v:FindFirstChildOfClass("Humanoid"):TakeDamage(math.random(30,40))
end
end
for i = 1, 40 do
SwordPortal.Transparency = SwordPortal.Transparency + 0.05
GiantSword.CFrame = GiantSword.CFrame * CFrame.new(0,10,0) * CFrame.Angles(math.rad(0),math.rad(0 + 20),math.rad(0))
wait()
end
end)
move()
mvcm = coroutine.wrap(function()
wait(1)
SwordPortal:Remove()
debounce = false
attacking = false
hum.WalkSpeed = 18
end)
mvcm()
g1:Remove()
for i = 1, 30 do 
lilball.Transparency = lilball.Transparency + 0.05
GiantSword.Transparency = GiantSword.Transparency + 0.03
GiantSword.CFrame = GiantSword.CFrame * CFrame.new(0,10,0) * CFrame.Angles(math.rad(0),math.rad(0 + 20),math.rad(0))
wait()
end
GiantSword:Remove()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='g' then
if debounce then return end
debounce = true
attacking = true
damagedebounce = false
lmon4 = lmon3[math.random(1,#lmon3)]
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = ""..lmon4
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
billboardcour = coroutine.wrap(function()
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency - 0.1
b2.TextSize = b2.TextSize + 3
wait()
end
wait(2)
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency + 0.1
b2.TextSize = b2.TextSize - 3
wait()
end
b1:Remove()
end)
billboardcour()
quickcour = coroutine.wrap(function()
spawnsound = Instance.new("Sound", RightArm)
spawnsound.SoundId = "rbxassetid://159332197"
spawnsound.Volume = 5
spawnsound:Play()
removeuseless:AddItem(spawnsound,4)
Scythe = Instance.new("Part", Torso)
Scythe.Size = Vector3.new(0.5, 0.5, 0.5)
Scythe.Material = "Neon"
Scythe.BrickColor = TheColor
Scythe.Transparency = 1
Scythe.CanCollide = false
ScytheMESH = Instance.new("SpecialMesh", Scythe)
ScytheMESH.Scale = Vector3.new(2,2,2)
ScytheMESH.MeshId = "rbxassetid://218497396"
ScytheWeld = weldBetween(Scythe,RightArm)
ScytheWeld.C0 = CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-100),math.rad(180),math.rad(0))
for i = 1, 20 do
Scythe.Transparency = Scythe.Transparency - 0.04
wait()
end
end)
quickcour()
hum.WalkSpeed = 0
for i = 1, 25 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
wait()
end
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
hum.WalkSpeed = 14
for i = 1, 8 do
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
ScytheWeld.C0 = ScytheWeld.C0:lerp(CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-140),math.rad(90),math.rad(0)), .5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0,.5) * CFrame.Angles(math.rad(-110),math.rad(-40),math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
htbox = Instance.new("Part", Scythe)
htbox.CFrame = Scythe.CFrame
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(.40,7,3)
htboxweld = weldBetween(htbox,Scythe)
A = Instance.new("Attachment", htbox)
A.Position = Vector3.new(0,-3.2,0)
A.Name = "A"
B = Instance.new("Attachment", htbox)
B.Position = Vector3.new(0,3.2,0)
B.Name = "B"
tr11 = Instance.new("Trail", Scythe)
tr11.Attachment0 = A
tr11.Attachment1 = B
tr11.Enabled = true
tr11.Lifetime = .8
tr11.TextureMode = "Static"
tr11.LightInfluence = 0
tr11.Color = ColorSequence.new(BrickColor.new"Lime green".Color,BrickColor.new"Really black".Color)
tr11.Transparency = NumberSequence.new(0, 1)
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
quickcour = coroutine.wrap(function()
Slachtoffer.WalkSpeed = 6
wait(1)
Slachtoffer.WalkSpeed = 16
end)
quickcour()
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
else
Slachtoffer:TakeDamage(math.random(35,40))
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
end
end
end)
lunge:Play()
t = 0
for i = 1, 8 do
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
ScytheWeld.C0 = ScytheWeld.C0:lerp(CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-150),math.rad(180),math.rad(0)), .6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), .6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55,.15) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2)), .6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.8, .2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(2)), .6)
wait()
end
damagedebounce = false
hum.WalkSpeed = 8
t = 0
for i = 1, 8 do
t = t + 50
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
ScytheWeld.C0 = ScytheWeld.C0:lerp(CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-150),math.rad(180),math.rad(0 + t)), .6)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.41,1.3,0) * CFrame.Angles(math.rad(181),math.rad(5),math.rad(10)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(40), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(12), math.rad(3), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(-5), math.rad(7), math.rad(3)), 0.5)
wait()
end
htbox:Remove()
htbox = Instance.new("Part", Scythe)
htbox.CFrame = Scythe.CFrame
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(.40,7,3)
htboxweld = weldBetween(htbox,Scythe)
A = Instance.new("Attachment", htbox)
A.Position = Vector3.new(0,-3.2,0)
A.Name = "A"
B = Instance.new("Attachment", htbox)
B.Position = Vector3.new(0,3.2,0)
B.Name = "B"
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
quickcour = coroutine.wrap(function()
Slachtoffer.WalkSpeed = 6
wait(1)
Slachtoffer.WalkSpeed = 16
end)
quickcour()
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
else
Slachtoffer:TakeDamage(math.random(25,68))
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
end
end
end)
lunge3:Play()
for i = 1, 15 do
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1, 0.7, 1) * CFrame.Angles(math.rad(-40), math.rad(48), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.6)
wait()
end
htbox:Remove()
hum.WalkSpeed = 18
tr11.Enabled = false
for i = 1, 10 do
Scythe.Transparency = Scythe.Transparency + 0.1
wait()
end
tr11:Remove()
Scythe:Remove()
attacking = false
debounce = false
damagedebounce = false
g1:Remove()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='y' then
if debounce then return end
debounce = true
attacking = true
bbno = true
jjo = true
borb = true
hum.WalkSpeed = 0
energyburst:Play()
energyburst2:Play()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
lmon2 = lmon[math.random(1,#lmon)]
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = ""..lmon2
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
billboardcour = coroutine.wrap(function()
for i = 1, 15 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency - 0.05
b2.TextSize = b2.TextSize + 2
wait()
end
wait(2)
for i = 1, 15 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency + 0.05
b2.TextSize = b2.TextSize - 2
wait()
end
b1:Remove()
end)
billboardcour()
TheWind = Instance.new("Part", Torso)
TheWind.Size = Vector3.new(0.5, 0.5, 0.5)
TheWind.Material = "Neon"
TheWind.BrickColor = TheColor
TheWind.Transparency = 1
TheWind.CanCollide = false
TheWindMESH = Instance.new("SpecialMesh", TheWind)
TheWindMESH.Scale = Vector3.new(4,4,4)
TheWindMESH.MeshId = "rbxassetid://168892432"
TheWindWeld = weldBetween(TheWind,Root)
TheWindWeld.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
TheWind2 = Instance.new("Part", Torso)
TheWind2.Size = Vector3.new(0.5, 0.5, 0.5)
TheWind2.Material = "Neon"
TheWind2.BrickColor = TheColor
TheWind2.Transparency = 1
TheWind2.CanCollide = false
TheWindMESH2 = Instance.new("SpecialMesh", TheWind2)
TheWindMESH2.Scale = Vector3.new(6,6,6)
TheWindMESH2.MeshId = "rbxassetid://168892432"
TheWindWeld2 = weldBetween(TheWind2,Root)
TheWindWeld2.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
TheWind3 = Instance.new("Part", Torso)
TheWind3.Size = Vector3.new(0.5, 0.5, 0.5)
TheWind3.Material = "Neon"
TheWind3.BrickColor = TheColor
TheWind3.Transparency = 1
TheWind3.CanCollide = false
TheWindMESH3 = Instance.new("SpecialMesh", TheWind3)
TheWindMESH3.Scale = Vector3.new(2,2,2)
TheWindMESH3.MeshId = "rbxassetid://168892432"
TheWindWeld3 = weldBetween(TheWind3,Root)
TheWindWeld3.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
quickcour = coroutine.wrap(function()
for i = 1, 25 do
TheWind.Transparency = TheWind.Transparency - 0.01
TheWind2.Transparency = TheWind2.Transparency - 0.005
TheWind3.Transparency = TheWind3.Transparency - 0.012
wait()
end
end)
quickcour()
quickcour2 = coroutine.wrap(function()
while jjo do
TheWindWeld.C0 = TheWindWeld.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0-25),0)
TheWindWeld2.C0 = TheWindWeld2.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0+25),0)
TheWindWeld3.C0 = TheWindWeld3.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0+25),0)
wait()
end
end)
quickcour2()
local shockwefe2 = coroutine.wrap(function()
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(5, 5, 5)
shockwave2.Transparency = 0
shockwave2.BrickColor = TheColor
shockwave2.Anchored = true
shockwave2.CanCollide = false
shockwave2.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh2 = Instance.new("SpecialMesh", shockwave2) 
sh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh2.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave2,2)
shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(1, 1, 1)
shockwave3.Transparency = 0
shockwave3.BrickColor = TheColor
shockwave3.Anchored = true
shockwave3.CanCollide = false
shockwave3.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
sh3 = Instance.new("SpecialMesh", shockwave3) 
sh3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh3.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave3,4)
for i = 1, 100 do
sh2.Scale = sh2.Scale + Vector3.new(2,2,0)
shockwave2.Transparency = shockwave2.Transparency + 0.1
sh3.Scale = sh3.Scale + Vector3.new(2.5,.2,2.5)
shockwave3.Transparency = shockwave3.Transparency + 0.1
wait()
end
end)
shockwefe2()
for i = 1, 5 do
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0,0,0),.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(-8)), .6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.9, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-2)), .6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2)), .6)
wait()
end
courcour = coroutine.wrap(function()
while bbno do
sho3 = Instance.new("Part", Torso)
sho3.Size = Vector3.new(1, 1, 1)
sho3.Transparency = 0
sho3.BrickColor = TheColor
sho3.Anchored = true
sho3.CanCollide = false
sho3.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
shot3 = Instance.new("SpecialMesh", sho3) 
shot3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
shot3.Scale = Vector3.new(0, 0, 0)
table.insert(th5,shot3)
table.insert(nonmeshRepeater2,sho3)
removeuseless:AddItem(shot3,2)
wait(.1)
end
end)
courcour()
charge:Play()
for i = 1, 6 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0,math.rad(50),0),.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.1,1.3,1.1) * CFrame.Angles(math.rad(180),math.rad(-50),math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.9, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-2)), .6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2)), .6)
wait()
end
Blaster = Instance.new("Part", RightArm)
Blaster.Material = "Neon"
Blaster.Anchored = true
Blaster.CanCollide = false
Blaster.BrickColor = TheColor
Blaster.Size = Vector3.new(.1,.1,.1)
BlasterShape = Instance.new("SpecialMesh", Blaster)
BlasterShape.MeshType = "Sphere"
BlasterShape.Scale = Vector3.new(.1,.1,.1)
Blaster.CFrame = RightArm.CFrame * CFrame.new(0, -1.5, 0)
sou = coroutine.wrap(function()
sm = Instance.new("Sound", Blaster)
sm.SoundId = "rbxassetid://907530407"
sm.Looped = true
sm.Volume = 0
sm.Pitch = .8
sm:Play()
for i = 1, 50 do
sm.Volume = sm.Volume + .1
wait()
end
end)
sou()
local EVENMORECIRCLES = coroutine.wrap(function()
for i = 1, 30 do
circlescircles = Instance.new("Part", Torso)
circlescircles.Size = Vector3.new(1, 1, 1)
circlescircles.Transparency = 0.3
circlescircles.BrickColor = TheColor
circlescircles.Material = "Neon"
circlescircles.Anchored = true
circlescircles.CanCollide = false
circlescircles.CFrame = Blaster.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
circlescirclesmesh = Instance.new("SpecialMesh", circlescircles) 
circlescirclesmesh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
circlescirclesmesh.Scale = Vector3.new(15, 15, 15)
removeuseless:AddItem(circlescircles,1.5)
table.insert(nonmeshRepeater2,circlescircles)
table.insert(th2,circlescirclesmesh)
wait(.1)
end
end)
EVENMORECIRCLES()
for i = 1, 30 do
BlasterShape.Scale = BlasterShape.Scale + Vector3.new(.25,.25,.25)
BlasterBall1 = Instance.new("Part", RightArm)
BlasterBall1.Material = "Neon"
BlasterBall1.Anchored = true
BlasterBall1.Transparency = .8
BlasterBall1.CanCollide = false
BlasterBall1.BrickColor = TheColor
BlasterBall1.Size = Vector3.new(.1,.1,.1)
BlasterBall1Shape = Instance.new("SpecialMesh", BlasterBall1)
BlasterBall1Shape.MeshType = "Sphere"
BlasterBall1Shape.Scale = Vector3.new(25,25,25)
BlasterBall1.CFrame = Blaster.CFrame
table.insert(th2,BlasterBall1Shape)
table.insert(nonmeshRepeater2,BlasterBall1)
removeuseless:AddItem(BlasterBall1Shape,4)
wait(.1)
end
for i = 1, 3 do
BlasterShape.Scale = BlasterShape.Scale - Vector3.new(2,2,2)
wait()
end
wait(.5)
sm:Remove()
kiready:Play()
aura:Stop()
for i = 1, 5 do
BlasterShape.Scale = BlasterShape.Scale + Vector3.new(4,4,4)
wait()
end
wait(.3)
bbno = false
boomcour = coroutine.wrap(function()
for i = 1, 10 do
TheWindMESH.Scale = TheWindMESH.Scale + Vector3.new(1,1,1)
TheWindMESH2.Scale = TheWindMESH2.Scale + Vector3.new(1,1,1)
TheWindMESH3.Scale = TheWindMESH3.Scale + Vector3.new(1,1,1)
TheWind.Transparency = TheWind.Transparency + 0.1
TheWind2.Transparency = TheWind2.Transparency + 0.1
TheWind3.Transparency = TheWind3.Transparency + 0.1
wait()
end
TheWind:Remove()
TheWind2:Remove()
TheWind3:Remove()
end)
boomcour()
for i = 1, 10 do
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
Blaster.CFrame = Blaster.CFrame:lerp(RightArm.CFrame * CFrame.new(0,-2,0),.8)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(90)),.4)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15),math.rad(-0),math.rad(0)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0, 2.1, -0.35) * CFrame.Angles(math.rad(180), math.rad(-82), math.rad(75)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.9, 0.2) * CFrame.Angles(math.rad(20), math.rad(1), math.rad(-2)), .4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.9, 0) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(2)), .4)
wait()
end
local shootthemballs = coroutine.wrap(function()
Blaster.Anchored = false
local PB2 = Instance.new("BodyVelocity", Blaster)
PB2.MaxForce = Vector3.new(999999, 999999, 999999)
Blaster.CFrame = CFrame.new(Blaster.Position,mouse.Hit.p)
PB2.Velocity = Blaster.CFrame.lookVector * 80
wait()
end)
dontallow = true
shootthemballs()
timecour = coroutine.wrap(function()
wait(.5)
dontallow = false
end)
timecour()
Blaster.Touched:connect(function(OnHit)
if dontallow then return end
if hitters == true then return end
hitters = true
borb = false
Blaster.Anchored = true
Blaster.Transparency = 1
blastwave = Instance.new("Part", Torso)
blastwave.Size = Vector3.new(1, 1, 1)
blastwave.Transparency = 0
blastwave.BrickColor = TheColor
blastwave.Material = "Neon"
blastwave.Anchored = true
blastwave.CanCollide = false
blastwave.CFrame = CFrame.new(Blaster.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave,10)
Blaster:Remove()
BOOMZOR = Instance.new("Sound", blastwave)
BOOMZOR.Volume = 8
BOOMZOR.SoundId = "rbxassetid://1539349118"
BOOMZOR:Play()
removeuseless:AddItem(BOOMZOR,5)
DDTblastwave = Instance.new("SpecialMesh", blastwave) 
DDTblastwave.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave.Scale = Vector3.new(1, 1, 1)
blastwave2 = Instance.new("Part", Torso)
blastwave2.Size = Vector3.new(1, 1, 1)
blastwave2.Transparency = 0
blastwave2.BrickColor = TheColor
blastwave2.Material = "Neon"
blastwave2.Anchored = true
blastwave2.CanCollide = false
blastwave2.CFrame = CFrame.new(blastwave.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave2,10)
DDTblastwave2 = Instance.new("SpecialMesh", blastwave2) 
DDTblastwave2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave2.Scale = Vector3.new(1, 1, 1)
blastwave3 = Instance.new("Part", Torso)
blastwave3.Size = Vector3.new(1, 1, 1)
blastwave3.Transparency = 0
blastwave3.BrickColor = TheColor
blastwave3.Material = "Neon"
blastwave3.Anchored = true
blastwave3.CanCollide = false
blastwave3.CFrame = CFrame.new(blastwave.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave3,10)
DDTblastwave3 = Instance.new("SpecialMesh", blastwave3) 
DDTblastwave3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave3.Scale = Vector3.new(1, 1, 1)
blastwave4 = Instance.new("Part", Torso)
blastwave4.Size = Vector3.new(1, 1, 1)
blastwave4.Transparency = 0
blastwave4.BrickColor = TheColor
blastwave4.Material = "Neon"
blastwave4.Anchored = true
blastwave4.CanCollide = false
blastwave4.CFrame = CFrame.new(blastwave.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave4,10)
DDTblastwave4 = Instance.new("SpecialMesh", blastwave4) 
DDTblastwave4.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave4.Scale = Vector3.new(1, 1, 1)
blastwave5 = Instance.new("Part", Torso)
blastwave5.Size = Vector3.new(1, 1, 1)
blastwave5.Transparency = 0
blastwave5.BrickColor = TheColor
blastwave5.Material = "Neon"
blastwave5.Anchored = true
blastwave5.CanCollide = false
blastwave5.CFrame = CFrame.new(blastwave.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave5,10)
DDTblastwave5 = Instance.new("SpecialMesh", blastwave5) 
DDTblastwave5.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave5.Scale = Vector3.new(1, 1, 1)
Blastcircle = Instance.new("Part", Torso)
Blastcircle.Material = "Neon"
Blastcircle.Anchored = true
Blastcircle.Transparency = 0
Blastcircle.CanCollide = false
Blastcircle.BrickColor = TheColor
Blastcircle.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle,10)
BlastShape = Instance.new("SpecialMesh", Blastcircle)
BlastShape.MeshType = "Sphere"
BlastShape.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle.CFrame = blastwave.CFrame
Blastcircle2 = Instance.new("Part", Torso)
Blastcircle2.Material = "Neon"
Blastcircle2.Anchored = true
Blastcircle2.Transparency = 0
Blastcircle2.CanCollide = false
Blastcircle2.BrickColor = TheColor
Blastcircle2.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle2,10)
BlastShape2 = Instance.new("SpecialMesh", Blastcircle2)
BlastShape2.MeshType = "Sphere"
BlastShape2.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle2.CFrame = blastwave.CFrame
Blastcircle3 = Instance.new("Part", Torso)
Blastcircle3.Material = "Neon"
Blastcircle3.Anchored = true
Blastcircle3.Transparency = 0
Blastcircle3.CanCollide = false
Blastcircle3.BrickColor = TheColor
Blastcircle3.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle3,10)
BlastShape3 = Instance.new("SpecialMesh", Blastcircle3)
BlastShape3.MeshType = "Sphere"
BlastShape3.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle3.CFrame = blastwave.CFrame
Blastcircle4 = Instance.new("Part", Torso)
Blastcircle4.Material = "Neon"
Blastcircle4.Anchored = true
Blastcircle4.Transparency = 0
Blastcircle4.CanCollide = false
Blastcircle4.BrickColor = TheColor
Blastcircle4.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle4,10)
BlastShape4 = Instance.new("SpecialMesh", Blastcircle4)
BlastShape4.MeshType = "Sphere"
BlastShape4.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle4.CFrame = blastwave.CFrame
Blastcircle5 = Instance.new("Part", Torso)
Blastcircle5.Material = "Neon"
Blastcircle5.Anchored = true
Blastcircle5.Transparency = 0
Blastcircle5.CanCollide = false
Blastcircle5.BrickColor = TheColor
Blastcircle5.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle5,10)
BlastShape5 = Instance.new("SpecialMesh", Blastcircle5)
BlastShape5.MeshType = "Sphere"
BlastShape5.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle5.CFrame = blastwave.CFrame
shockwav = Instance.new("Part", Torso)
shockwav.Size = Vector3.new(1, 1, 1)
shockwav.Transparency = 0
shockwav.BrickColor = TheColor
shockwav.Material = "Neon"
shockwav.Anchored = true
shockwav.CanCollide = false
shockwav.CFrame = blastwave.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
removeuseless:AddItem(shockwav,10)
dea = Instance.new("SpecialMesh", shockwav) 
dea.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav.CFrame = blastwave.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
shockwav2 = Instance.new("Part", Torso)
shockwav2.Size = Vector3.new(1, 1, 1)
shockwav2.Transparency = 0
shockwav2.BrickColor = TheColor
shockwav2.Material = "Neon"
shockwav2.Anchored = true
shockwav2.CanCollide = false
shockwav2.CFrame = blastwave.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
removeuseless:AddItem(shockwav2,10)
dea2 = Instance.new("SpecialMesh", shockwav2) 
dea2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea2.Scale = Vector3.new(0.1, 0.4, 0.1)
shockwav2.CFrame = blastwave.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
local Hit = damagealll(70,blastwave.Position)		
for _,v in pairs(Hit) do
local velo2 = Instance.new("BodyVelocity", v)
velo2.MaxForce = Vector3.new(999999, 999999, 999999)
removeuseless:AddItem(velo2,2)
if absoluteannihilation then
v:BreakJoints()
v:Remove()
else
v:FindFirstChildOfClass("Humanoid"):TakeDamage(77,100)				
end
end
opopo = coroutine.wrap(function()
for i = 1, 200 do
dea.Scale = dea.Scale + Vector3.new(2,1,2)
shockwav.Transparency = shockwav.Transparency + 0.02
dea2.Scale = dea2.Scale + Vector3.new(1,1,1)
shockwav2.Transparency = shockwav2.Transparency + 0.010
DDTblastwave.Scale = DDTblastwave.Scale + Vector3.new(2.5, .2, 2.5)
DDTblastwave2.Scale = DDTblastwave2.Scale + Vector3.new(2, 2, 2)
DDTblastwave3.Scale = DDTblastwave3.Scale + Vector3.new(2, .25, 2)
DDTblastwave4.Scale = DDTblastwave4.Scale + Vector3.new(3, .25, 3)
DDTblastwave5.Scale = DDTblastwave5.Scale + Vector3.new(1, .05, 1)
blastwave.Transparency = blastwave.Transparency + .01
blastwave2.Transparency = blastwave2.Transparency + .03
blastwave3.Transparency = blastwave3.Transparency + .02
blastwave4.Transparency = blastwave4.Transparency + .015
blastwave5.Transparency = blastwave5.Transparency + .01
BlastShape.Scale = BlastShape.Scale + Vector3.new(1,1,1)
BlastShape2.Scale = BlastShape2.Scale + Vector3.new(.5,.5,.5)
BlastShape3.Scale = BlastShape3.Scale + Vector3.new(.6,.6,.6)
BlastShape4.Scale = BlastShape4.Scale + Vector3.new(.4,.4,.4)
Blastcircle.Transparency = Blastcircle.Transparency + .01
Blastcircle2.Transparency = Blastcircle2.Transparency + .02
Blastcircle3.Transparency = Blastcircle3.Transparency + .012
Blastcircle4.Transparency = Blastcircle4.Transparency + .015
Blastcircle5.Transparency = Blastcircle5.Transparency + 0.01
BlastShape5.Scale = BlastShape5.Scale + Vector3.new(.3,.3,.3)
wait()
end
hitters = false
end)
opopo()
end)
kigo:Play()
for i = 1, 6 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(0,math.rad(90),0),.6)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10),math.rad(-0),math.rad(0)),.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(2), math.rad(10), math.rad(-90)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(13), math.rad(9), math.rad(13)), .6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.9, 0) * CFrame.Angles(math.rad(-14), math.rad(6), math.rad(-2)), .6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.9, 0) * CFrame.Angles(math.rad(8), math.rad(12), math.rad(2)), .6)
wait()
end
attacking = false
g1:Remove()
hum.WalkSpeed = 18
local time = coroutine.wrap(function()
for i = 1, 100 do
if borb == false then break end
wait()
end
Blaster:Remove()
hitters = false
attacking = false
debounce = false
end)
time()
while wait() do
if borb == false then break end
wait()
end
attacking = false
debounce = false
jjo = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='h' then
if debounce then return end
debounce = true
attacking = true
step:Play()
hum.WalkSpeed = 0
lmon6 = lmon5[math.random(1,#lmon5)]
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = ""..lmon6
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
billboardcour = coroutine.wrap(function()
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency - 0.1
b2.TextSize = b2.TextSize + 3
wait()
end
wait(1)
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency + 0.1
b2.TextSize = b2.TextSize - 3
wait()
end
b1:Remove()
end)
billboardcour()
Dagga = Instance.new("Part", Torso)
Dagga.Size = Vector3.new(.2, .2, .2)
Dagga.Material = "Neon"
Dagga.BrickColor = TheColor
Dagga.Transparency = 1
Dagga.CanCollide = false
DaggaMESH = Instance.new("SpecialMesh", Dagga)
DaggaMESH.Scale = Vector3.new(.8,.8,.8)
DaggaMESH.MeshId = "rbxassetid://62275962"
DaggaWeld = weldBetween(Dagga,RightArm)
DaggaWeld.C0 = CFrame.new(0,-1.8,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0))
courou = coroutine.wrap(function()
for i = 1, 20 do
Dagga.Transparency = Dagga.Transparency - .05
wait()
end
end)
courou()
for i = 1, 15 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, 0.1, 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(-8)), .3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.9, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-2)), .3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.9, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2)), .3)
wait()
end
for i = 1, 6 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.45,1.3,0) * CFrame.Angles(math.rad(180),math.rad(2),math.rad(6)), 0.6)
wait()
end
Dagga2 = Instance.new("Part", Torso)
Dagga2.Size = Vector3.new(.2, .2, .2)
Dagga2.Material = "Neon"
Dagga2.BrickColor = TheColor
Dagga2.Transparency = 0
Dagga2.CanCollide = false
DaggaMESH2 = Instance.new("SpecialMesh", Dagga2)
DaggaMESH2.Scale = Vector3.new(.8,.8,.8)
DaggaMESH2.MeshId = "rbxassetid://62275962"
DaggaWeld2 = weldBetween(Dagga2,RightArm)
DaggaWeld2.C0 = CFrame.new(0,-1.8,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0))
Dagga3 = Instance.new("Part", Torso)
Dagga3.Size = Vector3.new(.2, .2, .2)
Dagga3.Material = "Neon"
Dagga3.BrickColor = TheColor
Dagga3.Transparency = 0
Dagga3.CanCollide = false
DaggaMESH3 = Instance.new("SpecialMesh", Dagga3)
DaggaMESH3.Scale = Vector3.new(.8,.8,.8)
DaggaMESH3.MeshId = "rbxassetid://62275962"
DaggaWeld3 = weldBetween(Dagga3,RightArm)
DaggaWeld3.C0 = CFrame.new(0,-1.8,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0))
daggersheet:Play()
for i = 1, 4 do
DaggaWeld2.C0 = DaggaWeld2.C0:lerp(CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(-30)),.5)
DaggaWeld3.C0 = DaggaWeld3.C0:lerp(CFrame.new(0,-1.5,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(30)),.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.45,1,0) * CFrame.Angles(math.rad(180),math.rad(3),math.rad(12)), 0.5)
wait()
end
for i = 1, 6 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.45,1.3,0) * CFrame.Angles(math.rad(180),math.rad(2),math.rad(6)), 0.5)
wait()
end
for i = 1, 6 do
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(205), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(-40),math.rad(0)), 0.4)
wait()
end
quicklerp = coroutine.wrap(function()
for i = 1, 8 do
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55, .15) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2)), .4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.8, .2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(2)), .4)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, .5, 0), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.8,1.3,.5) * CFrame.Angles(math.rad(-90),math.rad(40),math.rad(0)), 0.4)
wait()
end
end)
quicklerp()
n = 0
movethem = coroutine.wrap(function()
htbox1 = Instance.new("Part",Torso)
htbox1.CanCollide = false
htbox1.Transparency = 1
htbox1.Size = Vector3.new(2,2,2)
htbox1weld = weldBetween(htbox1,Dagga)
htbox2 = Instance.new("Part",Torso)
htbox2.CanCollide = false
htbox2.Transparency = 1
htbox2.Size = Vector3.new(2,2,2)
htbox2weld = weldBetween(htbox2,Dagga2)
htbox3 = Instance.new("Part",Torso)
htbox3.CanCollide = false
htbox3.Transparency = 1
htbox3.Size = Vector3.new(2,2,2)
htbox3weld = weldBetween(htbox3,Dagga3)
removeuseless:AddItem(Dagga,5)
removeuseless:AddItem(Dagga2,5)
removeuseless:AddItem(Dagga3,5)
removeuseless:AddItem(htbox,5)
removeuseless:AddItem(htbox2,5)
removeuseless:AddItem(htbox3,5)
DaggaWeld:Remove()
DaggaWeld2:Remove()
DaggaWeld3:Remove()
DaggaMESH.MeshId = "rbxassetid://202083123"
DaggaMESH2.MeshId = "rbxassetid://202083123"
DaggaMESH3.MeshId = "rbxassetid://202083123"
DaggaMESH.Scale = Vector3.new(1.1,1.1,1.1)
DaggaMESH2.Scale = Vector3.new(1.1,1.1,1.1)
DaggaMESH3.Scale = Vector3.new(1.1,1.1,1.1)
local BodyVel=Instance.new('BodyVelocity',Dagga)
BodyVel.maxForce=Vector3.new(math.huge,math.huge,math.huge)
local BodyGyro=Instance.new('BodyGyro',Dagga)
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.P=2e4
coroutine.wrap(function()
RenderStepped:connect(function()
BodyGyro.cframe=CFrame.new(Dagga.Position,mouse.Hit.p)
BodyVel.velocity=Dagga.CFrame.lookVector*dgs
end)
end)()

local BodyVel2=Instance.new('BodyVelocity',Dagga2)
BodyVel2.maxForce=Vector3.new(math.huge,math.huge,math.huge)
local BodyGyro2=Instance.new('BodyGyro',Dagga2)
BodyGyro2.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro2.P=2e4
coroutine.wrap(function()
RenderStepped:connect(function()
BodyGyro2.cframe=CFrame.new(Dagga2.Position,mouse.Hit.p)
BodyVel2.velocity=Dagga2.CFrame.lookVector*dgs
end)
end)()

local BodyVel3=Instance.new('BodyVelocity',Dagga3)
BodyVel3.maxForce=Vector3.new(math.huge,math.huge,math.huge)
local BodyGyro3=Instance.new('BodyGyro',Dagga3)
BodyGyro3.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro3.P=2e4
coroutine.wrap(function()
RenderStepped:connect(function()
BodyGyro3.cframe=CFrame.new(Dagga3.Position,mouse.Hit.p)
BodyVel3.velocity=Dagga3.CFrame.lookVector*dgs
end)
end)()

damagedebounce = false
damagedebounce2 = false
damagedebounce3 = false
htbox1.Touched:connect(function(hit1)
if hit1.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit1.Parent:IsA("Part") then
elseif hit1.Parent:IsA("SpecialMesh") then
elseif hit1.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
removeuseless:AddItem(slashwound,2)
Dagga.Anchored = false
BodyVel:Remove()
BodyGyro:Remove()
Dagga.CanCollide = true
Slachtoffer = hit1.Parent:findFirstChildOfClass("Humanoid")
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
else
Slachtoffer:TakeDamage(15)
end
end
end)
htbox2.Touched:connect(function(hit1)
if hit1.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit1.Parent:IsA("Part") then
elseif hit1.Parent:IsA("SpecialMesh") then
elseif hit1.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce2 == true then return end
damagedebounce2 = true
removeuseless:AddItem(slashwound,2)
Dagga2.Anchored = false
BodyVel2:Remove()
BodyGyro2:Remove()
Dagga2.CanCollide = true
Slachtoffer = hit1.Parent:findFirstChildOfClass("Humanoid")
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
else
Slachtoffer:TakeDamage(15)
end
end
end)
htbox3.Touched:connect(function(hit1)
if hit1.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit1.Parent:IsA("Part") then
elseif hit1.Parent:IsA("SpecialMesh") then
elseif hit1.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce3 == true then return end
damagedebounce3 = true
removeuseless:AddItem(slashwound,2)
Dagga3.Anchored = false
BodyVel3:Remove()
BodyGyro3:Remove()
Dagga3.CanCollide = true
Slachtoffer = hit1.Parent:findFirstChildOfClass("Humanoid")
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
else
Slachtoffer:TakeDamage(15)
end
end
end)
end)
movethem()
t = 0 
hum.WalkSpeed = 18
for i = 1, 7 do
t = t - 50
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(205 + t), math.rad(0)), 0.3)
wait()
end
t = 0
quickcour2 = coroutine.wrap(function()
for i = 1, 10 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, 0.1, 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(-8)), .5)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0),.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
end)
quickcour2()
for i = 1, 10 do
t = t - 22
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(205 - t), math.rad(0)), 0.3)
wait()
end
attacking = false
debounce = false
damagedebounce = false
damagedebounce2 = false
damagedebounce3 = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='f' then
if nottransform then return end
transformingpart = true -------Reflux has become the pinnacle of strength! Can you survive his onslaught?
if debounce then return end
debounce = true
attacking = true
absoluteannihilation = true
hum.WalkSpeed = 0
HEADLERP.Part1 = Torso
musiccour = coroutine.wrap(function()
for i = 1, 20 do
doomtheme.Volume = doomtheme.Volume - 0.05
wait()
end
doomtheme:Remove()
end)
musiccour()
for i = 1, 10 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, 0.1, 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(-8)), .5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2, 0) * CFrame.Angles(0,0,0),.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
JohnDoe2 = Instance.new("Part", Head)
JohnDoe2.Shape = 0 
JohnDoe2.Transparency = 1
JohnDoe2.Size = Vector3.new(2.06,2.06,2.06)
JohnDoe2.Material = "Neon"
JohnDoe2.CanCollide = false
JohnDoe2.BrickColor = BrickColor.new("Really black")
Jw2 = weldBetween(Head,JohnDoe2)
Jw2.C0 = CFrame.new(0,.25,0)
lolcour = coroutine.wrap(function()
for i = 1, 20 do
JohnDoe2.Transparency = JohnDoe2.Transparency - 0.05
wait()
end
end)
lolcour()
for i = 1, 15 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(200),math.rad(5),math.rad(5)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(200),math.rad(-5),math.rad(-5)), 0.4)
wait()
end
lastbreath = Instance.new("Sound", Head)
lastbreath.SoundId = "rbxassetid://198606040"
lastbreath.Volume = 5
lastbreath:Play()
coroutine.wrap(function()
for i = 1, 4 do
game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView - 3
wait()
end
for i = 1, 4 do
game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView + 3
wait()
end
end)()
for i = 1, 22 do
HEADLERP.C1 = HEADLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-60),0),.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(197),math.rad(3),math.rad(10)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(197),math.rad(-3),math.rad(-10)), 0.4)
wait()
end
coroutine.wrap(function()
for i = 1, 10 do
pBase7.BrickColor = BrickColor.new("Lime green")
pBase8.BrickColor = BrickColor.new("Lime green")
pBase9.BrickColor = BrickColor.new("Lime green")
pBase10.BrickColor = BrickColor.new("Lime green")
pBase12.BrickColor = BrickColor.new("Lime green")
TheCore.BrickColor = BrickColor.new("Lime green")
wait(.05)
pBase7.BrickColor = BrickColor.new("Really black")
pBase8.BrickColor = BrickColor.new("Really black")
pBase9.BrickColor = BrickColor.new("Really black")
pBase10.BrickColor = BrickColor.new("Really black")
pBase12.BrickColor = BrickColor.new("Really black")
TheCore.BrickColor = BrickColor.new("Really black")
wait()
end
end)()
coroutine.wrap(function()
for i = 1, 4 do
game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView - 3
wait()
end
for i = 1, 4 do
game.Workspace.CurrentCamera.FieldOfView = game.Workspace.CurrentCamera.FieldOfView + 3
wait()
end
end)()
for i = 1, 15 do
HEADLERP.C1 = HEADLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(60),0),.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(202),math.rad(4),math.rad(7)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(202),math.rad(-4),math.rad(-7)), 0.4)
wait()
end
for i = 1, 15 do
HEADLERP.C1 = HEADLERP.C1:lerp(CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),0),.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(196),math.rad(3),math.rad(10)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(196),math.rad(-3),math.rad(-10)), 0.4)
wait()
end
for i = 1, 75 do
HEADLERP.C1 = HEADLERP.C1:lerp(CFrame.new(0, 0, -0) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), .05)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, 0.1, 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(-8)), .05)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .05)
wait()
end
doomtheme = Instance.new("Sound", Torso)
doomtheme.SoundId = "rbxassetid://1502486424"
doomtheme.Volume = 1.5
doomtheme.Looped = true
doomtheme:Play()
CataclysmOrb = Instance.new("Part", Torso)
CataclysmOrb.Shape = 0 
CataclysmOrb.Transparency = 1
CataclysmOrb.Anchored = true
CataclysmOrb.Size = Vector3.new(10,10,10)
CataclysmOrb.Material = "Neon"
CataclysmOrb.CanCollide = false
CataclysmOrb.BrickColor = BrickColor.new("Really black")
CataclysmOrb.CFrame = Root.CFrame
for i = 1, 20 do
CataclysmOrb.Transparency = CataclysmOrb.Transparency - 0.05
wait()
end
mPumpkinOverlord.MeshId,mPumpkinOverlord.TextureId = 'http://www.roblox.com/asset/?id=1474596','http://www.roblox.com/asset/?id=1474595'
Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=227262305"
Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=185728896"
larmf2 = Instance.new("Part", Torso)
larmf2.BrickColor = TheColor
larmf2.Size = Vector3.new(1.001, 2.001, 1.001)
larmf2.Material = "Neon"
larmf2.Transparency = 0
larmf2.CanCollide = false
larmfweld2 = weldBetween(larmf2,LeftArm)

rarmf2 = Instance.new("Part", Torso)
rarmf2.BrickColor = TheColor
rarmf2.Size = Vector3.new(1.001, 2.001, 1.001)
rarmf2.Material = "Neon"
rarmf2.Transparency = 0
rarmf2.CanCollide = false
rarmfweld2 = weldBetween(rarmf2,RightArm)

llegf2 = Instance.new("Part", Torso)
llegf2.BrickColor = TheColor
llegf2.Size = Vector3.new(1.001, 2.001, 1.001)
llegf2.Material = "Neon"
llegf2.Transparency = 0
llegf2.CanCollide = false
llegf2weld = weldBetween(llegf2,LeftLeg)

rlegf2 = Instance.new("Part", Torso)
rlegf2.BrickColor = TheColor
rlegf2.Size = Vector3.new(1.001, 2.001, 1.001)
rlegf2.Material = "Neon"
rlegf2.Transparency = 0
rlegf2.CanCollide = false
rlegf2weld = weldBetween(rlegf2,RightLeg)

Torsof2 = Instance.new("Part", Torso)
Torsof2.BrickColor = TheColor
Torsof2.Size = Vector3.new(2.001, 2.001, 1.001)
Torsof2.Material = "Neon"
Torsof2.Transparency = 0
Torsof2.CanCollide = false
Torsof2weld = weldBetween(Torsof2,Torso)
wait(6)
glasss = glassshatter[math.random(1,#glassshatter)]
glass = Instance.new("Sound",Torso)
glass.SoundId = "rbxassetid://"..glasss
glass.Volume = 6
glass:Play()
removeuseless:AddItem(glass,3)
sond = Instance.new("Sound", Torso)
sond.Volume = 10
sond.SoundId = "rbxassetid://176823476"
sond:Play()
larmf2.Anchored = true
rarmf2.Anchored = true
rlegf2.Anchored = true
llegf2.Anchored = true
Torsof2.Anchored = true
Jw2.C0 = CFrame.new(0,.25,-.15)
Jw.C0 = CFrame.new(0,.25,-.15)
coroutine.wrap(function()
for i = 1, 25 do
larmf2.Size = larmf2.Size + Vector3.new(1,1,1)
larmf2.Transparency = larmf2.Transparency + 0.3
rarmf2.Size = rarmf2.Size + Vector3.new(1,1,1)
rarmf2.Transparency = rarmf2.Transparency + 0.3
rlegf2.Size = rlegf2.Size + Vector3.new(1.001, 2.001, 1.001)
rlegf2.Transparency = rlegf2.Transparency + 0.3
llegf2.Size = llegf2.Size + Vector3.new(1.001, 2.001, 1.001)
llegf2.Transparency = llegf2.Transparency + 0.3
Torsof2.Size = Torsof2.Size + Vector3.new(2.001, 2.001, 1.001)
Torsof2.Transparency = Torsof2.Transparency + .3
CataclysmOrb.Size = CataclysmOrb.Size + Vector3.new(10,10,10)
CataclysmOrb.Transparency = CataclysmOrb.Transparency + 0.05
wait()
end
end)()
for i = 1, 20 do
HEADLERP.C1 = HEADLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-0), math.rad(0), math.rad(0)), .5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,.8,.4) * CFrame.Angles(math.rad(-87),math.rad(20 - .1 * math.sin(sine/8)),math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,.8,.4) * CFrame.Angles(math.rad(-87),math.rad(-20 + .1 * math.sin(sine/8)),math.rad(0)), 0.3)
wait()
end
knuckscrunch = Instance.new("Sound", Torso)
knuckscrunch.SoundId = "rbxassetid://1629602112"
knuckscrunch.Volume = 5
knuckscrunch:Play()
removeuseless:AddItem(knuckscrunch,2)
for i = 1, 15 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,.8,.4) * CFrame.Angles(math.rad(-84),math.rad(17 - .1 * math.sin(sine/8)),math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1,.8,.4) * CFrame.Angles(math.rad(-84),math.rad(-17 + .1 * math.sin(sine/8)),math.rad(0)), 0.3)
wait()
end
for i = 1, 20 do
HEADLERP.C1 = HEADLERP.C1:lerp(CFrame.new(0, 0, .2) * CFrame.Angles(math.rad(-18), math.rad(0), math.rad(0)), .5)
wait()
end
coroutine.wrap(function()
for i = 1, 90 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-.2 + .1 * math.sin(sine/2),0),.7)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2 + .09 * math.sin(sine/2), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-7)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2 + .09 * math.sin(sine/2), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(7)), 0.5)
wait()
end
end)()
coroutine.wrap(function()
for i = 1, 45 do
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = "HaHaHaHaHaHa..."
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
removeuseless:AddItem(b1,2)
table.insert(signtable,b2)
table.insert(signmover,b1)
table.insert(signtransparency,b2)
table.insert(signrotator,b2)
wait(.1)
end
end)()
for i = 1, 90 do
HEADLERP.C1 = HEADLERP.C1:lerp(CFrame.new(0, 0, -.2) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(0)), .5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(100)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-100)), 0.5)
wait()
end
theinfinitecour = coroutine.wrap(function()
while wait() do
for i = 1, 10 do
JohnDoe2.Transparency = JohnDoe2.Transparency + .1
wait()
end
wait(.5)
for i = 1, 10 do
JohnDoe2.Transparency = JohnDoe2.Transparency - .1
wait()
end
wait(3)
end
end)
theinfinitecour()
coroutine.wrap(function()
while true do
for i = 1, 10 do
pBase7.BrickColor = BrickColor.new("Lime green")
pBase8.BrickColor = BrickColor.new("Lime green")
pBase9.BrickColor = BrickColor.new("Lime green")
pBase10.BrickColor = BrickColor.new("Lime green")
pBase12.BrickColor = BrickColor.new("Lime green")
TheCore.BrickColor = BrickColor.new("Lime green")
wait(.05)
pBase7.BrickColor = BrickColor.new("Really black")
pBase8.BrickColor = BrickColor.new("Really black")
pBase9.BrickColor = BrickColor.new("Really black")
pBase10.BrickColor = BrickColor.new("Really black")
pBase12.BrickColor = BrickColor.new("Really black")
TheCore.BrickColor = BrickColor.new("Really black")
wait(.05)
pBase7.BrickColor = BrickColor.new("Lime green")
pBase8.BrickColor = BrickColor.new("Lime green")
pBase9.BrickColor = BrickColor.new("Lime green")
pBase10.BrickColor = BrickColor.new("Lime green")
pBase12.BrickColor = BrickColor.new("Lime green")
TheCore.BrickColor = BrickColor.new("Lime green")
wait(.05)
pBase7.BrickColor = BrickColor.new("Really black")
pBase8.BrickColor = BrickColor.new("Really black")
pBase9.BrickColor = BrickColor.new("Really black")
pBase10.BrickColor = BrickColor.new("Really black")
pBase12.BrickColor = BrickColor.new("Really black")
TheCore.BrickColor = BrickColor.new("Really black")
wait(4)
end
end
end)()
hum.WalkSpeed = 18
HEADLERP.Part1 = Head
larmf2:Remove()
rarmf2:Remove()
rlegf2:Remove()
llegf2:Remove()
Torsof2:Remove()
CataclysmOrb:Remove()
attacking = false
debounce = false
nottransform = true
transformingpart = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='q' then
if not nottransform then return end
if mouse.Target ~= nil then
if mouse.Target.Parent ~= Character and mouse.Target.Parent.Parent ~= Character and mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
if debounce then return end
attacking = true
debounce = true
enemyhum = mouse.Target.Parent:FindFirstChildOfClass("Humanoid")
ETorso = enemyhum.Parent:FindFirstChild("Torso") or enemyhum.Parent:FindFirstChild("LowerTorso")
ERight = enemyhum.Parent:FindFirstChild("Right Arm") or enemyhum.Parent:FindFirstChild("RightUpperArm")
ELeft = enemyhum.Parent:FindFirstChild("Left Arm") or enemyhum.Parent:FindFirstChild("LeftUpperArm")
ERight2 = enemyhum.Parent:FindFirstChild("Right Leg") or enemyhum.Parent:FindFirstChild("RightUpperLeg")
ELeft2 = enemyhum.Parent:FindFirstChild("Left Leg") or enemyhum.Parent:FindFirstChild("LeftUpperLeg")
EHead = enemyhum.Parent:FindFirstChild("Head")
hum.WalkSpeed = 0
secret = secrettalk[math.random(1,#secrettalk)]
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = ""..secret
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
billboardcour = coroutine.wrap(function()
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency - 0.1
b2.TextSize = b2.TextSize + 3
wait()
end
wait(1)
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency + 0.1
b2.TextSize = b2.TextSize - 3
wait()
end
b1:Remove()
end)
billboardcour()
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
soundze = Instance.new("Sound",ETorso)
soundze.SoundId = "rbxassetid://1659770705"
soundze.Volume = 2
soundze:Play()
removeuseless:AddItem(soundze,3)
right = Instance.new("Part",Character)
right.Size = Vector3.new(1.01,2.01,1.01)
right.BrickColor = BrickColor.new("Lime green")
right.Material = "Neon"
right.Transparency = 1
right.Anchored = false
right.CFrame = ERight.CFrame
rightweld = weldBetween(right,ERight)
left = Instance.new("Part",Character)
left.Size = Vector3.new(1.01,2.01,1.01)
left.BrickColor = BrickColor.new("Lime green")
left.Material = "Neon"
left.Transparency = 1
left.Anchored = false
left.CFrame = ELeft.CFrame
leftweld = weldBetween(left,ELeft)
leg = Instance.new("Part",Character)
leg.Size = Vector3.new(1.01,2.01,1.01)
leg.BrickColor = BrickColor.new("Lime green")
leg.Material = "Neon"
leg.Transparency = 1
leg.Anchored = false
leg.CFrame = ERight2.CFrame
legweld = weldBetween(leg,ERight2)
leg2 = Instance.new("Part",Character)
leg2.Size = Vector3.new(1.01,2.01,1.01)
leg2.BrickColor = BrickColor.new("Lime green")
leg2.Material = "Neon"
leg2.Transparency = 1
leg2.Anchored = false
leg2.CFrame = ELeft2.CFrame
leg2weld = weldBetween(leg2,ELeft2)
tors = Instance.new("Part",Character)
tors.Size = Vector3.new(2.01,2.01,1.01)
tors.Anchored = false
tors.Transparency = 1
tors.BrickColor = BrickColor.new("Lime green")
tors.Material = "Neon"
tors.CFrame = ETorso.CFrame
torsweld = weldBetween(tors,ETorso)
hed = Instance.new("Part",Character)
hed.Size = Vector3.new(1.01,1.01,1.01)
hed.Anchored = false
hed.Transparency = 1
hed.BrickColor = BrickColor.new("Lime green")
hed.Material = "Neon"
hed.CFrame = EHead.CFrame
hedweld = weldBetween(hed,EHead)
hedmesh = Instance.new("SpecialMesh",hed)
hedmesh.MeshType = "Head"
hedmesh.Scale = Vector3.new(1.25,1.25,1.25)
particlemiter1 = Instance.new("ParticleEmitter", left)
particlemiter1.Enabled = true
particlemiter1.Color = ColorSequence.new(Color3.new(0, 255, 0), Color3.new(0, 255, 0))
particlemiter1.Texture = "rbxassetid://304437537"
particlemiter1.Lifetime = NumberRange.new(2.5)
particlemiter1.Size = NumberSequence.new(1,0)
particlemiter1.Rate = 25
particlemiter1.RotSpeed = NumberRange.new(70)
particlemiter1.Speed = NumberRange.new(0)
particlemiter2 = Instance.new("ParticleEmitter", right)
particlemiter2.Enabled = true
particlemiter2.Color = ColorSequence.new(Color3.new(0, 255, 0), Color3.new(0, 255, 0))
particlemiter2.Texture = "rbxassetid://304437537"
particlemiter2.Lifetime = NumberRange.new(2.5)
particlemiter2.Size = NumberSequence.new(1,0)
particlemiter2.Rate = 25
particlemiter2.RotSpeed = NumberRange.new(70)
particlemiter2.Speed = NumberRange.new(0)
particlemiter4 = Instance.new("ParticleEmitter", leg)
particlemiter4.Enabled = true
particlemiter4.Color = ColorSequence.new(Color3.new(0, 255, 0), Color3.new(0, 255, 0))
particlemiter4.Texture = "rbxassetid://304437537"
particlemiter4.Lifetime = NumberRange.new(2.5)
particlemiter4.Size = NumberSequence.new(1,0)
particlemiter4.Rate = 25
particlemiter4.RotSpeed = NumberRange.new(70)
particlemiter4.Speed = NumberRange.new(0)
particlemiter5 = Instance.new("ParticleEmitter", leg2)
particlemiter5.Enabled = true
particlemiter5.Color = ColorSequence.new(Color3.new(0, 255, 0), Color3.new(0, 255, 0))
particlemiter5.Texture = "rbxassetid://304437537"
particlemiter5.Lifetime = NumberRange.new(2.5)
particlemiter5.Size = NumberSequence.new(1,0)
particlemiter5.Rate = 25
particlemiter5.RotSpeed = NumberRange.new(70)
particlemiter5.Speed = NumberRange.new(0)
particlemiter6 = Instance.new("ParticleEmitter", tors)
particlemiter6.Enabled = true
particlemiter6.Color = ColorSequence.new(Color3.new(0, 255, 0), Color3.new(0, 255, 0))
particlemiter6.Texture = "rbxassetid://304437537"
particlemiter6.Lifetime = NumberRange.new(2.5)
particlemiter6.Size = NumberSequence.new(1,0)
particlemiter6.Rate = 25
particlemiter6.RotSpeed = NumberRange.new(70)
particlemiter6.Speed = NumberRange.new(0)
particlemiter7 = Instance.new("ParticleEmitter", hed)
particlemiter7.Enabled = true
particlemiter7.Color = ColorSequence.new(Color3.new(0, 255, 0), Color3.new(0, 255, 0))
particlemiter7.Texture = "rbxassetid://304437537"
particlemiter7.Lifetime = NumberRange.new(2.5)
particlemiter7.Size = NumberSequence.new(1,0)
particlemiter7.Rate = 25
particlemiter7.RotSpeed = NumberRange.new(70)
particlemiter7.Speed = NumberRange.new(0)
for i = 1, 15 do
right.Transparency = right.Transparency - 0.02
left.Transparency = left.Transparency - 0.02
leg.Transparency = leg.Transparency - 0.02
leg2.Transparency = leg2.Transparency - 0.02
tors.Transparency = tors.Transparency - 0.02
hed.Transparency = hed.Transparency - 0.02
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(2)),.2)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-0),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .8, .5) * CFrame.Angles(math.rad(-90), math.rad(20), math.rad(0)),.5)
wait()
end
g1:Remove()
local grav = Instance.new("BodyPosition",ETorso)
grav.D = 1500
grav.P = 20000
grav.maxForce = Vector3.new(math.huge,math.huge,math.huge)
grav.position = ETorso.Position+Vector3.new(0,15,0)
for i = 1, 30 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 1.2, .1) * CFrame.Angles(math.rad(-140), math.rad(20), math.rad(0)),.3)
wait()
end
wait(1)
coroutine.wrap(function()
fingsnap = Instance.new("Sound", RightArm)
fingsnap.SoundId = "rbxassetid://217767125"
fingsnap.Volume = 3
fingsnap:Play()
removeuseless:AddItem(fingsnap,2)
for i = 1, 5 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 1.2, .09) * CFrame.Angles(math.rad(-145), math.rad(20), math.rad(0)),.5)
wait()
end
for i = 1, 5 do
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 1.2, .1) * CFrame.Angles(math.rad(-140), math.rad(20), math.rad(0)),.5)
wait()
end
end)()
right:Remove()
left:Remove()
leg:Remove()
leg2:Remove()
tors:Remove()
hed:Remove()
rightarmblack = Instance.new("Part",Character)
rightarmblack.Size = Vector3.new(1,2,1)
rightarmblack.BrickColor = BrickColor.new("Really black")
rightarmblack.Material = "Neon"
rightarmblack.Anchored = false
rightarmblack.CFrame = ERight.CFrame
removeuseless:AddItem(rightarmblack,10)
leftarmblack = Instance.new("Part",Character)
leftarmblack.Size = Vector3.new(1,2,1)
leftarmblack.BrickColor = BrickColor.new("Really black")
leftarmblack.Material = "Neon"
leftarmblack.Anchored = false
leftarmblack.CFrame = ELeft.CFrame
removeuseless:AddItem(leftarmblack,10)
rightlegblack = Instance.new("Part",Character)
rightlegblack.Size = Vector3.new(1,2,1)
rightlegblack.BrickColor = BrickColor.new("Really black")
rightlegblack.Material = "Neon"
rightlegblack.Anchored = false
rightlegblack.CFrame = ERight2.CFrame
removeuseless:AddItem(rightlegblack,10)
leftlegblack = Instance.new("Part",Character)
leftlegblack.Size = Vector3.new(1,2,1)
leftlegblack.BrickColor = BrickColor.new("Really black")
leftlegblack.Material = "Neon"
leftlegblack.Anchored = false
leftlegblack.CFrame = ELeft2.CFrame
removeuseless:AddItem(leftlegblack,10)
torsoblack = Instance.new("Part",Character)
torsoblack.Size = Vector3.new(2,2,1)
torsoblack.Anchored = false
torsoblack.BrickColor = BrickColor.new("Really black")
torsoblack.Material = "Neon"
torsoblack.CFrame = ETorso.CFrame
removeuseless:AddItem(torsoblack,10)
headblack = Instance.new("Part",Character)
headblack.Size = Vector3.new(1,1,1)
headblack.Anchored = false
headblack.BrickColor = BrickColor.new("Really black")
headblack.Material = "Neon"
headblack.CFrame = EHead.CFrame
removeuseless:AddItem(headblack,10)
headblackmesh = Instance.new("SpecialMesh",headblack)
headblackmesh.MeshType = "Head"
headblackmesh.Scale = Vector3.new(1.25,1.25,1.25)
enemyhum.Parent:Remove()
soul = Instance.new("Sound", torsoblack)
soul.SoundId = "rbxassetid://160867463"
soul.Volume = 3
soul:Play()
circ = Instance.new("Part", torsoblack)
circ.Material = "Neon"
circ.Anchored = true
circ.CanCollide = false
circ.BrickColor = TheColor
circ.Size = Vector3.new(.1,.1,.1)
circShape = Instance.new("SpecialMesh", circ)
circShape.MeshType = "Sphere"
circShape.Scale = Vector3.new(.1,.1,.1)
circ.CFrame = tors.CFrame
coroutine.wrap(function()
for i = 1, 50 do
circ.Transparency = circ.Transparency + 0.02
circShape.Scale = circShape.Scale + Vector3.new(15,15,15)
wait()
end
circ:Remove()
end)()
removeuseless:AddItem(soul,5)
local PB = Instance.new("BodyVelocity", torsoblack)
PB.MaxForce = Vector3.new(999999, 999999, 999999)
torsoblack.CFrame = CFrame.new(torsoblack.Position)
PB.Velocity = Vector3.new(0,1,0)
local PB2 = Instance.new("BodyVelocity", rightarmblack)
PB2.MaxForce = Vector3.new(999999, 999999, 999999)
rightarmblack.CFrame = CFrame.new(rightarmblack.Position)
PB2.Velocity = Vector3.new(0,1,0)
local PB3 = Instance.new("BodyVelocity", leftarmblack)
PB3.MaxForce = Vector3.new(999999, 999999, 999999)
leftarmblack.CFrame = CFrame.new(leftarmblack.Position)
PB3.Velocity = Vector3.new(0,1,0)
local PB4 = Instance.new("BodyVelocity", rightlegblack)
PB4.MaxForce = Vector3.new(999999, 999999, 999999)
rightlegblack.CFrame = CFrame.new(rightlegblack.Position)
PB4.Velocity = Vector3.new(0,1,0)
local PB5 = Instance.new("BodyVelocity", leftlegblack)
PB5.MaxForce = Vector3.new(999999, 999999, 999999)
leftlegblack.CFrame = CFrame.new(leftlegblack.Position)
PB5.Velocity = Vector3.new(0,1,0)
local PB6 = Instance.new("BodyVelocity", headblack)
PB6.MaxForce = Vector3.new(999999, 999999, 999999)
headblack.CFrame = CFrame.new(headblack.Position)
PB6.Velocity = Vector3.new(0,1,0)
t = 0
coroutine.wrap(function()
for i = 1, 100 do
t = t + 2
rightarmblack.Transparency = rightarmblack.Transparency + 0.01
leftarmblack.Transparency = leftarmblack.Transparency + 0.01
leftlegblack.Transparency = leftlegblack.Transparency + 0.01
rightlegblack.Transparency = rightlegblack.Transparency + 0.01
torsoblack.Transparency = torsoblack.Transparency + 0.01
headblack.Transparency = headblack.Transparency + 0.01
rightarmblack.CFrame = rightarmblack.CFrame * CFrame.Angles(math.rad(0 + 3),math.rad(0 - 5),math.rad(0 + 2))
leftarmblack.CFrame = leftarmblack.CFrame * CFrame.Angles(math.rad(0 - 3),math.rad(0 + 5),math.rad(0 - 2))
rightlegblack.CFrame = rightlegblack.CFrame * CFrame.Angles(math.rad(0 + 7),math.rad(0 + 2),math.rad(0 - 1))
leftlegblack.CFrame = leftlegblack.CFrame * CFrame.Angles(math.rad(0 - 6),math.rad(0 - 5),math.rad(0 + 4))
rightlegblack.CFrame = rightlegblack.CFrame * CFrame.Angles(math.rad(0 + 7),math.rad(0 + 2),math.rad(0 - 1))
torsoblack.CFrame = torsoblack.CFrame * CFrame.Angles(math.rad(0 - 3),math.rad(0 + 7),math.rad(0 + 1))
headblack.CFrame = headblack.CFrame * CFrame.Angles(math.rad(0 + 2),math.rad(0 + 8),math.rad(0 + 1))
wait()
end
end)()
wait(1)
hum.WalkSpeed = 18
attacking = false
debounce = false
end
end
end
end)

local color1 = Color3.new(TheCore.BrickColor.Color)

A = Instance.new("Attachment", pBase5)
A.Position = Vector3.new(0,-1.5,0)
A.Name = "A"
B = Instance.new("Attachment", pBase5)
B.Position = Vector3.new(0,1.5,0)
B.Name = "B"
tr1 = Instance.new("Trail", pBase5)
tr1.Attachment0 = A
tr1.Attachment1 = B
tr1.Enabled = false
tr1.Lifetime = .8
tr1.TextureMode = "Static"
tr1.LightInfluence = .2
tr1.Color = ColorSequence.new(BrickColor.new"Lime green".Color,BrickColor.new"Really black".Color)
tr1.Transparency = NumberSequence.new(0, 1)
coroutine.wrap(function()
while wait() do
tr1.Color = ColorSequence.new(TheCore.BrickColor.Color,BrickColor.new"Really black".Color)
end
end)()

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='u' then
if debounce then return end
debounce = true
attacking = true
damagedebounce = false
lmon4 = lmon3[math.random(1,#lmon3)]
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = ""..lmon4
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
billboardcour = coroutine.wrap(function()
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency - 0.1
b2.TextSize = b2.TextSize + 3
wait()
end
wait(2)
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency + 0.1
b2.TextSize = b2.TextSize - 3
wait()
end
b1:Remove()
end)
billboardcour()
t = 0
quickcour = coroutine.wrap(function()
spawnsound = Instance.new("Sound", RightArm)
spawnsound.SoundId = "rbxassetid://159332197"
spawnsound.Volume = 5
spawnsound:Play()
removeuseless:AddItem(spawnsound,4)
Scythe = Instance.new("Part", Torso)
Scythe.Size = Vector3.new(0.5, 0.5, 0.5)
Scythe.Material = "Neon"
Scythe.BrickColor = TheColor
Scythe.Transparency = 1
Scythe.CanCollide = false
ScytheMESH = Instance.new("SpecialMesh", Scythe)
ScytheMESH.Scale = Vector3.new(2,2,2)
ScytheMESH.MeshId = "rbxassetid://218497396"
ScytheWeld = weldBetween(Scythe,RightArm)
ScytheWeld.C0 = CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-100),math.rad(180),math.rad(0))
for i = 1, 20 do
Scythe.Transparency = Scythe.Transparency - 0.04
wait()
end
end)
quickcour()
hum.WalkSpeed = 0
for i = 1, 25 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
wait()
end
for i = 1, 10 do
ScytheWeld.C0 = ScytheWeld.C0:lerp(CFrame.new(0,-4.13,0) * CFrame.Angles(math.rad(-180),math.rad(0),math.rad(0)),.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5, .5, -1.5) * CFrame.Angles(math.rad(-125), math.rad(0), math.rad(90)), .5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.9, -.3) * CFrame.Angles(math.rad(-21), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.9, .2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, .5, -1.5) * CFrame.Angles(math.rad(-125), math.rad(0), math.rad(-90)), 0.5)
wait()
end
hum.WalkSpeed = 60
soundcour = coroutine.wrap(function()
for i = 1, 25 do
lunge2:Play()
wait(.1)
end
end)
soundcour()
htbox = Instance.new("Part", Scythe)
htbox.CFrame = Scythe.CFrame
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(.40,7,3)
htboxweld = weldBetween(htbox,Scythe)
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
quickcour = coroutine.wrap(function()
Slachtoffer.WalkSpeed = 6
wait(1)
Slachtoffer.WalkSpeed = 16
end)
quickcour()
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
wait(.1)
damagedebounce = false
else
Slachtoffer:TakeDamage(math.random(10,15))
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
wait(.1)
damagedebounce = false
end
end
end)
A = Instance.new("Attachment", htbox)
A.Position = Vector3.new(0,-3.2,0)
A.Name = "A"
B = Instance.new("Attachment", htbox)
B.Position = Vector3.new(0,3.2,0)
B.Name = "B"
tr11 = Instance.new("Trail", Scythe)
tr11.Attachment0 = A
tr11.Attachment1 = B
tr11.Enabled = true
tr11.Lifetime = .8
tr11.TextureMode = "Static"
tr11.LightInfluence = 0
tr11.Color = ColorSequence.new(BrickColor.new"Lime green".Color,BrickColor.new"Really black".Color)
tr11.Transparency = NumberSequence.new(0, 1)
coroutine.wrap(function()
so = Instance.new("Sound", Torso)
so.SoundId = "rbxassetid://231917758"
so.Volume = 1
so.Pitch = .2
so:Play()
removeuseless:AddItem(so,3)
wait(1)
so2 = Instance.new("Sound", Torso)
so2.SoundId = "rbxassetid://231917758"
so2.Volume = 1
so2.Pitch = .2
so2:Play()
removeuseless:AddItem(so2,3)
end)()
for i = 1, 80 do
leftarmeffect = Instance.new("Part", Torso)
leftarmeffect.BrickColor = TheColor
leftarmeffect.Size = Vector3.new(1.001, 2.001, 1.001)
leftarmeffect.Material = "Neon"
leftarmeffect.Anchored = true
leftarmeffect.CanCollide = false
leftarmeffect.CFrame = LeftArm.CFrame
table.insert(SlowlyFade,leftarmeffect)
removeuseless:AddItem(leftarmeffect,2)
rightarmeffect = Instance.new("Part", Torso)
rightarmeffect.BrickColor = TheColor
rightarmeffect.Size = Vector3.new(1.001, 2.001, 1.001)
rightarmeffect.Material = "Neon"
rightarmeffect.Anchored = true
rightarmeffect.CanCollide = false
rightarmeffect.CFrame = RightArm.CFrame
table.insert(SlowlyFade,rightarmeffect)
removeuseless:AddItem(rightarmeffect,2)
leftlegeffect = Instance.new("Part", Torso)
leftlegeffect.BrickColor = BrickColor.new("Really black")
leftlegeffect.Size = Vector3.new(1.001, 2.001, 1.001)
leftlegeffect.Material = "Neon"
leftlegeffect.Anchored = true
leftlegeffect.CanCollide = false
leftlegeffect.CFrame = LeftLeg.CFrame
table.insert(SlowlyFade,leftlegeffect)
removeuseless:AddItem(leftlegeffect,2)
rightlegeffect = Instance.new("Part", Torso)
rightlegeffect.BrickColor = BrickColor.new("Really black")
rightlegeffect.Size = Vector3.new(1.001, 2.001, 1.001)
rightlegeffect.Material = "Neon"
rightlegeffect.Anchored = true
rightlegeffect.CanCollide = false
rightlegeffect.CFrame = RightLeg.CFrame
table.insert(SlowlyFade,rightlegeffect)
removeuseless:AddItem(rightlegeffect,2)
t = t + 65
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.5)
wait()
end
hum.WalkSpeed = 0
lunge3:Play()
despawnsound = Instance.new("Sound", RightArm)
despawnsound.SoundId = "rbxassetid://159332197"
despawnsound.Volume = 5
despawnsound:Play()
despawnsound.PlaybackSpeed = 2
removeuseless:AddItem(despawnsound,4)
local shockwefe2 = coroutine.wrap(function()
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(5, 5, 5)
shockwave2.Transparency = 0
shockwave2.BrickColor = TheColor
shockwave2.Anchored = true
shockwave2.CanCollide = false
shockwave2.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh2 = Instance.new("SpecialMesh", shockwave2) 
sh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh2.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave2,1)
shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(1, 1, 1)
shockwave3.Transparency = 0
shockwave3.BrickColor = TheColor
shockwave3.Anchored = true
shockwave3.CanCollide = false
shockwave3.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
sh3 = Instance.new("SpecialMesh", shockwave3) 
sh3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh3.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave3,2)
for i = 1, 100 do
sh2.Scale = sh2.Scale + Vector3.new(1,1,0)
shockwave2.Transparency = shockwave2.Transparency + 0.1
sh3.Scale = sh3.Scale + Vector3.new(1.25,.1,1.25)
shockwave3.Transparency = shockwave3.Transparency + 0.1
wait()
end
end)
shockwefe2()
for i = 1, 30 do
Scythe.Transparency = Scythe.Transparency + 0.05
ScytheWeld.C0 = ScytheWeld.C0:lerp(CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-150),math.rad(180),math.rad(0)), .6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), .6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55,.15) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2)), .6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.8, .2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(2)), .3)
wait()
end
hum.WalkSpeed = 18
htbox:Remove()
Scythe:Remove()
attacking = false
debounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='n' then
if debounce then return end
debounce = true
attacking = true
appi = true
damagedebounce = false
lmon4 = lmon3[math.random(1,#lmon3)]
local b1 = Instance.new("BillboardGui",Head)
b1.Size = UDim2.new(0,100,0,40)
b1.StudsOffset = Vector3.new(0,3,0)
b1.Adornee = Head
local b2 = Instance.new("TextLabel",b1)
b2.BackgroundTransparency = 1
b2.Text = ""..lmon4
b2.Font = "Garamond"
b2.TextSize = 0
b2.TextStrokeTransparency = 1
b2.TextColor3 = BrickColor.new("Lime green").Color
b2.TextStrokeColor3 = Color3.new(0,0,0)
b2.Size = UDim2.new(1,0,0.5,0)
billboardcour = coroutine.wrap(function()
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency - 0.1
b2.TextSize = b2.TextSize + 3
wait()
end
wait(2)
for i = 1, 10 do
b2.TextStrokeTransparency = b2.TextStrokeTransparency + 0.1
b2.TextSize = b2.TextSize - 3
wait()
end
b1:Remove()
end)
billboardcour()
coroutine.wrap(function()
while appi do
wait()
if Root.Velocity.Magnitude > 2 and running == false and attacking == true then
trail = true
position = "Walking2"
end
end
end)()
coroutine.wrap(function()
while appi do
wait()
settime = 0.05
sine = sine + change
if position == "Walking2" and attacking == true and running == false and appi == true then
change = 1
walking = true
hum.WalkSpeed = 6
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.5)
end
end
end)()
quickcour = coroutine.wrap(function()
spawnsound = Instance.new("Sound", RightArm)
spawnsound.SoundId = "rbxassetid://159332197"
spawnsound.Volume = 5
spawnsound:Play()
removeuseless:AddItem(spawnsound,4)
Scythe = Instance.new("Part", Torso)
Scythe.Size = Vector3.new(0.5, 0.5, 0.5)
Scythe.Material = "Neon"
Scythe.BrickColor = TheColor
Scythe.Transparency = 1
Scythe.CanCollide = false
ScytheMESH = Instance.new("SpecialMesh", Scythe)
ScytheMESH.Scale = Vector3.new(2,2,2)
ScytheMESH.MeshId = "rbxassetid://218497396"
ScytheWeld = weldBetween(Scythe,RightArm)
ScytheWeld.C0 = CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-100),math.rad(180),math.rad(0))
for i = 1, 20 do
Scythe.Transparency = Scythe.Transparency - 0.04
wait()
end
end)
quickcour()
hum.WalkSpeed = 0
for i = 1, 25 do
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.5)
wait()
end
g1 = Instance.new("BodyGyro", Root)
g1.D = 175
g1.P = 20000
g1.MaxTorque = Vector3.new(0,9000,0)
g1.CFrame = CFrame.new(Root.Position,mouse.Hit.p)
for i = 1, 6 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-.25,0),.6)
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, .8, .5) * CFrame.Angles(math.rad(-90), math.rad(20), math.rad(0)),.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55 + .02 * math.sin(sine/8), .15) * CFrame.Angles(math.rad(0 * math.sin(sine/8)), math.rad(0 + 2 * math.sin(sine/8)), math.rad(-2 - 0 * math.sin(sine/8))), .6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.8 + .02 * math.sin(sine/8), .2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(2 + 0 * math.sin(sine/8))), .6)
wait()
end
t = 0
htbox = Instance.new("Part", Scythe)
htbox.CFrame = Scythe.CFrame
htbox.Transparency = 1
htbox.CanCollide = false
htbox.Size = Vector3.new(.40,7,3)
htboxweld = weldBetween(htbox,Scythe)
A = Instance.new("Attachment", htbox)
A.Position = Vector3.new(0,-4,0)
A.Name = "A"
B = Instance.new("Attachment", htbox)
B.Position = Vector3.new(0,4,0)
B.Name = "B"
tr11 = Instance.new("Trail", Scythe)
tr11.Attachment0 = A
tr11.Attachment1 = B
tr11.Enabled = true
tr11.Lifetime = .8
tr11.TextureMode = "Static"
tr11.LightInfluence = 0
tr11.Color = ColorSequence.new(BrickColor.new"Lime green".Color,BrickColor.new"Really black".Color)
tr11.Transparency = NumberSequence.new(0, 1)
htbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChildOfClass("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChildOfClass("Humanoid")
quickcour = coroutine.wrap(function()
Slachtoffer.WalkSpeed = 2
wait(1)
Slachtoffer.WalkSpeed = 16
end)
quickcour()
if absoluteannihilation then
Slachtoffer.Parent:BreakJoints()
wait(.1)
damagedebounce = false
else
Slachtoffer:TakeDamage(math.random(8,14))
rdnm = soundtable[math.random(1,#soundtable)]
slashwound = Instance.new("Sound", Slachtoffer.Torso)
slashwound.SoundId = "rbxassetid://"..rdnm
slashwound.Volume = 4
slashwound:Play()
removeuseless:AddItem(slashwound,2)
wait(.1)
damagedebounce = false
end
end
end)
hum.WalkSpeed = 6
appi = true
coroutine.wrap(function()
for i = 1, 25 do
lunge2:Play()
wait(.1)
end
end)()
so2 = Instance.new("Sound", Scythe)
so2.SoundId = "rbxassetid://231917758"
so2.Volume = 2
so2.Pitch = .15
so2:Play()
for i = 1, 80 do
t = t + 80
g1.cframe = g1.cframe:lerp(CFrame.new(Root.Position,mouse.Hit.p),.5)
ScytheWeld.C0 = ScytheWeld.C0:lerp(CFrame.new(0,-1.4,-1.25) * CFrame.Angles(math.rad(-100 + t),math.rad(180),math.rad(0)), .6)
wait()
end
despawnsound = Instance.new("Sound", RightArm)
despawnsound.SoundId = "rbxassetid://159332197"
despawnsound.Volume = 5
despawnsound:Play()
despawnsound.PlaybackSpeed = 2
removeuseless:AddItem(despawnsound,4)
local shockwefe2 = coroutine.wrap(function()
shockwave2 = Instance.new("Part", Torso)
shockwave2.Size = Vector3.new(5, 5, 5)
shockwave2.Transparency = 0
shockwave2.BrickColor = TheColor
shockwave2.Anchored = true
shockwave2.CanCollide = false
shockwave2.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh2 = Instance.new("SpecialMesh", shockwave2) 
sh2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh2.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave2,1)
shockwave3 = Instance.new("Part", Torso)
shockwave3.Size = Vector3.new(1, 1, 1)
shockwave3.Transparency = 0
shockwave3.BrickColor = TheColor
shockwave3.Anchored = true
shockwave3.CanCollide = false
shockwave3.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))
sh3 = Instance.new("SpecialMesh", shockwave3) 
sh3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
sh3.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave3,2)
for i = 1, 100 do
sh2.Scale = sh2.Scale + Vector3.new(1,1,0)
shockwave2.Transparency = shockwave2.Transparency + 0.1
sh3.Scale = sh3.Scale + Vector3.new(1.25,.1,1.25)
shockwave3.Transparency = shockwave3.Transparency + 0.1
wait()
end
end)
shockwefe2()
appi = false
g1:Remove()
tr11.Enabled = false
damagedebounce = true
hum.WalkSpeed = 0
for i = 1, 30 do
Scythe.Transparency = Scythe.Transparency + 0.05
ScytheWeld.C0 = ScytheWeld.C0:lerp(CFrame.new(0,-1.5,-1.45) * CFrame.Angles(math.rad(-150),math.rad(180),math.rad(0)), .6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), .6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80),math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55,.15) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-2)), .6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), .6)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.8, .2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(2)), .3)
wait()
end
hum.WalkSpeed = 18
htbox:Remove()
Scythe:Remove()
position = "Walking"
attacking = false
debounce = false
end
end)

hum.Died:connect(function()
coroutine.wrap(function()
while wait() do
doomtheme.Volume = doomtheme.Volume - 0.05
end
end)()
deadsound = Instance.new("Sound", Torso)
deadsound.Volume = 10
deadsound.SoundId = "rbxassetid://223471024"
deadsound:Play()
end)


doit = coroutine.wrap(function()
while wait() do
for _,v in pairs(Repeater) do
v.Scale =  v.Scale + Vector3.new(1, 1, 1)
end

for _,v in pairs(openshocktable) do
v.Scale =  v.Scale + Vector3.new(3, 3, 3)
end

for _,v in pairs(nonmeshRepeater) do
v.Size =  v.Size + Vector3.new(2, 2, 2)
end

for _,v in pairs(Extreme) do
v.Size =  v.Size + Vector3.new(6, 6, 6)
end

for _,v in pairs(LessSize) do
v.Size = v.Size - Vector3.new(1, 1, 1)
end

for _,v in pairs(nonmeshRepeater2) do
v.Transparency = v.Transparency + 0.05
end

for _,v in pairs(Repeater2) do
v.Transparency = v.Transparency + 0.01
end

for _,v in pairs(th1) do
v.Transparency = v.Transparency - 0.008
end

for _,v in pairs(th2) do
v.Scale = v.Scale - Vector3.new(1, 1, 1)
end

for _,v in pairs(th3) do
v.Scale = v.Scale + Vector3.new(2, 2, 2)
end

for _,v in pairs(th5) do
v.Scale = v.Scale + Vector3.new(1, .1, 1)
end

for _,v in pairs(ExtremeM) do
v.Scale = v.Scale + Vector3.new(8, 8, 8)
end

for _,v in pairs(m3) do
v.Scale = v.Scale + Vector3.new(12, 12, 12)
end

for _,v in pairs(ExtremeM2) do
v.Scale = v.Scale + Vector3.new(8, 1, 8)
end

for _,v in pairs(th4) do
v.Transparency = v.Transparency + 0.009
v.Rotation = v.Rotation + Vector3.new(3,0,0)
end

for _,v in pairs(SlowlyFade) do
v.Transparency = v.Transparency + 0.05
end

for _,v in pairs(UpMover) do
v.Position = v.Position + Vector3.new(0, 3, 0)
end

for _,v in pairs(ForwardMover) do
v.CFrame = v.CFrame * CFrame.new(0, 0, 2.4 +(i/.1)) * CFrame.Angles(0, 0, math.rad(0))
end

for _,v in pairs(signtable) do
v.TextSize = v.TextSize + 1
end

for _,v in pairs(signtransparency) do
v.TextTransparency = v.TextTransparency + 0.025
end

for _,v in pairs(signmover) do
v.StudsOffset = v.StudsOffset + Vector3.new(math.random(-2,2),.3,math.random(-2,2))
end

for _,v in pairs(signrotator) do
v.Rotation = v.Rotation + 2
end
end
end)
doit()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Walking" and attacking == false and running == false then
change = 1.5
walking = true
hum.WalkSpeed = 18
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.1, 0 + .3 * math.sin(sine/8)) * CFrame.Angles(math.rad(35 * math.sin(sine/8)), math.rad(20 * math.sin(sine/8)), math.rad(-8)), 0.6)LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0.6,-.5) * CFrame.Angles(math.rad(70),math.rad(5 - 1 * math.sin(sine/8)),math.rad(0)), 0.4)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(5 * math.cos(sine/7)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/8)/2.8, 0.2 - math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/8)/2.8, 0.2 + math.sin(sine/8)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/8)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/8))), 0.5)
elseif position == "Idle2" and attacking == false and running == false then
change = .6
tr1.Enabled = false
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5+ .02 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(-8), math.rad(0 * math.cos(sine/8)), math.rad(0)), .3)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-0),math.rad(0)),.4)
TORSOLERP.C0 = TORSOLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80 - 1 * math.sin(sine/8)),math.rad(0)), 0.6)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.55 + .02 * math.sin(sine/8), .15) * CFrame.Angles(math.rad(0 * math.sin(sine/8)), math.rad(0 + 2 * math.sin(sine/8)), math.rad(-2 - 0 * math.sin(sine/8))), .3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, .1 + 0.05 * math.sin(sine/8), 0.1) * CFrame.Angles(math.rad(2 - 2 * math.sin(sine/8)), math.rad(15 - 2 * math.sin(sine/8)), math.rad(-8 - 1 * math.sin(sine/8))), .3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.8 + .02 * math.sin(sine/8), .2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(2 + 0 * math.sin(sine/8))), .3)
elseif position == "Idle" and attacking == false and running == false then
change = .6
tr1.Enabled = false
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.59 + .05 * math.sin(sine/12), 0.1 -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(-2), math.rad(2), math.rad(-8  + 6 * math.sin(sine/12))), .2)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.2 + -.1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0),math.rad(30),math.rad(2)),.2)
ROOTLERP.C1 = ROOTLERP.C1:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-0),math.rad(0)),.2)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1, 0) * CFrame.Angles(math.rad(2), math.rad(2), math.rad(8)), .2)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.2)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0 - .1 * math.sin(sine/12), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
elseif position == "Running" and attacking == false then
change = 2
hum.WalkSpeed = 26
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.45+0.50*math.cos(sine/5),0.2-0.25*math.cos(sine/5),-0.2-0.5*math.cos(sine/5))*CFrame.Angles(math.rad(-20+120*math.cos(sine/5)),math.rad(0),math.rad(-4+30*math.cos(sine/5))),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.45+0.50*math.cos(sine/5),0.2-0.25*math.cos(sine/5),-0.2+0.5*math.cos(sine/5))*CFrame.Angles(math.rad(-20-120*math.cos(sine/5)),math.rad(0),math.rad(4+30*math.cos(sine/5))),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.05, 0) * CFrame.Angles(math.rad(-20 - 4 * math.cos(sine/4)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, .2) * CFrame.Angles(math.rad(-10), math.rad(0 + 20 * Head.RotVelocity.Y / 30, math.cos(15 * math.cos(sine/10))), math.rad(0 - 20 * Head.RotVelocity.Y / 30, math.cos(15 * math.cos(sine/10)))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.8 - 0.45 * math.cos(sine/4)/2.8, -0.05) * CFrame.Angles(math.rad(-35)*math.sin(sine/4), math.rad(1)*math.cos(sine/1), math.rad(0) + RightLeg.RotVelocity.Y / 90, math.cos(25 * math.cos(sine/6))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.8 + 0.45 * math.cos(sine/4)/2.8, -0.05) * CFrame.Angles(math.rad(35)*math.sin(sine/4), math.rad(-1)*math.cos(sine/1), math.rad(0) + LeftLeg.RotVelocity.Y / 90, math.cos(25 * math.cos(sine/6))), 0.3)
end
swait()
end
end)
anims()
print("The power is yours!, Reflux! Made by Supr14")

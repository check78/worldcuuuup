

firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'You Executed the Script',true,2)
wait(1)
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'Credits to zavaled for Making Endless Doors',true,1)
-- Custom Door Sounds
loadstring(game:HttpGet("https://pastebin.com/raw/iAhTGdBh"))()
loadstring(game:HttpGet("https://pastebin.com/raw/6brG9uma"))()

local syncConnection; syncConnection = game:GetService("ReplicatedStorage").GameData.LatestRoom:GetPropertyChangedSignal("Value"):Wait()

-- Rebound
coroutine.wrap(function()
    while true do
        wait(math.random(20,550))
		if workspace.Ambience_Seek.Playing == true then
			continue
		end
		if workspace.Ambience_Figure.Playing == true then
			continue
		end
		if workspace.Ambience_FigureEnd.Playing == true then
			continue
		end
		if workspace.Ambience_FigureStart.Playing == true then
			continue
		end
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(1.5)
loadstring(game:HttpGet("https://pastebin.com/raw/Gswvwuk4"))()
    end
end)()

-- Overseer Eyes
coroutine.wrap(function()
    while true do
        wait(math.random(55,250))
		if workspace.Ambience_Seek.Playing == true then
			continue
		end
		if workspace.Ambience_Figure.Playing == true then
			continue
		end
		if workspace.Ambience_FigureEnd.Playing == true then
			continue
		end
		if workspace.Ambience_FigureStart.Playing == true then
			continue
		end
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
wait(0.5)
local Overseer = Instance.new("Model")
Overseer.Parent = workspace
Overseer.Name = "Overseer"
local enableDamage = true
 
local currentLoadedRoom=workspace.CurrentRooms[game:GetService("ReplicatedStorage").GameData.LatestRoom.Value]
local eyes=game:GetObjects("rbxassetid://12285389022")[1]
 
if eyes then end
game.Workspace.CurrentRooms.ChildAdded:Connect(function()
    game.Workspace:FindFirstChild("Overseer"):Destroy()
    enableDamage = true
end)
local num=math.floor(#currentLoadedRoom.Nodes:GetChildren()/2)
eyes.CFrame=(
	num==0 and currentLoadedRoom.Base or currentLoadedRoom.Nodes[num]
).CFrame+Vector3.new(0,5,0)
 
eyes.Parent=workspace.Overseer
 
local hum=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
while true and enableDamage do
if not game.Workspace:FindFirstChild("Overseer") then break end
	local _,found=workspace.CurrentCamera:WorldToScreenPoint(eyes.Position)
	if not found then
		hum.Health-=3
		eyes.Attack:Play()
		if hum.Health<=0 then
			game:GetService("ReplicatedStorage").GameStats["Player_".. game.Players.LocalPlayer.Name].Total.DeathCause.Value = "Overseer Eyes"
			firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You've been consumed by the Overseer Eyes.", "They want you to obey and look at them.", "If you dont look at them while they look at you, they will damage."}, "Blue")
		end
	end
	task.wait(.25)
end
    end
end)()


-- Matcher
coroutine.wrap(function()
    while true do
        wait(math.random(30,150))
		if workspace.Ambience_Seek.Playing == true then
			continue
		end
		if workspace.Ambience_Figure.Playing == true then
			continue
		end
		if workspace.Ambience_FigureEnd.Playing == true then
			continue
		end
		if workspace.Ambience_FigureStart.Playing == true then
			continue
		end
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(0.3)
        
game.Lighting.MainColorCorrection.TintColor = Color3.fromRGB(212, 255, 0)
game.Lighting.MainColorCorrection.Contrast = 0.3
local tween = game:GetService("TweenService")
tween:Create(game.Lighting.MainColorCorrection, TweenInfo.new(0.5), {Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(0.5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
    local roast = Instance.new("Sound")
    roast.Parent = workspace
    roast.Name = "roast"
    roast.SoundId = "rbxassetid://9125936117"
    roast.Volume = 0.5
    roast.Pitch = 3
    roast:Play()
    wait(0.6)
    roast:Destroy()

local Creator = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors%20Entity%20Spawner/Source.lua"))()

-- Create entity

local entity = Creator.createEntity({
    CustomName = "Matcher", -- Custom name of your entity
    Model = "rbxassetid://12459977063", -- Can be GitHub file or rbxassetid
    Speed = 90, -- Percentage, 100 = default Rush speed
    DelayTime = 0.8, -- Time before starting cycles (seconds)
    HeightOffset = 0,
    CanKill = true,
    BreakLights = true,
    KillRange = 40,
    BackwardsMovement = false,
    FlickerLights = {
        false, -- Enabled
        2.5, -- Time (seconds)
    },
    Cycles = {
        Min = 1,
        Max = 1
    },
    CamShake = {
        true, -- Enabled
        {5, 15, 0.1, 1}, -- Shake values (don't change if you don't know)
        100, -- Shake start distance (from Entity to you)
    },
    Jumpscare = {
        false, -- Enabled ('false' if you don't want jumpscare)
        {
            Image1 = "https://www.roblox.com/library/11862656491", -- Image1 url
            Image2 = "https://www.roblox.com/library/11862656491", -- Image2 url
            Shake = false,
            Sound1 = {
                0, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Sound2 = {
                5567523008, -- SoundId
                { Volume = 0.5 }, -- Sound properties
            },
            Flashing = {
                true, -- Enabled
                Color3.fromRGB(6, 38, 135), -- Color
            },
            Tease = {
                false, -- Enabled ('false' if you don't want tease)
                Min = 1,
                Max = 3,
            },
        },
    },
    CustomDialog = {"You died to Rebound...", "It appears at the next door and has a chance to stay there or run back to the latest door.", "He will come back many times after his initial spawn", "so hide every next door until it is safe.."}, -- Custom death message (can be as long as you want)
})

-----[[ Advanced ]]-----
entity.Debug.OnEntitySpawned = function(entityModel)
    print("Entity has spawned:", entityModel)
end

entity.Debug.OnEntityDespawned = function(entityModel)
    print("Entity has despawned:", entityModel)
end

entity.Debug.OnEntityStartMoving = function(entityModel)
    print("Entity has started moving:", entityModel)
    wait(15)
    workspace.Matcher:Destroy()
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", "has entered room:", room)
end

entity.Debug.OnEntityFinishedRebound = function(entityModel)
    print("Entity finished rebound:", entityModel)
end

entity.Debug.OnDeath = function()
    warn("You died.")

    firesignal(game.ReplicatedStorage.EntityInfo.DeathHint.OnClientEvent, {"You died to Matcher", "Running will not help, Try Hiding when you know its near.", "Pay attention for cues that hint its arrival."}, "Blue")


local match = Instance.new("Sound")
match.PlaybackSpeed = 1.3
match.SoundId = "rbxassetid://5567523008"
match.Volume = 3
match.Name = "Jumpscare"
match.Parent = workspace

local distort = Instance.new("DistortionSoundEffect")
distort.Parent = match

local eq = Instance.new("EqualizerSoundEffect")
eq.HighGain = 10
eq.LowGain = 0.37
eq.MidGain = 10
eq.Parent = match

local shift = Instance.new("PitchShiftSoundEffect")
shift.Octave = 0.6
shift.Parent = match

match:Play()
game:GetService("TweenService"):Create(match,TweenInfo.new(.7),{Volume = 0}):Play()
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:WaitForChild("Door").ClientOpen:FireServer()
    end
end)()

-- Claim
coroutine.wrap(function()
    while true do
        wait(math.random(100,750))
		if workspace.Ambience_Seek.Playing == true then
			continue
		end
		if workspace.Ambience_Figure.Playing == true then
			continue
		end
		if workspace.Ambience_FigureEnd.Playing == true then
			continue
		end
		if workspace.Ambience_FigureStart.Playing == true then
			continue
		end
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet("https://pastebin.com/raw/d3R357Rk"))()
    end
end)()

-- Phil
coroutine.wrap(function()
    while true do
        wait(math.random(5,3500))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet("https://pastebin.com/raw/JLFyvnp2"))()
    end
end)()


function ReplaceAudGit(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName..".mp3")
end
local a = game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game.Health.Music
a.Blue.SoundId = ReplaceAudGit("https://github.com/check78/worldcuuuup/blob/main/Track1GuidingLight.mp3?raw=true","Track1New")
a.Blue.Volume = 7
function ReplaceAudGit(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName..".mp3")
end
a.Blue.End.SoundId = ReplaceAudGit("https://github.com/check78/worldcuuuup/blob/main/Track1GuidingLight.mp3?raw=true","Track1NewEnd")
a.Blue.End.Volume = 7


function ReplaceAudGit(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName..".mp3")
end
workspace.Ambience_Seek.SoundId = ReplaceAudGit("https://github.com/check78/worldcuuuup/blob/main/EndlessSeekChase.mp3?raw=true","EndlessSeekChase")
workspace.Ambience_Seek.Volume = 0.5

function ReplaceAudGit(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName..".mp3")
end
workspace.Ambience_Figure.SoundId = ReplaceAudGit("https://github.com/check78/worldcuuuup/blob/main/Unhinged3.mp3?raw=true","Unhinged3")
workspace.Ambience_Figure.Volume = 0.2

function ReplaceAudGit(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName..".mp3")
end
workspace.Ambience_FigureEnd.SoundId = ReplaceAudGit("https://github.com/check78/worldcuuuup/blob/main/FigureEnd.mp3?raw=true","FigureEnd")
workspace.Ambience_FigureEnd.Volume = 0.2

function ReplaceAudGit(GithubSnd,SoundName)
	local url=GithubSnd
	if not isfile(SoundName..".mp3") then
		writefile(SoundName..".mp3", game:HttpGet(url))
	end
	return (getcustomasset or getsynasset)(SoundName..".mp3")
end
workspace.Ambience_FigureStart.SoundId = ReplaceAudGit("https://github.com/check78/worldcuuuup/blob/main/FigureStart.mp3?raw=true","FigureStart")
workspace.Ambience_FigureStart.Volume = 0.2

-- GuidingLight Music
coroutine.wrap(function()
    while true do
        wait(0.0005)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        a.Blue.Volume = 7
        a.Blue.End.Volume = 7
    end
end)()

-- No Overseer in Lever Room
 workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Assets.ChildAdded:Connect(function(eye)
	if eye.Name == "LeverForGate" then
		wait(0.6)
        workspace.Overseer:Destroy()
	else

	end
end)

-- No Overseer in Seek Chase
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "SeekMoving" then
		wait(0.6)
        workspace.Overseer:Destroy()
	else

	end
end)

-- No Overseer and Normal Eyes Combo
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "Eyes" then
		wait(0.6)
        workspace.Overseer:Destroy()
	else

	end
end)

    local roast = Instance.new("Sound")
    roast.Parent = workspace
    roast.Name = "Omg"
    roast.SoundId = "rbxassetid://4835664238"
    roast.Volume = 1
    roast.Pitch = 1
    roast.TimePosition = 0.2
    roast:Play()
local a = game.Players.LocalPlayer.PlayerGui.MainUI
a.Dialogue.TextScaled = false
a.Dialogue.TextWrapped = false
a.Dialogue.Visible = true
a.Dialogue.TextColor3 = Color3.fromRGB(213, 247, 210)
a.Dialogue.TextTransparency = 1
a.Dialogue.Glow.Visible = true
a.Dialogue.Glow.ImageColor3 = Color3.fromRGB(30, 170, 144)
a.Dialogue.Glow.ImageTransparency = 1
a.Dialogue.Text = "Greed will not be added because"
a.Dialogue.TextSize = 100
a.Dialogue.Glow.Size = UDim2.new(2, 0, 2, 0)
game.TweenService:Create(a.Dialogue,TweenInfo.new(0.7),{TextTransparency = 0}):Play()
game.TweenService:Create(a.Dialogue.Glow,TweenInfo.new(0.7),{ImageTransparency = 0}):Play()
wait(1.5)
a.Dialogue.Text = "The Creator didn't have permission"
wait(1.5)
a.Dialogue.Text = "to add Greed"
wait(1)
game.TweenService:Create(a.Dialogue,TweenInfo.new(0.7),{TextTransparency = 1}):Play()
game.TweenService:Create(a.Dialogue.Glow,TweenInfo.new(0.7),{ImageTransparency = 1}):Play()

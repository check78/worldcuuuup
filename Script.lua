

firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'You Executed the Script',true,2)
wait(1)
firesignal(game:GetService("ReplicatedStorage").EntityInfo.Caption.OnClientEvent, 'Credits to zavaled for Making Endless Doors',true,1)
loadstring(game:HttpGet("https://pastebin.com/raw/6brG9uma"))()

game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()

-- Rebound
coroutine.wrap(function()
    while true do
        wait(math.random(150,750))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        wait(1.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/cannedmode/main/reboundv2.txt"))()
    end
end)()

-- Overseer Eyes
coroutine.wrap(function()
    while true do
        wait(math.random(55,250))
game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
  if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
wait(0.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/cannedmode/main/overseer.txt"))()
    end
end)()

-- Matcher
coroutine.wrap(function()
    while true do
        wait(math.random(30,150))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        wait(0.3)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/cannedmode/main/Matcher.txt"))()
    end
end)()

-- Claim
coroutine.wrap(function()
    while true do
        wait(math.random(350,750))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/cannedmode/main/Claim%20v4.txt"))()
    end
end)()

-- Blink
coroutine.wrap(function()
    while true do
        wait(math.random(160,860))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/cannedmode/main/BuffedBlink.txt"))()
    end
end)()

-- Greed
coroutine.wrap(function()
    while true do
        wait(math.random(60,250))
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
          if workspace.Ambience_Seek.Playing == true or workspace.Ambience_Figure.Playing == true then
          return
    end
        loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/cannedmode/main/Greed.txt"))()
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
local Sounds = Instance.new("Folder")
Sounds.Name = "Mimic"
Sounds.Parent = workspace
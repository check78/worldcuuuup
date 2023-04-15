-- Optional Seek Eyes 2 it might lag your device
coroutine.wrap(function()
    while true do
        wait(0.005)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].ChildAdded:Connect(function(seekeye)
	if seekeye.Name == "Eye" then
		wait(0.0005)
		local getSeek Model = game:GetObjects("rbxassetid://11854254581")[1]
		getSeek.Parent = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Folder
		getSeek:PivotTo(workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Eye.Black.CFrame)
		workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value].Eye:Destroy()
	else

	end
end)
    end
end)()
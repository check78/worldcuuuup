
-- Seek Model
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "SeekMoving" then
		wait(0.5)
	    workspace.SeekMoving.SeekRig.Head.Eye.Decal.Texture = "rbxassetid://0"
		for i,v in pairs(workspace.SeekMoving.SeekRig:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Transparency = 1
			end
		end
		local getSeek Model = game:GetObjects("rbxassetid://11854226054")[1]
		getSeek.Parent = workspace.SeekMoving.Figure
		getSeek:PivotTo(workspace.SeekMoving.Figure.CFrame)
		local Weld = Instance.new("WeldConstraint",getSeek)
		Weld.Part0 = getSeek.PrimaryPart
		Weld.Part1 = workspace.SeekMoving.Figure
	else

	end
end)
-- Seek Model 2
workspace.ChildAdded:Connect(function(seek)
	if seek.Name == "SeekMoving" then
		wait(0.5)
	    workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
wait(0.1)
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
workspace.SeekMoving.SeekRig.StringCheese:Destroy()
	else

	end
end)
-- @ScriptType: Script
script.Parent.DeathDance.Triggered:Connect(function(player)
	if not player.Backpack:FindFirstChild("Sheild") then
		game.ReplicatedStorage.Tools.Sheild:Clone().Parent = player.Backpack
	elseif player.Backpack:FindFirstChild("Sheild") then
		return
	end
end)
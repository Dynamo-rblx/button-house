-- @ScriptType: Script
script.Parent.DeathDance.Triggered:Connect(function(player)
	if not player.Backpack:FindFirstChild("Electric Power") then
		game.ReplicatedStorage.Tools["Electric Power"]:Clone().Parent = player.Backpack
	elseif player.Backpack:FindFirstChild("Electric Power") then
		return
	end
end)
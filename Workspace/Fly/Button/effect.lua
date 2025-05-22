-- @ScriptType: Script
script.Parent.DeathDance.Triggered:Connect(function(player)
	if not player.Backpack:FindFirstChild("Fly") then
		game.ReplicatedStorage.Tools.Fly:Clone().Parent = player.Backpack
	elseif player.Backpack:FindFirstChild("Fly") then
		return
	end
end)
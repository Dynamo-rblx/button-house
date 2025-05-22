-- @ScriptType: Script
script.Parent.DeathDance.Triggered:Connect(function(player)
	game.ReplicatedStorage.Events.DeathDance:FireClient(player)
	script.Parent.DeathDance.Enabled = false
	wait(9.14)
	script.Parent.DeathDance.Enabled = true
end)
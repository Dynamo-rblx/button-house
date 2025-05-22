-- @ScriptType: Script
script.Parent.DeathDance.Triggered:Connect(function(player)
	player.leaderstats.Buttons.Value = 	player.leaderstats.Buttons.Value + 1
end)
-- @ScriptType: Script
local DataStoreService = game:GetService("DataStoreService")

local playerData = DataStoreService:GetDataStore("playerData")

game.Players.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player
	
	local gold = Instance.new("IntValue")
	gold.Name = "Buttons"
	gold.Parent = leaderstats
	
	local data 
	local success, errormessage = pcall(function()
		data = playerData:GetAsync(player.UserId.."-buttons") 
	end)
	
	if success then 
		gold.Value = data
	end
end)

game.Players.PlayerRemoving:Connect(function(player)
	
	local success, errormessage = pcall(function()
		playerData:SetAsync(player.UserId.."-buttons", player.leaderstats.Buttons.Value)
	end)
end)

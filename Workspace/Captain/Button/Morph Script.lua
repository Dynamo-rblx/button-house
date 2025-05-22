-- @ScriptType: Script
-- Author: PseudoPerson, Dec. 2020

-- Instances --
local ProximityPrompts = script["Proximity Prompts"]
local Settings = script.Settings


local HumanoidDescription = Settings:FindFirstChildOfClass("HumanoidDescription")

-- Variables --
local proximityPrompts = {}
local connections = {}

-- Functions --
local function getProximityPrompts()
	for index, child in pairs(ProximityPrompts:GetChildren()) do
		if child:IsA("ObjectValue") then
			local prompt = child.Value
			if prompt:IsA("ProximityPrompt") then
				table.insert(proximityPrompts, prompt)
			end
		end
	end
end

local function onTriggered(player)
	local character = player.Character
	if character then
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:ApplyDescription(HumanoidDescription)
		end
	end
end

-- Code --
getProximityPrompts()
for index, prompt in ipairs(proximityPrompts) do
	local connection = prompt.Triggered:Connect(onTriggered)
	table.insert(connections, connection)
end

local Rig = script.Parent
if Rig then
	local humanoid = Rig:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid:ApplyDescription(HumanoidDescription)
	end
end
-- @ScriptType: LocalScript
cam = workspace.CurrentCamera
local db = false
local p = nil
local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local mouse = player:GetMouse()

local anim = Instance.new("Animation")
local anim2 = Instance.new("Animation")
anim.AnimationId = "http://www.roblox.com/asset/?id=8649853219"
anim2.AnimationId = "http://www.roblox.com/asset/?id=6500030428"
local s = Instance.new("Sound")
s.SoundId = "http://www.roblox.com/asset/?id=1835972586"
s.Parent = player.Character:WaitForChild("Head")
s.RollOffMode = Enum.RollOffMode.InverseTapered
s.RollOffMaxDistance = 20
local s2 = Instance.new("Sound")
s2.SoundId = "http://www.roblox.com/asset/?id=1843434575"
s2.Parent = player.Character.Head
s2.RollOffMode = Enum.RollOffMode.InverseTapered
s2.RollOffMaxDistance = 20

local z1 = Instance.new("Sound")
z1.SoundId = "http://www.roblox.com/asset/?id=1837830199"
z1.Parent = player.Character.Head
z1.RollOffMode = Enum.RollOffMode.InverseTapered
z1.RollOffMaxDistance = 20
local zanim = Instance.new("Animation")
zanim.AnimationId = "http://www.roblox.com/asset/?id=6500030428"

mouse.KeyDown:connect(function(key)
	if key == "g" then
		if db == false then
			db = true
			local playAnim = humanoid:LoadAnimation(anim)
			humanoid.WalkSpeed = 0
			humanoid.JumpPower = 0
			playAnim:Play()
			s:Play()
			wait(9.14)
			s:Stop()
			wait(1)
			db = false
			humanoid.WalkSpeed = 16
			humanoid.JumpPower = 50
		elseif db == true then
			return
		end
		
	elseif key == "t" then
		if db == false then
			db = true
			humanoid.WalkSpeed = 0
			humanoid.JumpPower = 0
			z1:Play()
			wait(1)
				local spid = game.ReplicatedStorage.Morphs.Drako:Clone()
				local ex = player.Character:GetChildren()
				spid.Parent = workspace
				cam.CameraSubject = spid 
				player.Character = spid
				ex:Destroy()
			z1:Stop()
			wait(1)
			db = false
			humanoid.WalkSpeed = 16
			humanoid.JumpPower = 50
		end
	end
end)

game.ReplicatedStorage.Events.Boogie.OnClientEvent:Connect(function()
	db = true
	local playAnim = humanoid:LoadAnimation(anim)
	humanoid.WalkSpeed = 0
	humanoid.JumpPower = 0
	playAnim:Play()
	s:Play()
	wait(9.14)
	s:Stop()
	wait(1)
	db = false
	humanoid.WalkSpeed = 16
	humanoid.JumpPower = 50
end)

game.ReplicatedStorage.Events.DeathDance.OnClientEvent:Connect(function()
	local msg = Instance.new("Message", game.Workspace)
	msg.Text = "🎉🎉🎉"
	db = true
	local playAnim = humanoid:LoadAnimation(anim2)
	humanoid.WalkSpeed = 0
	humanoid.JumpPower = 0
	playAnim:Play()
	s2:Play()
	wait(9.14)
	s2:Stop()
	wait(1)
	db = false
	msg:Destroy()
	playAnim:Stop()
	humanoid.WalkSpeed = 16
	humanoid.JumpPower = 50
end)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Niova Hu-... 😒", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Auio Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Setting"
})

Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(Wapon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(Wapon, v.Name)
    end
end

Weapon_Tab = Tab:AddDropdown({
    Name = "Select Weapon",
    Default = nil,
    Options = Wapon,
    Callback = function(Value)
        _G.Weapon = Value
    end    
})

Tab:AddButton({
    Name = "Refresh Weapon",
    Callback = function()
                  Wapon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(Wapon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
       table.insert(Wapon, v.Name)
    end
end
  Weapon_Tab:Refresh(Wapon,true)
      end    
})

function GetQuest() -- ฟังชั่นรับเควส
	if game:GetService("Players").LocalPlayer.Quest.Num.Value == 0 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = QuestParent.HumanoidRootPart.CFrame
wait(0.3)
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
fireproximityprompt(QuestParent.ClickPart.ProximityPrompt, 20)
end
repeat wait()
until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("QuestTake")
game:GetService("Players").LocalPlayer.PlayerGui.QuestTake.Accept.RemoteEvent:FireServer()
ClickCFrame(1600,800)
end
end

function ClickCFrame(x,y) -- คลิกไปที่ cframe ที่เลือก (x,y)
CoreGui = game:GetService("CoreGui")
Players = game:GetService("Players")
VirtualInputManager = game:GetService("VirtualInputManager")
VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, 1)
VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, 1)
end

function Click() -- ฟังชั่นคลิกดักรีโมทตอนต่อยไม่ได้ใช้อันนี้แทน
	game:GetService'VirtualUser':CaptureController()
	game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function CheckLevel()
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Levels.Value
	if MyLevel >=1 and MyLevel <9 then
    _G.NameMon = "Bandit"
	QuestParent = game:GetService("Workspace").Quest.Quest1
elseif MyLevel >=10 and MyLevel <50 then
	_G.NameMon = "Village Guardian"
	QuestParent = game:GetService("Workspace").Quest.Quest2
elseif MyLevel >=50 and MyLevel <110 then --50 = 75
	_G.NameMon = "Katana User"
	QuestParent = game:GetService("Workspace").Quest.Quest3
	--[[
elseif MyLevel >=75 and MyLevel <110 then มันจะฟามบอสแต่ฟามม้อนได้เวลไวกว่าเลยตั้งไว้
	_G.NameMon = "Master of Katana"
	QuestParent = game:GetService("Workspace").Quest.Quest5
]]
elseif MyLevel >=110 and MyLevel <200 then --150
	_G.NameMon = "Alien"
	QuestParent = game:GetService("Workspace").Quest.Quest4
	--[[
elseif MyLevel >=150 and MyLevel <200 then เหมือนอันบน
	_G.NameMon = "Alien Captain"
	QuestParent = game:GetService("Workspace").Quest.Quest6
	]]
elseif MyLevel >=200 and MyLevel <250 then
	_G.NameMon = "Desert Bandit"
	QuestParent = game:GetService("Workspace").Quest.Quest7
elseif MyLevel >=250 and MyLevel <310 then
	_G.NameMon = "Fouty"
	QuestParent = game:GetService("Workspace").Quest.Quest8
elseif MyLevel >=310 and MyLevel <400 then
	_G.NameMon = "Chef"
	QuestParent = game:GetService("Workspace").Quest.Quest9
elseif MyLevel >=400 and MyLevel <450 then
	_G.NameMon = "Skull Battler"
	QuestParent = game:GetService("Workspace").Quest.Quest10
elseif MyLevel >=450 and MyLevel <525 then
	_G.NameMon = "Skull Swordsmith"
	QuestParent = game:GetService("Workspace").Quest.Quest11
elseif MyLevel >=525 and MyLevel <575 then
	_G.NameMon = "Fishman"
	QuestParent = game:GetService("Workspace").Quest.Quest12
elseif MyLevel >=575 and MyLevel <675 then
	_G.NameMon = "Fishman Lord"
	QuestParent = game:GetService("Workspace").Quest.Quest13
elseif MyLevel >=675 and MyLevel <700 then
	_G.NameMon = "Snow Fighter"
	QuestParent = game:GetService("Workspace").Quest.Quest14
elseif MyLevel >=700 and MyLevel <750 then
	_G.NameMon = "Yeti"
	QuestParent = game:GetService("Workspace").Quest.Quest15
elseif MyLevel >=750 and MyLevel <800 then
	_G.NameMon = "Devil"
	QuestParent = game:GetService("Workspace").Quest.Quest16
elseif MyLevel >=800 and MyLevel <850 then
	_G.NameMon = "Magma Warrior"
	QuestParent = game:GetService("Workspace").Quest.Quest17
elseif MyLevel >=850 and MyLevel <925 then
	_G.NameMon = "Crystal Miner"
	QuestParent = game:GetService("Workspace").Quest.Quest18
elseif MyLevel >=925 and MyLevel <975 then
	_G.NameMon = "Crystal"
	QuestParent = game:GetService("Workspace").Quest.Quest19
elseif MyLevel >=975 and MyLevel <1000 then
	_G.NameMon = "Tree Trooper"
	QuestParent = game:GetService("Workspace").Quest.Quest20
elseif MyLevel >=1000 and MyLevel <1500 then
	_G.NameMon = "Tree King"
	QuestParent = game:GetService("Workspace").Quest.Quest21
elseif MyLevel >=1500 and MyLevel <2000 then
	_G.NameMon = "Legendary Samurai"
	QuestParent = game:GetService("Workspace").Quest.Quest22
elseif MyLevel >=2000 and MyLevel <2450 then
	_G.NameMon = "Legendary Demon"
	QuestParent = game:GetService("Workspace").Quest.Quest23
elseif MyLevel >=2450 and MyLevel <2650 then
	_G.NameMon = "Biscuit Commander"
	QuestParent = game:GetService("Workspace").Quest.Quest24
elseif MyLevel >=2650 then
	_G.NameMon = "Mashmellow Commander"
	QuestParent = game:GetService("Workspace").Quest.Quest25
	end
end
--[[ อันนี้ test ฟังชั่น
Tab:AddButton({
    Name = "Get Quest",
    Callback = function()
		CheckLevel()
		GetQuest()
      end    
})
]]
-- อันนี้ฟังชั่นเอาไว้แก้บัคบางอย่าง
spawn(function()
	while true do wait(180)
pcall(function ()
	game:GetService("Players").LocalPlayer.PlayerGui.QuestBar.Background.Cancle.RemoteEvent:FireServer()
end)
	end
end)

Tab:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(Value)
        pcall(function()
_G.Auto_Farm = true
_G.NOCLIP = true
if Value then
    AutoFarm()
    else
        _G.Auto_Farm = false
        NoclipToFly:Destroy()
        _G.NOCLIP = false
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
end
end)
end
})

Tab:AddTextbox({
	Name = "Use Points",
	Default = tostring(_G.Point),
	TextDisappear = false,
	Callback = function(Value)
		_G.Point = Value
	OrionLib:MakeNotification({
	Name = "🙄",
	Content = "Use Points: ".. tostring(_G.Point),
	Image = "rbxassetid://4483345998",
	Time = 5
})
	end	  
})

Tab:AddToggle({
	Name = "Melee",
	Default = false,
	Callback = function(Value)
_G.Melee = Value
while _G.Melee do wait()
local args = {
    [1] = "Melee",
    [2] = tonumber(_G.Point)
}

game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
end
end
})

Tab:AddToggle({
	Name = "Health",
	Default = false,
	Callback = function(Value)
_G.Health = Value
while _G.Health do wait()
local args = {
    [1] = "MaxHealth",
    [2] = tonumber(_G.Point)
}

game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
end
end
})

Tab:AddToggle({
	Name = "Health",
	Default = false,
	Callback = function(Value)
_G.Health = Value
while _G.Health do wait()
local args = {
    [1] = "MaxHealth",
    [2] = tonumber(_G.Point)
}

game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
end
end
})

Tab:AddToggle({
	Name = "DevilFruit",
	Default = false,
	Callback = function(Value)
_G.DevilFruit = Value
while _G.DevilFruit do wait()
local args = {
    [1] = "DevilFruit",
    [2] = tonumber(_G.Point)
}

game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
end
end
})

Tab:AddToggle({
	Name = "Sword",
	Default = false,
	Callback = function(Value)
_G.Sword = Value
while _G.Sword do wait()
local args = {
    [1] = "Sword",
    [2] = tonumber(_G.Point)
}

game:GetService("ReplicatedStorage").StatSystem.Points:FireServer(unpack(args))
end
end
})

function AutoFarm()
	spawn(function()
	while _G.Auto_Farm == true do wait()
		pcall(function()
			EquipWeapon(tostring(_G.Weapon))
			CheckLevel()
			GetQuest()
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") and _G.Auto_Farm == true then
                    NoclipToFly = Instance.new("BodyVelocity")
                    NoclipToFly.Name = "BodyClip"
                    NoclipToFly.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    NoclipToFly.MaxForce = Vector3.new(100000,100000,100000)
                    NoclipToFly.Velocity = Vector3.new(0,0,0)
                elseif _G.Auto_Farm == false then
                    NoclipToFly:Destroy()
                end
			Click()
			for i,v in pairs(game.Workspace:GetChildren()) do
				if v.Name == tostring(_G.NameMon) and v.Humanoid.Health >0 then
					TP(v.HumanoidRootPart.CFrame * CFrame.new(0,0,3))
				end
			end
		end)
	end
	end)
end

function TP(CFrame)
    pcall(function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
    end)
end


function EquipWeapon(ToolSe)
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:WaitForChild(ToolSe)
			wait(.1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
	end
end

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if _G.NOCLIP == true then
				for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)
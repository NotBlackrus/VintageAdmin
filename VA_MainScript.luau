--[[

██████████████████████████████████████████████████████████████████████████████████████████████████████████████
█░░░░░░██░░░░░░█░░░░░░░░░░█░░░░░░██████████░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
█░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀░░█░░▄▀░░░░░░░░░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█░░▄▀░░██░░▄▀░░█░░░░▄▀░░░░█░░▄▀▄▀▄▀▄▀▄▀░░██░░▄▀░░█░░░░░░▄▀░░░░░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█░░▄▀░░░░░░░░░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░░░░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░█████████░░▄▀░░█████████
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░██░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█░░▄▀░░█████████░░▄▀░░░░░░░░░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░██░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀░░██░░░░░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█░░▄▀░░██░░▄▀░░███░░▄▀░░███░░▄▀░░██░░▄▀░░██░░▄▀░░█████░░▄▀░░█████░░▄▀░░░░░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░░░░░█
█░░▄▀▄▀░░▄▀▄▀░░███░░▄▀░░███░░▄▀░░██░░▄▀░░░░░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░██░░▄▀░░█░░▄▀░░█████████
█░░░░▄▀▄▀▄▀░░░░█░░░░▄▀░░░░█░░▄▀░░██░░▄▀▄▀▄▀▄▀▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀░░░░░░▄▀░░█░░▄▀░░░░░░░░░░█
███░░░░▄▀░░░░███░░▄▀▄▀▄▀░░█░░▄▀░░██░░░░░░░░░░▄▀░░█████░░▄▀░░█████░░▄▀░░██░░▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█░░▄▀▄▀▄▀▄▀▄▀░░█
█████░░░░░░█████░░░░░░░░░░█░░░░░░██████████░░░░░░█████░░░░░░█████░░░░░░██░░░░░░█░░░░░░░░░░░░░░█░░░░░░░░░░░░░░█
██████████████████████████████████████████████████████████████████████████████████████████████████████████████
	
	Vintage Admin is 100% customizable. Custom commands can be added if you know what you're doing.
	Please refrain from editing this script unless you are very familiar with Lua.
	Be warned that a lot of stuff is subject to change in the upcoming updates, and some variables/functions might just not be used ever!
]]--

require(script.VA_Commons:WaitForChild("Commons"))() --These two are the main reason why there is a bunch of underlined stuff, but it all still works!
require(script.VA_Commons:WaitForChild("Functions"))()

local ScriptsFolder = 			script:WaitForChild("Scripts")
local PropsFolder = 			script:WaitForChild("Props")
local GuisFolder = 				script:WaitForChild("Guis")
local CmdCategories = 			script:WaitForChild("CmdCategories")
local DefaultCommands = 		script:WaitForChild("VA_DefaultCommands")
local isNewestVersion = 		script:GetAttribute("NewestVersion") or false
local runService = 				serv.RunService::RunService
local ms = 						serv.MessagingService::MessagingService
local rs = 						serv.ReplicatedStorage::ReplicatedStorage
local ds = 						serv.DataStoreService::DataStoreService
local mps = 					serv.MarketplaceService::MarketplaceService
local gs = 						serv.GroupService::GroupService
local ts = 						serv.TweenService::TweenService
local us = 						serv.UserService::UserService
local plrs = 					serv.Players::Players
local is = 						serv.InsertService::InsertService
local ch = 						serv.Chat::Chat
local starterplr = 				serv.StarterPlayer::StarterPlayer
local sss = 					serv.ServerScriptService::ServerScriptService

script:WaitForChild("VA_Version").Parent = rs
local isMainPlace = game.GameId == 3909774638 or game.GameId == 3954110342
local Settings = require(rs:WaitForChild("VA_Settings"))

if Settings[13] == true then
	local softShutdown = ScriptsFolder:FindFirstChild("QuentySoftShutdown")
	softShutdown.Parent = sss
	for i,v in pairs(softShutdown:GetDescendants()) do
		if v:IsA("Script") or v:IsA("LocalScript") then
			v.Enabled = true
		end
	end
	softShutdown.Enabled = true
end

local localPlayerHandler = Clone(ScriptsFolder:WaitForChild("LocalPlayerHandler"),{Parent = starterplr.StarterPlayerScripts, Enabled = true})
local localCharacterHandler = Clone(ScriptsFolder:WaitForChild("LocalCharacterHandler"),{Parent = starterplr.StarterCharacterScripts, Enabled = true})

local MainGui = GuisFolder:WaitForChild("VintageAdminGUI",1)
local isStudio = runService:IsStudio()

local Leaderboard = ds:GetOrderedDataStore("VAdonatorLeaderboard")

local Success,Commands = pcall(function()
	local a = require(rs:WaitForChild("VA_Commands"))
	return a
end)
if not Success then
	Commands = require(DefaultCommands)
end

local EventsModule = rs:FindFirstChild("VA_Events") or script:FindFirstChild("VA_Events")
local debugMode = Settings[11] or false
local Prefix = Settings[1]
local HatBlacklist = Settings[15]
local DonorEnabled = Settings[14] or false
local Group
local Ranks

local blacklist = Create("Folder", {Parent = script, Name = "BlackList"})
local muteRemote = Create("RemoteEvent", {Parent = rs, Name = "muteRemote"})
local ServerToClientRemote = Create("RemoteEvent", {Parent = rs, Name = "ServerToClientRemote"})
local GamepassRemote = Create("RemoteEvent", {Parent = rs, Name = "GamepassRemote"})
local CheckRankRemote = Create("RemoteEvent", {Parent = rs, Name = "CheckRankRemote"})
local commandEvent = Create("BindableEvent", {Parent = rs, Name = "commandEvent"})
local MessageRemote = Create("RemoteEvent", {Parent = rs, Name = "MessageRemote"})
local MessageRemote2 = Create("RemoteEvent", {Parent = rs, Name = "MessageRemote2"})

local vaMAP = Create("Model", {Parent = rs, Name = "vintageMap"})
local Inserted = Create("Folder", {Parent = workspace, Name = "VA_Inserted"})

local GroupName
local GroupIcon

function _G.GetDataStore(name:string) --_G so that other server sided scripts can use it!
	local GlobalDataStore =	ds:GetDataStore(name)
	local DataStore =		newproxy(true)
	local DataStoreMeta =	getmetatable(DataStore)
	DataStoreMeta.__index = DataStoreMeta
	DataStoreMeta.__newindex = DataStoreMeta
	function DataStore:Load(key:string|number)
		local success:boolean,result:any? =	pcall(GlobalDataStore.GetAsync,GlobalDataStore,tostring(key))
		assert(success,("\nerror loading data:\n\n%s\n"):format(tostring(result)))
		return result
	end
	function DataStore:Save(key:string|number,val:any)
		local success:boolean,result:any? =	pcall(GlobalDataStore.UpdateAsync,GlobalDataStore,tostring(key),function() return val end)
		assert(success,("\nerror saving data:\n\n%s\n"):format(tostring(result)))
		return result
	end
	DataStoreMeta.__metatable = "locked"
	return DataStore
end
local GetDataStore =	_G.GetDataStore

local vads = 			GetDataStore("Bans")
local PlayerData = 		GetDataStore("VAplayerData")
local bds = 			GetDataStore("ModLog")
local warnData = 		GetDataStore("WarnData")

for i, q in pairs(workspace:GetChildren()) do
	if not game.Players:GetPlayerFromCharacter(q) then
		if q:IsA("Terrain") then continue end
		local succ, err = pcall(function()
			Clone(q, {Parent = vaMAP})
		end)
		assert(succ,"Vintage Admin: failed to clone "..tostring(q).." into vintageMap")
	end
end

if not isStudio then
	--[[This does nothing special, pls don't delete this lol]]--
	print("\n👋 Hello! 👋\n💚This game uses Vintage Admin!💚\n👍 Have fun! 👍")
end

CheckRankRemote.OnServerEvent:Connect(function(plr:Player) --for the Admins gui
	local GroupAdmins = Settings[2]
	local Admins = {
		["Interns"] = Settings[3],
		["Moderators"] = Settings[4],
		["Administrators"] = Settings[5],
		["Super Administrators"] = Settings[6],
		["CoOwners"] = Settings[7],
	}
	CheckRankRemote:FireClient(plr,GroupAdmins,Admins)
end)

local Success,TopBar = pcall(function() --Setting up TopBarPlus
	return rs:FindFirstChild("Icon")
end)
if not Success or not TopBar then
	local TopBarModel = is:LoadAsset(6311707237)
	TopBar = TopBarModel:FindFirstChild("Icon")
	TopBar.Parent = rs
	TopBarModel:Destroy()
end

local function SavePlayerData(ID:number,P:number,Force:boolean)
	local DataTable = PlayerData:Load(tostring(ID))
	if DataTable then
		if Force == false then
			if P > 0 and P > DataTable["Power"] then
				DataTable["Power"] = P
			end
		else
			DataTable["Power"] = P
		end
	else
		DataTable = {
			["Power"] = P,
		}
	end
	PlayerData:Save(ID,DataTable)
end

local function SetPlayerPower(p:Player,notify:boolean,forceRank:number) --Setting up the player's power
	local ID = 0
	local Powa = 0
	local isPlayer = false
	local UserInfo
	if tonumber(p) ~= nil then
		if us:GetUserInfosByUserIdsAsync({p}) then
			UserInfo = us:GetUserInfosByUserIdsAsync({p})
		end
	end

	if UserInfo then
		for m,userInfo in ipairs(UserInfo) do
			ID = userInfo.Id
		end
	elseif p:IsA("Player") then
		ID = p.UserId
		isPlayer = true
	else
		return false
	end

	if mps:UserOwnsGamePassAsync(ID,203325608) == true and DonorEnabled then
		Powa = 1
	end
	if mps:UserOwnsGamePassAsync(ID,250621171) == true and DonorEnabled then
		Powa = 1
	end

	for i,v in pairs(Settings[2]) do
		Group = i;
		local rnk
		if UserInfo then
			local groupInfo = gs:GetGroupsAsync(p)
			for num,val in ipairs(groupInfo) do
				if val["Id"] == Group then
					rnk = val["Rank"]
				end
			end
		elseif p:IsA("Player") then
			rnk = p:GetRankInGroup(Group)
		end
		Ranks = v

		for r,p0wer in pairs(Ranks) do
			if r == rnk then
				Powa = p0wer
			end
		end

		if rnk == 255 then
			Powa = 7
		end
	end

	for i,r in pairs(Settings[3]) do
		if ID == r then
			Powa = 2
		end
	end

	for i,r in pairs(Settings[4]) do
		if ID == r then
			Powa = 3
		end
	end

	for i,r in pairs(Settings[5]) do
		if ID == r then
			Powa = 4
		end
	end

	for i,r in pairs(Settings[6]) do
		if ID == r then
			Powa = 5
		end
	end

	for i,r in pairs(Settings[7]) do
		if ID == r then
			Powa = 6
		end
	end

	if forceRank ~= 0 then
		if Powa < forceRank then
			Powa = forceRank
		end
	end

	if game.CreatorType == Enum.CreatorType.User then
		if game.CreatorId == ID then
			Powa = 7
		end
	end

	SavePlayerData(ID,Powa,true)

	if debugMode == true then
		Powa = 7
	end

	if notify == true and isPlayer == true then
		CheckRankRemote:FireClient(p,Powa)
	end
	return Powa
end

local function warnGui(user, reason) --Places the warning screen on the user's screen
	if plrs:GetPlayerByUserId(user) then
		local plr = plrs:GetPlayerByUserId(user)
		local gui = GuisFolder.Warning:Clone()
		gui.Parent = plr.PlayerGui:WaitForChild("VintageAdminGUI")
		if Settings[2] ~= nil then
			local groupId
			for i,v in pairs(Settings[2]) do
				groupId = i
			end
			local group = gs:GetGroupInfoAsync(groupId)
			gui.GroupName.Text = tostring(group.Name)
			gui.GroupIcon.Image = tostring(group.EmblemUrl)
		else
			gui.GroupName.Text = game.Name
		end
		gui.Warn.Text = 'You have been warned for: "'..tostring(reason)..'".'
		gui.Accept.MouseButton1Click:Connect(function() --And for when the player understands what they did
			gui:Destroy()
			warnData:SetAsync(plr.UserId,"")
		end)
	end
end

GamepassRemote.OnServerEvent:Connect(function(p,gamepassID)
	if gamepassID ~= 250621171 and gamepassID ~= 203325608 then return end --Simple way to prevent exploiters
	mps:PromptGamePassPurchase(p,gamepassID)
end)

mps.PromptGamePassPurchaseFinished:Connect(function(p:Player,gamepassID,isPurchased)
	if isPurchased == true and gamepassID == 250621171 or isPurchased == true and gamepassID == 203325608 then --Checking if they bought donator rank
		SetPlayerPower(p,true,1)
		GamepassRemote:FireClient(p,gamepassID)
		Leaderboard:SetAsync(p.UserId,30)
	end
end)

local function hasSpecial(st:string) --Returns true or false depending on if the given string has any special characters that aren't the prefix
	local function find(str:string,finding:string)
		local thing
		if finding == "%"..Prefix then
			thing = string.find(str,finding,2)
		else
			thing = string.find(str,finding)
		end
		if thing == nil then return false else return true end
	end
	if find(st,"%(") or find(st,"%)") or find(st,"%[") or find(st,"%]") or find(st,"%>")
		or find(st,"%<") or find(st,"%!") or find(st,"%?") or find(st,"%,") or find(st,"%.")
		or find(st,"\\") or find(st,"%-") or find(st,"%+") or find(st,"%=") or find(st,"%_")
		or find(st,"%&") or find(st,"%^") or find(st,"%%") or find(st,"%$") or find(st,"%#")
		or find(st,"%@") or find(st,"%`") or find(st,"%~") or find(st,"%{") or find(st,"%}")
		or find(st,"%/") or find(st,"%*") or find(st,"%:") or find(st,"%;") then
		return true
	else
		return false
	end
end

local playersConnected = {}
local function Initialize(p:Player)
	local ServerLocked = script:GetAttribute("ServerLocked")
	local pPower = GetPlayerPower(p)
	if ServerLocked and pPower < 2 then
		p:Kick("This server has been locked, sorry!")
		return
	end
	table.insert(playersConnected,p.UserId)
	if not game:GetService("StarterGui"):FindFirstChild("VintageAdminGUI") then
		local NewGui = Clone(MainGui,{Parent = p.PlayerGui})
		SetAllScriptDescendants(NewGui,true)
	end
	p.CharacterAppearanceLoaded:Connect(function(character)
		for _, g in pairs(character:GetDescendants()) do
			if g:IsA("BasePart") then
				g:SetAttribute('ogSize', g.Size)
			end
			if g:IsA("Motor6D") or g:IsA("Weld") then
				g:SetAttribute('ogC0', g.C0.Position)
				g:SetAttribute('ogC1', g.C1.Position)
			end
			if g:IsA("SpecialMesh")then
				g:SetAttribute('ogSize', g.Scale)
			end
		end
	end)
	if isMainPlace then
		SetPlayerPower(p,true,3)
	else
		SetPlayerPower(p,true,0)
	end	

	for _,ofndrs in pairs(Settings[9]) do --Removes you if you're in the Settings' ban list
		if p.UserId == ofndrs then
			p:Kick(Settings[8]['default'])
		end
	end

	if p.AccountAge < Settings[10] then --Removes you if your account is under the given age requirement in Settings
		p:Kick(Settings[8]['playerage'])
	end

	local banInfo = vads:Load(p.UserId)
	if banInfo ~= nil then
		if banInfo.isBanned == true then
			if banInfo.banTime == "inf" then
				if Settings[8][banInfo.banReason] then
					p:Kick(Settings[8][banInfo.banReason])
				else
					p:Kick("You have been banned: "..banInfo.banReason)
				end
			else
				local timeRemaining = (banInfo.EndTime - os.time())/86400
				if timeRemaining <= 0 then
					local banInfo = {
						banReason = '',
						banTime = '',
						howLong = '',
						initialBanTime = '',
						isBanned = false,
					}
					vads:Save(p.UserId, banInfo)
				else
					p:Kick(Settings[8][banInfo.banReason].." You will automatically be unbanned in "..math.round(timeRemaining).." days.")
				end
			end
		end
	end
	if blacklist:FindFirstChild(p.Name) then
		p:Kick(Settings[8]['serverban'])
	end

	local WarnUponEntry = pcall(function() --If they didn't press "I understand" before leaving the game, the warn will remain on their screen
		if warnData:Load(p.UserId) ~= nil and warnData:Load(p.UserId) ~= "" then
			warnGui(p.UserId,warnData:GetAsync(p.UserId))
		end
	end)

	p.Chatted:Connect(function(message)
		local lowermessage = string.lower(message)
		local lowersplit = lowermessage:split(" ")
		local Split = message:split(" ")
		local FoundCommand = false
		local hasPrefix = false
		for i, Category in pairs(Commands) do
			for Command,Data in pairs(Category) do
				for index,m in pairs(lowersplit) do
					local SupposedCommand = "NotIt" --probably the only command name you CAN'T use, kinda lazy of me tbh.
					if string.find(m,Prefix) then
						if not hasSpecial(m) then
							hasPrefix = true
						else 
							continue
						end
					end
					if m == Prefix..string.lower(Command) then
						SupposedCommand = tostring(Command)
					end
					if Data["Abbreviations"] then
						for a,v in pairs(Data["Abbreviations"]) do
							if m == Prefix..string.lower(v) then
								SupposedCommand = tostring(Command)
							end
						end
					end
					if SupposedCommand ~= "NotIt" then
						FoundCommand = true
						local Arguments = table.concat(lowersplit," ",index+1,table.maxn(lowersplit))
						local RealArguments = table.concat(Split," ",index+1,table.maxn(Split))
						commandEvent:Fire(p,SupposedCommand,{["Arguments"] = Arguments,["Data"] = Data, ["RealArguments"] = RealArguments})
					else
						continue
					end
				end
			end
		end
		if isNewestVersion and not FoundCommand then
			for i, Category in pairs(require(DefaultCommands)) do --Goes into default commands that I set up in the auto updated script!!!!!
				for Command,Data in pairs(Category) do
					for index,m in pairs(lowersplit) do
						local SupposedCommand = "NotIt"
						if string.find(m,Prefix) then
							if not hasSpecial(m) then
								hasPrefix = true
							else 
								continue
							end
						end
						if m == Prefix..string.lower(Command) then
							SupposedCommand = tostring(Command)
						end
						if Data["Abbreviations"] then
							for a,v in pairs(Data["Abbreviations"]) do
								if m == Prefix..string.lower(v) then
									SupposedCommand = tostring(Command)
								end
							end
						end
						if SupposedCommand ~= "NotIt" then
							FoundCommand = true
							local Arguments = table.concat(lowersplit," ",index+1,table.maxn(lowersplit))
							local RealArguments = table.concat(Split," ",index+1,table.maxn(Split))
							commandEvent:Fire(p,SupposedCommand,{["Arguments"] = Arguments,["Data"] = Data, ["RealArguments"] = RealArguments})
						else
							continue
						end
					end
				end
			end
		end
		if FoundCommand == false and hasPrefix then
			MessageRemote:FireClient(p,"Uh oh!","We could not run the given command because that command does not exist!","Error")
		end
	end)
end

plrs.PlayerAdded:Connect(Initialize)
plrs.PlayerRemoving:Connect(function(p)
	table.remove(playersConnected,table.find(playersConnected,p.UserId))
end)
for i,v in pairs(plrs:GetChildren()) do --Just in case the script loaded after the first PlayerAdded event was fired
	if v:IsA("Player") and not table.find(playersConnected,v.UserId) then
		Initialize(v)
	end
end



ms:SubscribeAsync("Kick",function(Table) --The concept of multi-server moderation is baffling
	local ID = Table["Data"]
	if tonumber(ID) == nil then warn("Data recieved for kicking message is incorrect!") end
	for i,v in pairs(plrs:GetChildren()) do
		if v:IsA('Player') then
			if v.UserId == tonumber(ID) then
				v:Kick(Settings[8]["kick"])
			end
		end
	end
end)
ms:SubscribeAsync("Warn",function(Table) --Ditto to the last comment
	local Data = Table["Data"]
	local Split = Data:split(",")
	local ID = Split[1]
	local Reason = Split[2]
	for i,v in pairs(plrs:GetChildren()) do
		if v:IsA('Player') then
			if v.UserId == tonumber(ID) then
				warnGui(ID,Reason)
			end
		end
	end
end)
ms:SubscribeAsync("VA_GlobalAnnouncement",function(Table) --Woah! Global announcements! Crazy!
	local Data = Table["Data"]
	MessageRemote2:FireAllClients(Data["Header"],Data["Msg"],10,true,Data["Icon"])
end)

ServerToClientRemote.OnServerEvent:Connect(function(plr,command) --I know it's called "ServerToClient" but it goes both ways.
	local pPower = GetPlayerPower(plr)
	if command == "Taunt" then
		local TauntCommand = Commands.CharacterCmds.Taunt
		if pPower < TauntCommand["Power"] then --Checks if they can REALLY have the power level required to use the "Taunt" command
			commandEvent:Fire(nil,"Ban",{["Arguments"] = plr.UserId.." exploiting",["Data"] = Commands.Ban, ["RealArguments"] = plr.UserId.." exploiting"})
			return
		end
		local randomtaunt = math.random(1,6)
		local tauntId = Settings[12][randomtaunt]
		local tauntInstance = Instance.new("Animation")
		tauntInstance.AnimationId = tauntId
		local hum = plr.Character:FindFirstChildOfClass("Humanoid")
		local animator = hum:FindFirstChildOfClass("Animator")
		local taunt = animator:LoadAnimation(tauntInstance)
		local hrp = plr.Character:FindFirstChild("HumanoidRootPart")
		local TauntCount = tonumber(hrp:GetAttribute("Taunt"))
		if tonumber(TauntCount) ~= nil then TauntCount += 1; hrp:SetAttribute("Taunt",TauntCount) else TauntCount = 1; hrp:SetAttribute("Taunt",1) end
		local tauntBackground = hrp:FindFirstChild("Taunt")
		if tauntBackground == nil then return end
		local tauntSound = tauntBackground:FindFirstChildOfClass("Sound"):Clone()
		if tauntSound == nil then return end
		tauntSound.Parent = hrp
		hrp.Anchored = true
		taunt:Play(0,1,1)
		tauntBackground:Emit(1)															--VERY lazy coding on my end
		tauntSound:Remove()
		task.wait(0.5)
		taunt:Stop(0)
		local NewTauntCount = tonumber(hrp:GetAttribute("Taunt"))
		NewTauntCount = NewTauntCount-1
		hrp:SetAttribute("Taunt",NewTauntCount)
		if NewTauntCount == 0 or NewTauntCount == nil then
			hrp.Anchored = false
		end
	end
end)

commandEvent.Event:Connect(function(player,SupposedCommand:string,info,...) --Main handler for doing commands
	local ExtraArgs = {...}
	local pPower = GetPlayerPower(player)
	if player == nil then pPower = 7; player = nil end
	local Data = info["Data"]
	if pPower >= Data["Power"] then
		local CommandSuccess,CommandError = pcall(function()
			if isNewestVersion then 										--Checks if the user is using the auto updater or not
				local ran = false
				for category, cmd in pairs(Commands) do
					local CMDModule = require(CmdCategories:FindFirstChild(category))
					if Commands[category][tostring(SupposedCommand)] ~= nil then
						ran = true
						CMDModule[SupposedCommand](player, pPower, info, ExtraArgs)
						return
					end
				end
				if not ran then												--If their commands module is broken it will try to do the default commands
					for category,cmd in pairs(require(DefaultCommands)) do
						local CMDModule = require(CmdCategories:FindFirstChild(category))
						if require(DefaultCommands)[category][tostring(SupposedCommand)] ~= nil then
							ran = true
							CMDModule[SupposedCommand](player, pPower, info, ExtraArgs)
							return
						end
					end
				end
			else
				for category, cmd in pairs(Commands) do						--No "default module" support if theirs isn't auto updated because they should be smart enough
					local CMDModule = require(CmdCategories:FindFirstChild(category))
					if Commands[category][tostring(SupposedCommand)] ~= nil then
						CMDModule[SupposedCommand](player, pPower, info, ExtraArgs)
						return
					end
				end
			end
		end)
		if not CommandSuccess then
			MessageRemote:FireClient(player,"Error:","An error occurred: "..tostring(CommandError),"Error") --Simple error handler for the commands
			error(CommandError)
		end
	else
		MessageRemote:FireClient(player,"Uh oh!","You don't have enough Power in the Power Card!","Error") --pls get the reference
	end
end)

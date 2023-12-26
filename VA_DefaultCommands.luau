--[[
Hey there! You're not supposed to be here, this is meant to serve as a default in case the one you modified does not work and/or is missing
a command that we included!
--]]
local Settings = require(game:GetService("ReplicatedStorage"):WaitForChild("VA_Settings"))
local Prefix = Settings[1]

local Commands = {
	CharacterCmds = { -- THIS CATEGORY IS FOR THE GOOD STUFF (FUN!)
		Jolly = {
			["Power"] = 2,
			["Abusable"] = true,
			["Bio"] = Prefix.."Jolly me",
			["Abbreviations"] = {
				"Santa",
				"Xmas",
			}
		},
		Speed = {
			["Power"] = 1,
			["Abusable"] = false,
			["DonorCap"] = 60,
			["Bio"] = Prefix.."Speed me 16",
			["Abbreviations"] = {
				"Sp",
				"WalkSpeed",
			}
		},
		JumpPower = {
			["Power"] = 1,
			["Abusable"] = false,
			["DonorCap"] = 75,
			["Bio"] = Prefix.."JumpPower me 50",
			["Abbreviations"] = {
				"Jp"
			};
		},
		Fly = {
			["Power"] = 3,
			["Bio"] = Prefix.."Fly me",
			["Abusable"] = false,
		},
		Unfly = {
			["Power"] = 3,
			["Bio"] = Prefix.."Unfly me",
			["Abusable"] = false,
		},
		Invisible = {
			["Power"] = 2,
			["Bio"] = Prefix.."Invisible me",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Invis",
				"Inv"
			}
		},
		Visible = {
			["Power"] = 2,
			["Bio"] = Prefix.."Visible me",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Vis"
			}
		},
		Disguise = {
			["Power"] = 3,
			["Bio"] = Prefix.."Disguise Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Nick",
				"Spy"
			}
		},
		Undisguise = {
			["Power"] = 3,
			["Bio"] = Prefix.."Undisguise",
			["Abusable"] = false,
			["Abbreviations"] = {
				"UnNick",
				"UnSpy"
			}
		},
		Taunt = {
			["Power"] = 2,
			["Bio"] = Prefix.."Taunt",
			["Abusable"] = false,
		},
		Fire = {
			["Power"] = 1,
			["Bio"] = Prefix.."Fire me size(number)",
			["Abusable"] = false,
			["DonorCap"] = 10,
		},
		UnFire = {
			["Power"] = 1,
			["Bio"] = Prefix.."UnFire me",
			["Abusable"] = false,
		},
		Size = {
			["Power"] = 3,
			["Bio"] = Prefix.."Size me size(number)",
			["Abusable"] = false,
		},
		Sparkles = {
			["Power"] = 1,
			["Bio"] = Prefix.."Sparkles me",
			["Abusable"] = false,
		},
		UnSparkles = {
			["Power"] = 1,
			["Bio"] = Prefix.."UnSparkles me",
			["Abusable"] = false,
		},
		Sword = {
			["Power"] = 2,
			["Bio"] = Prefix.."Sword me",
			["Abusable"] = true,
		},
		Explode = {
			["Power"] = 3,
			["Bio"] = Prefix.."Explode Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Ex"
			}
		},
		Nuke = {
			["Power"] = 5,
			["Bio"] = Prefix.."Nuke Username",
			["Abusable"] = true,
		},
		ForceField = {
			["Power"] = 2,
			["Bio"] = Prefix.."ForceField me",
			["Abusable"] = true,
			["Abbreviations"] = {
				"Ff"
			}
		},
		UnForceField = {
			["Power"] = 2,
			["Bio"] = Prefix.."UnForceField me",
			["Abusable"] = true,
			["Abbreviations"] = {
				"UnFf"
			}
		},
		Fling = {
			["Power"] = 3,
			["Bio"] = Prefix.."Fling Username",
			["Abusable"] = false,
		},
		Superfling = {
			["Power"] = 4,
			["Bio"] = Prefix.."Superfling Username",
			["Abusable"] = false,
		},
		--	Disco = 2,
		--	Undisco = 2,
		--	Rope = 2,
		Backrooms = {
			["Power"] = 4,
			["Bio"] = Prefix.."Backrooms Username",
			["Abusable"] = true,
			["Abbreviations"] = {
				"BR"
			}
		},
		God = {
			["Power"] = 2,
			["Bio"] = Prefix.."God me",
			["Abusable"] = true,
		},
		UnGod = {
			["Power"] = 2,
			["Bio"] = Prefix.."UnGod me",
			["Abusable"] = false,
		},
		Gear = {
			["Power"] = 3,
			["Bio"] = Prefix.."Gear me gearId(number)",
			["Abusable"] = true,
			["Abbreviations"] = {
				"Tool"
			}
		},
		--	Kidnap = 3,
		Paint = {
			["Power"] = 1,
			["Bio"] = Prefix.."Paint me Red(0-255) Green(0-255) Blue(0-255)",
			["Abusable"] = false,
			["Abbreviations"] = {
				"CRM",
				"Color",
				"Colour",
			}
		},
		UnPaint = {
			["Power"] = 1,
			["Bio"] = Prefix.."UnPaint me",
			["Abusable"] = false,
			["Abbreviations"] = {
				"UnCRM",
				"UnColor",
				"UnColour",
			}
		},
		F3X = {
			["Power"] = 4,
			["Bio"] = Prefix.."F3x",
			["Abusable"] = true,
			["Abbreviations"] = {
				"BTools",
			}
		},
		Hat = {
			["Power"] = 1,
			["Bio"] = Prefix.."Hat me hatId(number)",
			["Abusable"] = false,
		},
		Shirt = {
			["Power"] = 1,
			["Bio"] = Prefix.."Shirt me shirtId(number)",
			["Abusable"] = false,
		},
		Pants = {
			["Power"] = 1,
			["Bio"] = Prefix.."Pants me pantsId(number)",
			["Abusable"] = false,
		},
		RemoveHats = {
			["Power"] = 1,
			["Bio"] = Prefix.."RemoveHats me",
			["Abusable"] = false,
			["Abbreviations"] = {
				"rHats",
				"ClearHats",
				"RemoveAccessories",
				"rAccessories",
				"ClearAccessories",
				"iHateAccessories>:(",
				"Bald",
			}
		},
		RemoveHat = {
			["Power"] = 1,
			["Bio"] = Prefix.."RemoveHat me hatId(number)",
			["Abusable"] = false,
			["Abbreviations"] = {
				"rHat",
				"ClearHat",
				"RemoveAccessory",
				"rAccessory",
				"ClearAccessory",
				"iHateAccessory>:(",
			}
		},
		Ragdoll = {
			["Power"] = 3,
			["Bio"] = Prefix.."Ragdoll me",
			["Abusable"] = true,
			["Abbreviations"] = {
				"rag",
			}
		},
		UnRagdoll = {
			["Power"] = 2,
			["Bio"] = Prefix.."UnRagdoll me",
			["Abbreviations"] = {
				"UnRag",
			}
		},
		Smite = {
			["Power"] = 3,
			["Bio"] = Prefix.."Smite Username",
			["Abbreviation"] = {
				"Judgement",
			},
		},
		Rope = {
			["Power"] = 3,
			["Bio"] = Prefix.."Rope Username",
		},
		UnRope = {
			["Power"] = 3,
			["Bio"] = Prefix.."UnRope Username",
		},
		Animation = {
			["Power"] = 2,
			["Bio"] = Prefix.."Animation Username AnimationId(number)",
			["Abbreviations"] = {
				"Dance",
			},
		},
		Spin = {
			["Power"] = 2,
			["Bio"] = Prefix.."Spin Username",
		},
		UnSpin = {
			["Power"] = 2,
			["Bio"] = Prefix.."UnSpin Username",
		},
		Dog = {
			["Power"] = 2,
			["Bio"] = Prefix.."Dog Username",
		},
		Creeper = {
			["Power"] = 2,
			["Bio"] = Prefix.."Creeper Username",
		},
		--	ConnectionTerminated = 5,
	},
	
	
	ModerationCmds = { -- THIS CATEGORY IS FOR MODERATING COMMANDS
		To = {
			["Power"] = 3,
			["Abusable"] = true,
			["Bio"] = Prefix.."To Username",
			["Abbreviations"] = {
				"TpTo"
			}
		},		
		Teleport = {
			["Power"] = 3,
			["Bio"] = Prefix.."Teleport me you",
			["Abusable"] = true,
			["Abbreviations"] = {
				"Tp",
			}
		},
		Bring = {
			["Power"] = 3,
			["Bio"] = Prefix.."Bring Username",
			["Abusable"] = true,
			["Abbreviations"] = {
				"B"
			}
		},
		Kill = {
			["Power"] = 3,
			["Bio"] = Prefix.."Kill Username",
			["Abusable"] = true,
		},
		Kick = {
			["Power"] = 3,
			["Bio"] = Prefix.."Kick Username",
			["Abusable"] = false,
		},
		Serverban = {
			["Power"] = 3,
			["Bio"] = Prefix.."Serverban Player(Username/UserId) Reason",
			["Abusable"] = false,
			["Abbreviations"] = {
				"ServBan"
			}
		},
		Ban = {
			["Power"] = 3,
			["Bio"] = Prefix.."Ban Player(Username/UserId) Reason",
			["Abusable"] = false,
			["Abbreviations"] = {
				"PermBan",
				"PBan"
			}
		},
		TempBan = {
			["Power"] = 3,
			["Bio"] = Prefix.."TempBan Player(Username/UserId) HowLong(number) Reason",
			["Abusable"] = false,
			["Abbreviations"] = {
				"TBan",
			}
		},
		UnBan = {
			["Power"] = 4,
			["Bio"] = Prefix.."UnBan UserId(number)",	
			["Abusable"] = false,
		},
		BanConsole = {
			["Power"] = 4,
			["Bio"] = Prefix.."BanConsole",
			["Abusable"] = false,
			["Abbreviations"] = {
				"BanC",
				"Console",
				"BanTerminal"
			}
		},
		Logs = {
			["Power"] = 2,
			["Bio"] = Prefix.."Logs",
			["Abusable"] = false
		},
		Watch = {
			["Power"] = 3,
			["Bio"] = Prefix.."Watch Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"W"
			}
		},
		Unwatch = {
			["Power"] = 3,
			["Bio"] = Prefix.."Unwatch",
			["Abusable"] = false,
			["Abbreviations"] = {
				"UnW"
			}
		},
		Shutdown = {
			["Power"] = 5,
			["Bio"] = Prefix.."Shutdown",
			["Abusable"] = true, --technically it is :shrug:
		},
		Warn = {
			["Power"] = 3,
			["Bio"] = Prefix.."Warn Username",
			["Abusable"] = true,
		},
		Refresh = {
			["Power"] = 1,
			["Bio"] = Prefix.."Refresh me",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Re"
			}
		},
		Respawn = {
			["Power"] = 1,
			["Bio"] = Prefix.."Respawn me",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Spawn"
			}
		},
		Announce = {
			["Power"] = 4,
			["Bio"] = Prefix.."Announce",
			["Abusable"] = true,
			["Abbreviations"] = {
				"M",
				"Announcement",
				"An",
				"Message",
				"MessageSender",
				"MS"
			}
		},
		Mute = { --YOU WATCH YOUR TONE!!!!
			["Power"] = 3,
			["Bio"] = Prefix.."Mute Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"ShutUp",
				"WatchYoTone",
				"Silence",
			}
		},
		UnMute = { --You don't have to watch your tone anymore. :)
			["Power"] = 3,
			["Bio"] = Prefix.."UnMute Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"HeresTheTalkingStick",
				"Speak",
				"UnSilence",
			}
		},
		Remap = {
			["Power"] = 4,
			["Bio"] = Prefix.."Remap",
			["Abusable"] = true,
		},
		RemoveTools = {
			["Power"] = 3,
			["Bio"] = Prefix.."RemoveTools Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Rtools"
			}
		},
		Anchor = {
			["Power"] = 3,
			["Bio"] = Prefix.."Anchor Username",
			["Abusable"] = true,
		},
		UnAnchor = {
			["Power"] = 3,
			["Bio"] = Prefix.."UnAnchor Username",
			["Abusable"] = true,
		},
		Jail = {
			["Power"] = 3,
			["Bio"] = Prefix.."Jail Username",
			["Abusable"] = true,
		},
		UnJail = {
			["Power"] = 3,
			["Bio"] = Prefix.."UnJail Username",
			["Abusable"] = true,
		},
		Freeze = {
			["Power"] = 3,
			["Bio"] = Prefix.."Freeze Username",
			["Abusable"] = true,
			["Abbreviations"] = {
				"Ice",
				"Frozen",
				"Blizzard"
			}
		},
		UnFreeze = {
			["Power"] = 3,
			["Bio"] = Prefix.."UnFreeze Username",
			["Abusable"] = true,
			["Abbreviations"] = {
				"Thaw"
			}
		},
	},
	
	
	OtherCmds = { -- THIS CATEGORY IS FOR EXTRA AND/OR MISCELLANEOUS COMMANDS
		CheckPower = {
			["Power"] = 3,
			["Abusable"] = false,
			["Bio"] = Prefix.."CheckPower me",
			["Abbreviations"] = {
				"Check",
				"PowerCheck",
				"CheckRank",
				"RankCheck",
			}
		},
		Ping = {
			["Power"] = 0,
			["Abusable"] = false,
			["Bio"] = Prefix.."Ping",
		},
		Insert = {
			["Power"] = 4,
			["Bio"] = Prefix.."Insert modelId(number)",
			["Abusable"] = false,
		},
		Clear = {
			["Power"] = 4,
			["Bio"] = Prefix.."Clear",
			["Abusable"] = false,
		},
		RemoveMorph = {
			["Power"] = 3,
			["Bio"] = Prefix.."RemoveMorph Username",
			["Abusable"] = true,
			["Abbreviations"] = {
				"RMorph"
			}
		},
		CommandBar = {
			["Power"] = 2,
			["Bio"] = Prefix.."CommandBar",
			["Abusable"] = false,
			["Abbreviations"] = {
				"CmdBar",
				"CBar",
				"CB",
			}
		},
		Rejoin = {
			["Power"] = 0,
			["Bio"] = Prefix.."Rejoin",
			["Abusable"] = false,
		},
		Block = {
			["Power"] = 0,
			["Bio"] = Prefix.."Block Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Hide",
			}
		},
		UnBlock = {
			["Power"] = 0,
			["Bio"] = Prefix.."UnBlock Username",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Unhide",
			}
		},
		Badge = {
			["Power"] = 4,
			["Bio"] = Prefix.."Badge me badgeId(number)",
			["Abusable"] = true,
		},
		Event = {
			["Power"] = 4,
			["Bio"] = Prefix.."Event EventName",
			["Abusable"] = true,
			["Abbreviations"] = {
				"RunEvent"
			}
		},
		FogEnd = {
			["Power"] = 3,
			["Bio"] = Prefix.."FogEnd 0-2000",
			["Abusable"] = false,
		},
		FogStart = {
			["Power"] = 3,
			["Bio"] = Prefix.."FogStart 0-2000",
			["Abusable"] = false,
		},
		FogColor = {
			["Power"] = 3,
			["Bio"] = Prefix.."FogColor Red(0-255) Green(0-255) Blue(0-255)",
			["Abusable"] = false,
		},
		TimeOfDay = {
			["Power"] = 3,
			["Bio"] = Prefix.."TimeOfDay 0-12",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Time"
			}
		},
		Sit = {
			["Power"] = 1,
			["Bio"] = Prefix.."Sit me",
			["Abusable"] = false,
		},
		Music = {
			["Power"] = 3,
			["Bio"] = Prefix.."Music SongId(number)",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Song",
				"PlaySong",
				"PlayMusic",
			},
		},
		StopMusic = {
			["Power"] = 3,
			["Bio"] = Prefix.."StopMusic",
			["Abusable"] = false,
			["Abbreviations"] = {
				"Stop",
				"StopSong",
			},
		},
		CharMusic = {
			["Power"] = 2,
			["Bio"] = Prefix.."CharMusic Song(number)/Username Username/Song(number)",
			["Abusable"] = false,
			["Abbreviations"] = {
				"CharacterMusic",
				"CharSong",
				"LocalSong",
			},
		},
	},
}

return Commands

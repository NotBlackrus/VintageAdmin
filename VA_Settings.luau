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

	  This, is Vintage Admin commands.
	  These admin commands were created by Blackrus (@NotBlackrus) and designed by Log (@LoginedGuest).
	  Have fun, these admin commands might update frequently if Blackrus doesn't have a life. [[They will update frequently.]]
--]]

local BanList = {1234567890} -- Anyone you put on the banlist will not be able to join the game

local PlayerAgeRequirement = 0 -- Insert 0 if there is no age requirement, number = how many days old the account is

local BanMessages = {
	default = 'You have been permanently banned. Please contact a Administrator or higher if you think this was a mistake.',
	hacking = 'You have been permanently banned for exploiting/hacking. Your account has been correctly banned and will not be appealed.',
	exploiting = 'You have been permanently banned for exploiting/hacking. Your account has been correctly banned and will not be appealed.',
	adult = 'You have been permanently banned for encouragement/engaging in 18+ activities. Your account has been correctly banned and will not be appealed.',
	adultery = 'You have been permanently banned for encouragement/engaging in 18+ activities. Your account has been correctly banned and will not be appealed.',
	rules = 'You have been permanently banned for breaking the rule(s). Please contact a moderator or higher if you think this was a mistake.',
	trolling = 'You have been permanently banned for trolling/harassing users. Please contact a moderator or higher if you think this was a mistake.',
	tos = 'You have been permanently banned for breaking the Roblox ToS. Your account has been correctly banned and will not be appealed.',
	temp = 'You have been temporarily banned for breaking the rule(s).',
	serverban = 'You have been banned from this server. You are allowed to play on any other server.',
	kick = 'You have been kicked from the server.',
	playerage = 'Your account is not old enough to join this game! Please return when your account is '..tostring(PlayerAgeRequirement)..' days old!',
	crossover = 'You have been permanently banned for using crossover characters. Please contact a moderator or higher if you think this was a mistake.',
	bannedcharacter = 'You have been permanently banned for using banned characters. Please contact a moderator or higher if you think this was a mistake.',
	spam = 'You have been permanently banned for spamming. Please contact a moderator or higher if you think this was a mistake.',
	bypassing = 'You have been permanently banned for bypassing the chat filter. Your account has been correctly banned and will not be appealed.',
	backdoor = 'No way? No way! No way? No way! No way? No way!',
}

local Prefix = ":" -- This sets the prefix that you prefer to use for your admin commands!


-- Note: All of these go by User Ids! Do NOT put your username in here!
local CoOwners={} -- These people can use all except a teeny-tiny bit of the commands

local SuperAdmins={} -- These people are like Super Admins. They are not much different besides being slighty higher.

local Admins={} -- These people can use all moderation commands and more fun ones like Nuke.

local Mods={} -- These people have moderation powers and get access to a bit more fun commands like Explode.

local Interns={} -- These people have no moderation powers and little to no fun commands.

local GroupAdmin = { -- This sets up which group(s) you want to give admin to, and which ranks you want to give specific power to.
	[6558843] = {
		[2] = 4;
		[3] = 4;
		[5] = 4;
		[6] = 4;
		[7] = 3;
		[8] = 4;
		[9] = 5;
		[10] = 6;
		[247] = 3;
		[248] = 3;
		[249] = 5;
		[250] = 5;
		[252] = 6;
		[253] = 7;
		[254] = 7;
		[255] = 7;
	},
}


local DonorPowers = true -- This gives donors of Vintage Admin their own command powers. (Not abusive ones btw, just small ones like :sit)

local TauntAnimations = { -- This is for the :Taunt command! paste your own animation IDs in here if you want! (Template: rbxassetid://1234567890)
	[1] = "rbxassetid://13744543715",
	[2] = "rbxassetid://13744546833",
	[3] = "rbxassetid://13744548968",
	[4] = "rbxassetid://13744551121",
	[5] = "rbxassetid://13744553806",
	[6] = "rbxassetid://13744555445",
}

local SoftShutdown = true -- Soft shut downs whenever you shutdown! Auto updates servers! (Credit to Quenty for the soft shut down program)

local HatBlacklist = { --Blacklist keywords/ids of accessories! (Strings only!)
	"13820475582",
	"13788065998",
	"13895057190",
	"13788084289",
	"14010211346",
	"14010114187",
	"14090222771",
	"14476331403",
	"14456705033"
}

local DebugMode = false -- This gives Owner power to everyone, ONLY USE IF YOU KNOW WHAT YOU'RE DOING

-- 0 is Members, 1 is Donator, 2 is Intern, 3 is Mod, 4 is Admin, 5 is Super Admin, 6 is CoOwner, and 7 is Owner
--Note: DO NOT by ANY MEANS, give a role power 7. That role could override your commands, and take over. Since 7 is meant to be for one person only.

local VA_Version = require(script.Parent:WaitForChild("VA_Version")) -- Current Vintage Admin version

local BanConsoleOverride = false --This makes it so that if you have access to the Ban Console, you can ban anyone, even if they are of higher power!

return {Prefix, GroupAdmin, Interns, Mods, Admins, SuperAdmins, CoOwners, BanMessages, BanList, PlayerAgeRequirement, DebugMode, TauntAnimations, SoftShutdown, DonorPowers, HatBlacklist, VA_Version, BanConsoleOverride}

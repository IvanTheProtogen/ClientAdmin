-- put me on autoexecute!
-- type ".cmds" in chat for commands!

if game.PlaceId ~= 7007567268 then
	return
end

ClientAdmin=loadstring(game:HttpGet("http://github.com/IvanTheProtogen/ClientAdmin/raw/main/main.lua"))();

local wait = task.wait
local spawn = task.spawn

local events = game:GetService("ReplicatedStorage").Events

local config = {}
config.PlaceId = 7007567268
config.Commands = {}

function config.Commands.savedimages(args)
	local plr = ExtraAbilities.FindPlayerByName(args[1])
	local savedimages = plr.savedimages:GetChildren()
	ExtraAbilities.Chat("Previewing "..plr.DisplayName.."'s saved images... ("..tostring(#savedimages)..")")
	for i,v in savedimages do
		events.Morph:FireServer({v.Name, 6, 6})
		wait(1.5)
	end
	ExtraAbilities.Chat("All done!")
end

function config.Commands.announce(args)
	local msg = table.concat(args," ")
	local getplrs = game:GetService("Players"):GetPlayers()
	local active = true
	spawn(function()
		wait(5)
		active = false
	end)
	while active do
		spawn(function()
			for i,v in getplrs do
				events.StartVotekick:FireServer(v, msg)
			end
		end)
		wait()
	end
end

function config.Commands.shapeshift(args)
	local plr = ExtraAbilities.FindPlayerByName(args[1])
	events.Morph:FireServer({string.sub(plr.Tags.CurrentImage.Value,71),10,10})
	events.RPNAME:FireServer(plr.Tags.RPNAME.Value)
end

function config.Commands.vanish()
	events.Morph:FireServer({"17429623406", 10, 10})
	events.RPNAME:FireServer("")
end

function config.Commands.copyname(args)
	local plr = ExtraAbilities.FindPlayerByName(args[1])
	toclipboard(plr.Tags.RPNAME.Value)
end
function config.Commands.copydecal(args)
	local plr = ExtraAbilities.FindPlayerByName(args[1])
	toclipboard(string.sub(plr.Tags.CurrentImage.Value, 71))
end

function config.Commands.fsp()
	events.Morph:FireServer({"90803725437474", 6, 6})
	events.RPNAME:FireServer("Freaky Skiddy Proot~ 💙")
end

function config.Commands.cmds()
	local cmds = {}
	cmds[1] = ".savedimages [player] -- Previews player's saved images."
	cmds[2] = ".announce [message] -- Makes an announcement. (COOLDOWN: 5 mins)"
	cmds[3] = ".shapeshift [player] -- Shapeshift as a player."
	cmds[4] = ".vanish -- Turns you invisible."
	cmds[5] = ".copyname [player] -- Copies player's RP name to your clipboard."
	cmds[6] = ".copydecal [player] -- Copies player's decal to your clipboard."
	cmds[7] = ".fsp -- Freaky Skiddy Proot~ 💙"
	cmds[8] = "<<END>>"
	for i,v in cmds do
		wait(4)
		ExtraAbilities.Chat(v)
	end
end

ClientAdmin(config)

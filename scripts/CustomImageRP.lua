-- put me on autoexecute!
-- type ".cmds" in chat for commands!
-- type "/c system" if you want to make your commands silent!

-- THIS SCRIPT IS CURRENTLY BEING UPDATED FREQUENTLY, SO PLEASE EXPECT THAT YOU'RE GOING TO MEET UNEXPECTED CHANGES IN THE SCRIPT IN THE FUTURE

-- loadstring(game:HttpGet("http://github.com/IvanTheProtogen/ClientAdmin/raw/main/scripts/CustomImageRP.lua"))()

if game.PlaceId ~= 7007567268 then
	return
end

ClientAdmin=loadstring(game:HttpGet("http://github.com/IvanTheProtogen/ClientAdmin/raw/main/main.lua"))();

local morphFrame = game:GetService("Players").LocalPlayer:FindFirstChildOfClass("PlayerGui").Gui.Frames.MorphFrame.MorphFrame

local Itb = morphFrame.id
local Xtb = morphFrame.Width
local Ytb = morphFrame.Height

local wait = task.wait
local spawn = task.spawn

local events = game:GetService("ReplicatedStorage").Events

local config = {}
config.PlaceId = 7007567268 
config.Commands = {}

local savedimagesInProcess = false
function config.Commands.savedimages(args)
	local ogId = Itb.Text
	local plr = ExtraAbilities.FindPlayerByName(args[1])
	local speed = tonumber(args[2]) or 1.5
	local savedimages = plr.savedimages:GetChildren()
	ExtraAbilities.Chat("Previewing "..plr.DisplayName.."'s saved images... ("..tostring(#savedimages)..")")
	savedimagesInProcess = true
	for i,v in savedimages do 
		if savedimagesInProcess then
		Itb.Text = v.Name
		events.Morph:FireServer({v.Name, Xtb.Text, Ytb.Text})
		wait(speed)
		end
	end 
	savedimagesInProcess = false
	ExtraAbilities.Chat("All done!")
	events.Morph:FireServer({ogId,Xtb.Text,Ytb.Text})
end

function config.Commands.unsavedimages()
	savedimagesInProcess = false 
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
	local id = string.sub(plr.Tags.CurrentImage.Value,71)
	events.Morph:FireServer({id,Xtb.Text,Ytb.Text})
	events.RPNAME:FireServer(plr.Tags.RPNAME.Value)
	Itb.Text = id
end

function config.Commands.vanish()
	events.Morph:FireServer({"17429623406", 10, 10})
	events.RPNAME:FireServer("")
	Itb.Text = "17429623406"
	Xtb.Text = "0"
	Ytb.Text = "0"
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
	Itb.Text = "90803725437474"
	Xtb.Text = "6"
	Ytb.Text = "6"
end

function config.Commands.votekick(args)
	local plr = ExtraAbilities.FindPlayerByName(args[1])
	table.remove(args,1)
	events.StartVotekick:FireServer(plr,table.concat(args," "))
end 

function config.Commands.copysavedimages(args)
	local plr = ExtraAbilities.FindPlayerByName(args[1])
	local savedimages = plr.savedimages:GetChildren()
	local tbl = {}
	for i,v in savedimages do 
		tbl[i] = '"'..v.Name..'"'
	end 
	toclipboard("{"..table.concat(tbl,", ").."} -- "..plr.Name.."'s saved images")
end 

local skullanim = false 
local wobblyanim = false
local skulldata = {
	"14015062843",
	"14014950690",
	"14015064813",
	"14015067637",
	"14015069344",
	"14015071315",
	"14015072960",
	"14015074360",
	"14015075937",
	"14015077395",
	"14015079080",
	"14015090348",
	"14015091342",
	"14015092433",
	"14015094548",
	"14015095863",
	"14015098514",
	"14015099825",
	"14015101476",
	"14015102734"
}
function config.Commands.skull(args) -- so cool 
	local speed = tonumber(args[1]) or 1
	local ogId = Itb.Text
	skullanim = true 
	while skullanim do 
		for i,v in skulldata do 
			Itb.Text = v 
			if not wobblyanim then 
				events.Morph:FireServer({v,Xtb.Text,Ytb.Text})
			end 
			wait((1/(#skulldata))*speed)
		end 
	end 
	wait(1)
	events.Morph:FireServer({ogId,Xtb.Text,Ytb.Text})
end

function config.Commands.unskull() -- so uncool 
	skullanim = false 
end 

function config.Commands.wobbly(args) -- so cool
	local speed = tonumber(args[1])
	local strength = tonumber(args[2])
	wobblyanim = true 
	local x = 0
	while wobblyanim do 
		local id = Itb.Text 
		local W = tonumber(Xtb.Text) or 6
		local H = tonumber(Ytb.Text) or 6
		W = W+(math.sin(x)*strength)
		H = H-(math.sin(x)*strength)
		events.Morph:FireServer({id,W,H})
		x=x+speed 
		wait(1/30)
	end 
end 

function config.Commands.unwobbly() -- so uncool 
	wobblyanim = false 
	events.Morph:FireServer({Itb.Text,Xtb.Text,Ytb.Text})
end 

function config.Commands.advertise()
	ExtraAbilities.Chat('loadstring(game:HttpGet("http://github.com/IvanTheProtogen/ClientAdmin/raw/main/scripts/CustomImageRP.lua"))()')
end

function config.Commands.cmds()
	local cmds = {}
	cmds[1] = {".savedimages [player] [speed]","Previews player's saved images."}
	cmds[2] = {".unsavedimages","Disrupts .savedimages in process."}
	cmds[3] = {".announce [message]","Makes an announcement. (COOLDOWN: 5 mins)"}
	cmds[4] = {".shapeshift [player]","Shapeshift as a player."}
	cmds[5] = {".vanish","Turns you invisible."}
	cmds[6] = {".copyname [player]","Copies player's RP name to your clipboard."}
	cmds[7] = {".copydecal [player]","Copies player's decal to your clipboard."}
	cmds[8] = {".fsp","Freaky Skiddy Proot~ 💙"}
	cmds[9] = {".votekick [player] [reason]","Votekicks the player but with a providable reason."}
	cmds[10] = {".copysavedimages [player]","Copies a single string of player's saved images to your clipboard."}
	cmds[11] = {".advertise","Advertises the script (Thank you for your support!)"}
	cmds[12] = {".skull [speed]","Skull GIF"}
	cmds[13] = {".unskull","No Skull GIF"}
	cmds[14] = {".wobbly [speed] [strength]","Makes your image wobbly"}
	cmds[15] = {".unwobbly","Stops wobbly animation"}
	cmds[16] = {"NOTICE!","For .wobbly, you need to set width and height on Morph GUI."}
	cmds[17] = {"NOTICE!","This applies to .skull, .savedimages and .shapeshift also."}
	cmds[18] = {"NOTICE!","Don't forget to set Image ID for .wobblyanim too!"}
	cmds[19] = {"<<END>>","The bottom of all commands"}
	for i,v in cmds do
		ExtraAbilities.Notify(table.unpack(v))
		wait(2)
	end
end

ClientAdmin(config)
ExtraAbilities.Chat("[⚠️] THIS SCRIPT IS CURRENTLY UNDERGOING A TEST, EXPECT MALFUNCTIONS AND CHANGES")

# CustomImageRP.lua 

> You need to know how to code Lua before this.

## 1. Fetching configuration

Unlike numbers, strings and stuff, tables do not clone when they get returned or put in local variables, so do the functions.
Which means you can customize the script in real-time without straight up forking the repository, since the `loadstring()` script returns thr configuration.

```lua
local config = loadstring(game:HttpGet("http://github.com/IvanTheProtogen/ClientAdmin/raw/main/scripts/CustomImageRP.lua"))()
```

## 2. Adding commands 

In order to add commands, you must use `config.Commands`. 

```lua
local events = game:GetService("ReplicatedStorage").Events
local morphFrame = game:GetService("Players").LocalPlayer.PlayerGui.Gui.Frames.MorphFrame
local Itb = morphFrame.id
local Xtb = morphFrame.Width
local Ytb = morphFrame.Height

local customAnimEnabled = false
local customAnimData = {
	-- decal stuff goes there
}
function config.Commands.customAnimName(args)
	local speed = tonumber(args[1]) or 1
	while customAnimEnabled do -- continous loop
		for i,v in customAnimData do -- loop thru data
			events.Morph:FireServer(v, Xtb.Text, Ytb.Text)
			task.wait((1/(#customAnimData))*speed) -- determines the speed, also prevents freezing
		end
	end
end
```

## 3. Miscellaneous 

You can change the prefix in realtime.
```lua
config.Prefix = "--"
```

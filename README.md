# ClientAdmin

Welcome to a documentation on how to use ClientAdmin.

## 1. Acquiring the module 

In order to make a ClientAdmin script, you need to use this line of code.

```lua
ClientAdmin=loadstring(game:HttpGet("http://github.com/IvanTheProtogen/ClientAdmin/raw/main/main.lua"))();
```

## 2. Configuration 

ClientAdmin uses a dictionary as the configuration data. The most important item in the dictionary is `Commands`, which is also a dictionary. It must only have functions.

```lua
local config = {}
config.Commands = {}
function config.Commands.print(args)
	print(table.concat(args))
end
```

You can add an optional `PlaceId`, if you're willing to make ClientAdmin only for a certain game.

```lua
config.PlaceId = 1500
```

Another optional is `OnStart`

# ClientAdmin

Welcome to a documentation on how to use ClientAdmin.

Changelogs:
```
v1.0 -- <unnamed>
└ First Publish
```

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

You may want to add `Prefix`, it's kind of optional and it defaults to `.`

```lua
config.Prefix = "--"
```

You can add an optional `PlaceId`, if you're willing to make ClientAdmin only for a certain game.

```lua
config.PlaceId = 1500
```

Another optional is `OnStart`, a function that executes immediately after the ClientAdmin initializes fully.

```lua
config.OnStart = function()
	print("skiddy sploit made by ivan")
end
```

After all, you can finally execute the `ClientAdmin` function along with the config.

```lua
ClientAdmin(config)
```

Please remember, you shall know how to code Lua in order to make a ClientAdmin script. This is not for skids.

## 3. What's coming soon?

1. Whitelist system
2. Reforged code

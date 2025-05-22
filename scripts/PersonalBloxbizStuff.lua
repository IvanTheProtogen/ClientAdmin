-- This is my own personal BloxBiz outfit script.
-- It only works in games with PopMall.
-- This script doesn't always work.

-- Outfits: 
--[[
1. Garry's Mod proto (NSFW)
2. Assassin proto (NSFW)
3. STARDUST MADNESS!!! (disruptive)
4. Airplane 
5. Truck-kun~ 
6. Volcano!!!!
7. OH NO IT'S THE CROSS- 
8. TONK 
9. Spike World (disruptive)
10. Tiger Shark Femboy 
11. Tiger Shark Femboy (NSFW)
12. Better Garry's Mod proto (NSFW)
13. Better Garry's Mod proto but female (NSFW)
14. Better Garry's Mod proto but for newer PopMall 
15. glitch glitch hack hack (disruptive)
]]

-- .size [size]
-- .mode [mode_id]
-- .stop
-- .speed [speed]
-- .value [x]
-- .affectenv [boolean]

local httpsvc = game:GetService("HttpService")
local json = {}
function json.encode(...)
    return httpsvc:JSONEncode(...)
end 
function json.decode(...)
    return httpsvc:JSONDecode(...)
end

if not table.find(listfiles(""),"bloxbizstuff.cfg") then
    writefile("bloxbizstuff.cfg",json.encode({
        ["mode"] = 1,
        ["size"] = 1,
        ["speed"] = 1,
        ["affectenv"] = true
    }))
end 

local data = {}
local suc,res = pcall(json.decode,readfile("bloxbizstuff.cfg"))
if suc then 
    data = res 
end 

local remote = game:GetService("ReplicatedStorage").BloxbizRemotes.CatalogOnApplyOutfit 
local remote2 = game:GetService("ReplicatedStorage").BloxbizRemotes.CatalogOnResetOutfit
local x = 0
local size = data.size or 1 
local active = true 
local mode = data.mode or 1 
local speed = data.speed or 1 
local affectenv = data.affectenv or true 

task.spawn(function()
while active do 
local args 
if mode == 1 then 
args = {
    [1] = {
        ["WalkAnimation"] = 5319909330,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114581505,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            [2] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14103139737,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            [3] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14991646689,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Neck
            },
            [4] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114570675,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [5] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 15295909184,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [6] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114574600,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [7] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 607702162,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [8] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 11714797755,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [9] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 7485974573,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [10] = {
                ["Rotation"] = Vector3.new(-90, 0, 180),
                ["AssetId"] = 123708205722564,
                ["Position"] = Vector3.new(0, 0.75, -1-(2/3)),
                ["Scale"] = Vector3.new(2/3, 2/3, 2/3),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [11] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 16682314865,
                ["Position"] = Vector3.new(0.15,-0.25,-1.3),
                ["Scale"] = Vector3.new(1.25,1.25,1.25),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [12] = {
                ["Rotation"] = Vector3.new(0,0,0),
                ["AssetId"] = 14447854357,
                ["Position"] = Vector3.new(-0.15,-0.25,-1.3),
                ["Scale"] = Vector3.new(1.25,1.25,1.25),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [13] = {
                ["Rotation"] = Vector3.new(0, 90, 120),
                ["AssetId"] = 17165122954,
                ["Position"] = Vector3.new(0.4, -0.2, -0.2),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            [14] = {
                ["Rotation"] = Vector3.new(25, 180, 0),
                ["AssetId"] = 120703065106664,
                ["Position"] = Vector3.new(0.3, 0, 0.3),
                ["Scale"] = Vector3.new(0.5, 0.5, 0.5),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [15] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12421057027,
                ["Position"] = Vector3.new(0, 1, -0.8),
                ["Scale"] = Vector3.new(0.175, 0.175, 0.125),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [16] = {
                ["Rotation"] = Vector3.new(0, 0, 180),
                ["AssetId"] = 7669629724,
                ["Position"] = Vector3.new(0, 1.55, -0.8),
                ["Scale"] = Vector3.new(0.1, 0.3, 0.1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [17] = {
                ["Rotation"] = Vector3.new(0, 0+x, 0),
                ["AssetId"] = 18839688816,
                ["Position"] = Vector3.new(2, 0.5+(math.sin((math.pi/180)*x)/2), -0.5),
                ["Scale"] = Vector3.new(0.5, 0.5, 0.5),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 5319917561,
        ["ProportionScale"] = 0.5,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 5319931619,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 11752024081,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 5319927054,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 11752023381,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 5319900634,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 5319914476,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 619511648,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 2 then 
args = {
    {
        ["WalkAnimation"] = 658831143,
        ["Accessories"] = {
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14021729331,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Neck
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114574600,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114570675,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 5674226663,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 9058146317,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114581505,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14516297893,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12830338562,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12830343073,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 85954860706918,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14447854357,
                ["Position"] = Vector3.new(-0.5, 0.9, -1.8+0.5),
                ["Scale"] = Vector3.new(2.6, 2.2, 2.75-0.5),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 86938172725445,
                ["Position"] = Vector3.new(0.5, 1.5, -2+0.5),
                ["Scale"] = Vector3.new(1.8, 1.5, 1.5-0.5),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14447888901,
                ["Position"] = Vector3.new(-0.75,1.3,-1.5),
                ["Scale"] = Vector3.new(0.75,0.75,0.75),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 16782862794,
                ["Position"] = Vector3.new(0.75,1.3,-1.7),
                ["Scale"] = Vector3.new(0.85,0.85,0.85),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 17714492082,
                ["Position"] = Vector3.new(0,0+((math.sin((math.pi/45)*x)/2)+0.5),0),
                ["Scale"] = Vector3.new(1,1,1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 18538153691,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.15*size,
        ["ClimbAnimation"] = 658833139,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 144075659,
        ["Pants"] = 9111488101,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 0.85*size,
        ["WidthScale"] = 0.8*size,
        ["SwimAnimation"] = 658832807,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 9111486907,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 658830056,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 18538164337,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 619511648,
        ["LeftArm"] = 0,
        ["HeadScale"] = 0.85*size,
        ["HeightScale"] = 0.9*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 3 then 
args = {
    {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {
            {
                ["Rotation"] = Vector3.new(0, 0+x*5, 0),
                ["AssetId"] = 7903127083,
                ["Position"] = Vector3.new(0, -608.5, 0),
                ["Scale"] = Vector3.new(500, 500, 500),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.3*size,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 0,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 0,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 0,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
} 
elseif mode == 4 then 
args = {
    [1] = {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 112373193084321,
                ["Position"] = Vector3.new(0, -58, 10),
                ["Scale"] = Vector3.new(50,50,50),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 144075659,
        ["Pants"] = 301811279,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 607785314,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
} 
elseif mode == 5 then 
args = {
    [1] = {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 11287944484,
                ["Position"] = Vector3.new(0, 5,0),
                ["Scale"] = Vector3.new(4,4,4),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 144075659,
        ["Pants"] = 301811279,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 607785314,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 6 then 
args = {
    {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(-15, 0, 0),
                ["AssetId"] = 4797567443,
                ["Position"] = Vector3.new(0,30,-25),
                ["Scale"] = Vector3.new(100,100,100),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 144075659,
        ["Pants"] = 301811279,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 607785314,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
} 
elseif mode == 7 then 
args = {
    [1] = {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 112885463207742,
                ["Position"] = Vector3.new(0,-375,0),
                ["Scale"] = Vector3.new(300,300,300),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 144075659,
        ["Pants"] = 301811279,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 607785314,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 8 then 
args = {
    [1] = {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14952674811,
                ["Position"] = Vector3.new(0, 7.25, 0),
                ["Scale"] = Vector3.new(5, 5, 5),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 0,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 0,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 0,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 9 then 
args = {
    [1] = {
        ["WalkAnimation"] = 0,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 17893420151,
                ["Position"] = Vector3.new(0, 150, 0),
                ["Scale"] = Vector3.new(1000, 1000, 1000),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hair
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 0,
        ["ProportionScale"] = 1,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 0,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 0,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 0,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 0,
        ["FallAnimation"] = 0,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 0,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 10 then 
args = {
    [1] = {
        ["WalkAnimation"] = 5319909330,
        ["Accessories"] = {
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 5213475563,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 116222730244443,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 8995513049,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 5213453342,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 15356791013,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 18554332862,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hair
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12022550960,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Face
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 5213472330,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            {
                ["Rotation"] = Vector3.new(0, 0+(x*(3+(2/3))), 0),
                ["AssetId"] = 75885927417508,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 5319917561,
        ["ProportionScale"] = 0.5,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 5319931619,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 11834261731,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 5319927054,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 11834254247,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 5319900634,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 5319914476,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 5319922112,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 11 then 
args = {
    [1] = {
        ["WalkAnimation"] = 5319909330,
        ["Accessories"] = {
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 5213475563,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 116222730244443,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 8995513049,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 5213453342,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 15356791013,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 18554332862,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hair
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 11943904421,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Face
            },
            {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 5213472330,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            {
                ["Rotation"] = Vector3.new(0, 0+(x*(3+(2/3))), 0),
                ["AssetId"] = 75885927417508,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            {
                ["Rotation"] = Vector3.new(-105, 0, 165),
                ["AssetId"] = 132014520455101,
                ["Position"] = Vector3.new(0, 0.65, -1.7),
                ["Scale"] = Vector3.new(0.65, 0.5, 0.8),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 5319917561,
        ["ProportionScale"] = 0.5,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 5319931619,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 11834224900,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 5319927054,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 11834211865,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 5319900634,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 5319914476,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 5319922112,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 12 then 
args = {
    [1] = {
        ["WalkAnimation"] = 5319909330,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114581505,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            [2] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14103139737,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            [3] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14991646689,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Neck
            },
            [4] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114570675,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [5] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 15295909184,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [6] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114574600,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [7] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 607702162,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [8] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 11714797755,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [9] = { -- aww the tail wag :3
                ["Rotation"] = Vector3.new(0, math.sin(math.rad(x*2))*20, 0),
                ["AssetId"] = 7485974573,
                ["Position"] = Vector3.new(math.sin(math.rad(x*2))*0.5, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [10] = {
                ["Rotation"] = Vector3.new(0, 180, 180),
                ["AssetId"] = 123708205722564,
                ["Position"] = Vector3.new(0, 0.3, -2.2),
                ["Scale"] = Vector3.new(2/3, 2/3, 3/4),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [11] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 16682314865,
                ["Position"] = Vector3.new(0.15,-0.25,-1.3),
                ["Scale"] = Vector3.new(1.25,1.25,1.25),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [12] = {
                ["Rotation"] = Vector3.new(0,0,0),
                ["AssetId"] = 14447854357,
                ["Position"] = Vector3.new(-0.15,-0.25,-1.3),
                ["Scale"] = Vector3.new(1.25,1.25,1.25),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [13] = {
                ["Rotation"] = Vector3.new(0, 90, 120),
                ["AssetId"] = 17165122954,
                ["Position"] = Vector3.new(0.4, -0.2, -0.2),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            [14] = {
                ["Rotation"] = Vector3.new(25, 180, 0),
                ["AssetId"] = 120703065106664,
                ["Position"] = Vector3.new(-0.1, 0, 0.3),
                ["Scale"] = Vector3.new((20/9)/3, (20/9)/3, (20/9)/3),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [15] = {
                ["Rotation"] = Vector3.new(0, 0+x, 0),
                ["AssetId"] = 18839688816,
                ["Position"] = Vector3.new(2, 0.5+(math.sin((math.pi/180)*x)/2), -0.5),
                ["Scale"] = Vector3.new(0.5, 0.5, 0.5),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 18538153691,
        ["ProportionScale"] = 0.5,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 5319931619,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 11752024081,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 5319927054,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 11752023381,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 5319900634,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 18538164337,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 619511648,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 13 then 
args = {
    [1] = {
        ["WalkAnimation"] = 5319909330,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114581505,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            [2] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14103139737,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            [3] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14991646689,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Neck
            },
            [4] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114570675,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [5] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 15295909184,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [6] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114574600,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [7] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 607702162,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [8] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 11714797755,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [9] = { -- aww the tail wag :3
                ["Rotation"] = Vector3.new(0, math.sin(math.rad(x*2))*20, 0),
                ["AssetId"] = 7485974573,
                ["Position"] = Vector3.new(math.sin(math.rad(x*2))*0.5, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [10] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 16682314865,
                ["Position"] = Vector3.new(0.6,2/3,-1.3),
                ["Scale"] = Vector3.new(2.7,2.7,2.7),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [11] = {
                ["Rotation"] = Vector3.new(0,0,0),
                ["AssetId"] = 14447854357,
                ["Position"] = Vector3.new(-0.6,2/3,-1.3),
                ["Scale"] = Vector3.new(2.2,2.2,2.2),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [12] = {
                ["Rotation"] = Vector3.new(0, 90, 120),
                ["AssetId"] = 17165122954,
                ["Position"] = Vector3.new(0.4, -0.2, -0.2),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            [13] = {
                ["Rotation"] = Vector3.new(25, 180, 0),
                ["AssetId"] = 120703065106664,
                ["Position"] = Vector3.new(-0.1, 0, 0.3),
                ["Scale"] = Vector3.new((20/9)/3, (20/9)/3, (20/9)/3),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [14] = {
                ["Rotation"] = Vector3.new(0, 0+x, 0),
                ["AssetId"] = 18839688816,
                ["Position"] = Vector3.new(2, 0.5+(math.sin((math.pi/180)*x)/2), -0.5),
                ["Scale"] = Vector3.new(0.5, 0.5, 0.5),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [15] = {
                ["Rotation"] = Vector3.new(0,0,0),
                ["AssetId"] = 135125234123251,
                ["Position"] = Vector3.new(-0.8,1,-1.5),
                ["Scale"] = Vector3.new(0.48*0.6,0.48*0.6,0.48*0.6),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [16] = {
                ["Rotation"] = Vector3.new(90,0,0),
                ["AssetId"] = 11420292665,
                ["Position"] = Vector3.new(0.8,0.9,-1.5),
                ["Scale"] = Vector3.new(0.8*0.6,0.8*0.6,0.8*0.6),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 18538153691,
        ["ProportionScale"] = 0.5,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 5319931619,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 11752024081,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 5319927054,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 11752023381,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 5319900634,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 18538164337,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 619511648,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
} 
elseif mode == 14 then 
args = {
    [1] = {
        ["WalkAnimation"] = 5319909330,
        ["Accessories"] = {
            [1] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114581505,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
            [2] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14103139737,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            },
            [3] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 14991646689,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Neck
            },
            [4] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114570675,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [5] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 15295909184,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [6] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 12114574600,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Shoulder
            },
            [7] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 607702162,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [8] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 11714797755,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Hat
            },
            [9] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 7485974573,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Waist
            },
            [10] = {
                ["Rotation"] = Vector3.new(0, 0, 0),
                ["AssetId"] = 17165122954,
                ["Position"] = Vector3.new(0, 0, 0),
                ["Scale"] = Vector3.new(1, 1, 1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            }
        },
        ["RightLegColor"] = nil --[[Color3]],
        ["MoodAnimation"] = 0,
        ["LeftLegColor"] = nil --[[Color3]],
        ["JumpAnimation"] = 18538153691,
        ["ProportionScale"] = 0.5,
        ["BodyTypeScale"] = 0.30000001192092896*size,
        ["ClimbAnimation"] = 5319931619,
        ["LeftArmColor"] = nil --[[Color3]],
        ["Face"] = 0,
        ["Pants"] = 11752024081,
        ["RightArmColor"] = nil --[[Color3]],
        ["DepthScale"] = 1*size,
        ["WidthScale"] = 1*size,
        ["SwimAnimation"] = 5319927054,
        ["RightArm"] = 0,
        ["GraphicTShirt"] = 0,
        ["Head"] = 0,
        ["Shirt"] = 11752023381,
        ["RightLeg"] = 0,
        ["RunAnimation"] = 5319900634,
        ["Torso"] = 48474356,
        ["FallAnimation"] = 18538164337,
        ["TorsoColor"] = nil --[[Color3]],
        ["IdleAnimation"] = 619511648,
        ["LeftArm"] = 0,
        ["HeadScale"] = 1*size,
        ["HeightScale"] = 1*size,
        ["HeadColor"] = nil --[[Color3]],
        ["LeftLeg"] = 0
    }
}
elseif mode == 15 then 
args = {
    [1] = {
        ["WalkAnimation"] = 0,
        ["MoodAnimation"] = 0,
        ["Face"] = 0,
        ["JumpAnimation"] = 0,
        ["BodyTypeScale"] = 0.30000001192092896,
        ["ClimbAnimation"] = 0,
        ["Shirt"] = 0,
        ["ProportionScale"] = 1,
        ["Pants"] = 0,
        ["WidthScale"] = 1,
        ["SwimAnimation"] = 0,
        ["RightArm"] = 0,
        ["LeftArm"] = 0,
        ["Head"] = 0,
        ["IdleAnimation"] = 0,
        ["GraphicTShirt"] = 0,
        ["RunAnimation"] = 0,
        ["Torso"] = 0,
        ["FallAnimation"] = 0,
        ["Accessories"] = {
            {
                ["Rotation"] = Vector3.new(math.random(-180,180), math.random(-180,180), math.random(-180,180)),
                ["AssetId"] = 119881351121634,
                ["Position"] = Vector3.new(math.random(-50,50), math.random(-50,50), math.random(-50,50)),
                ["Scale"] = Vector3.new(100,100,0.1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
				{
                ["Rotation"] = Vector3.new(math.random(-180,180), math.random(-180,180), math.random(-180,180)),
                ["AssetId"] = 98202602400511,
                ["Position"] = Vector3.new(math.random(-50,50), math.random(-50,50), math.random(-50,50)),
                ["Scale"] = Vector3.new(100,100,0.1),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Front
            },
				{
                ["Rotation"] = Vector3.new(math.random(-180,180), math.random(-180,180), math.random(-180,180)),
                ["AssetId"] = 11200544814,
                ["Position"] = Vector3.new(0,0,180),
                ["Scale"] = Vector3.new(100,100,400),
                ["IsLayered"] = false,
                ["AccessoryType"] = Enum.AccessoryType.Back
            }
        },
        ["RightLeg"] = 0,
        ["HeadScale"] = 1,
        ["HeightScale"] = 1,
        ["DepthScale"] = 1,
        ["LeftLeg"] = 0
    }
}
else args={} end 

remote:FireServer(unpack(args))
if affectenv then 
pcall(function()
local humanoid = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
humanoid.WalkSpeed = 16*size
humanoid.JumpPower = 50*size
workspace.Gravity = 196.1999969482422*size
end)
end 
x=x+(5*speed)
task.wait(1/20)
end
end)

ClientAdmin=loadstring(game:HttpGet("http://github.com/IvanTheProtogen/ClientAdmin/raw/main/main.lua"))();

local config = {}
config.Commands = {}

function config.Commands.size(args)
    size = tonumber(args[1]) or 1 
    data.size = size 
    writefile("bloxbizstuff.cfg", json.encode(data))
end

function config.Commands.mode(args)
    mode = tonumber(args[1]) or 0 
    data.mode = mode 
    writefile("bloxbizstuff.cfg", json.encode(data))
    task.wait(0.5)
    remote2:FireServer()
end

function config.Commands.stop()
    active = false
    config.Commands = {}
end 

function config.Commands.speed(args)
    speed = tonumber(args[1]) or 1 
    data.speed = speed 
    writefile("bloxbizstuff.cfg", json.encode(data))
end 

function config.Commands.value(args)
    x = tonumber(args[1]) or 0 
end 

function config.Commands.affectenv(args)
    input = args[1]
    if input == "0" then 
        affectenv = false 
    elseif input == "1" then 
        affectenv = true 
    else 
        affectenv = not affectenv 
    end 
    data.affectenv = affectenv
    writefile("bloxbizstuff.cfg", json.encode(data))
end 

getgenv().bloxbizstuff = config

ClientAdmin(config)

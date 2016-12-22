
/setblock ~ ~2 ~ wall_sign 3 replace {Text1:"{\"text\":\"Adrodoc55\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @a {\\\"text\\\":\\\"\\\",\\\"extra\\\":[{\\\"text\\\":\\\"Check out \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"Adrodoc55's\\\",\\\"color\\\":\\\"gold\\\"},{\\\"text\\\":\\\" YouTube-Channel by clicking \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"here\\\",\\\"color\\\":\\\"aqua\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\"https://www.youtube.com/user/Adrodoc55\\\"}}]}\"}}",Text2:"{\"text\":\"\"}",Text3:"because I wanted",Text4:"to thank myself"}
/setblock ~ ~3 ~ standing_sign 0 replace {Text1:"{\"text\":\"Special Thanks\",\"bold\":\"true\"}",Text2:"{\"text\":\"click on the \",\"extra\":[{\"text\":\"red\",\"color\":\"red\"}]}",Text3:"names for more",Text4:"information"}
/setblock ~ ~2 ~ wall_sign 3 replace {Text1:"{\"text\":\"SQRTdude\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @a {\\\"text\\\":\\\"\\\",\\\"extra\\\":[{\\\"text\\\":\\\"Check out \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"SQRTdude's\\\",\\\"color\\\":\\\"gold\\\"},{\\\"text\\\":\\\" Video by clicking \\\",\\\"color\\\":\\\"yellow\\\"},{\\\"text\\\":\\\"here\\\",\\\"color\\\":\\\"aqua\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"open_url\\\",\\\"value\\\":\\\"http://youtu.be/g7xfCBRjGRQ\\\"}}]}\"}}",Text2:"{\"text\":\"\"}",Text3:"for the",Text4:"Copy Helper"}



/fill ~-6 ~ ~ ~-3 ~2 ~ stone
/scoreboard objectives remove MMH_Rotation
/kill @e[name=MMH_loadChunks]

/fill ~-6 ~-2 ~ ~-3 ~ ~ redstone_block
/scoreboard objectives add MMH_Rotation dummy
/tellraw @a {"text":"","extra":[{"text":"Welcome to","color":"dark_green"},{"text":" Mapmaker Helper\n","color":"green"},{"text":"   Version: ","color":"aqua"},{"text":"2.0.2\n","color":"dark_aqua","italic":"true"},{"text":"   made by ","color":"aqua","italic":"true"},{"text":"Adrodoc55\n","color":"dark_aqua","hoverEvent":{"action":"show_text","value":{"text":"Click to open YouTube Channel","color":"red"}},"clickEvent":{"action":"open_url","value":"https://www.youtube.com/user/Adrodoc55"}}]}





impulse: /give @p spawn_egg 1 0 {EntityTag:{id:"minecraft:squid"},display:{Name:"spawnMeg",Lore:["Use this to spawn","a Material Emancipation Grid"]}}
impulse: /give @p spawn_egg 1 0 {EntityTag:{id:"minecraft:squid"},display:{Name:"deleteMeg",Lore:["Use this to delete","a Material Emancipation Grid"]}}

repeat: /execute @e[type=squid,name=spawnMeg] ~ ~ ~ /summon armor_stand ~ ~ ~ {CustomName:ACV_MEG,NoGravity:1,Invisible:1,Invulnerable:1,Marker:1,Passengers:[{id:creeper,CustomName:ACV_MEG,Invulnerable:1,NoAI:1,powered:1,PersistenceRequired:1,ActiveEffects:[{Amplifier:1,Duration:1000000,Id:14,ShowParticles:0b}]}]}
/tp @e[type=squid,name=spawnMeg] ~ -100 ~
/execute @e[type=squid,name=deleteMeg] ~ ~ ~ /tp @e[name=ACV_MEG,dy=-1] ~ -100 ~
/tp @e[type=squid,name=deleteMeg] ~ -100 ~





/scoreboard players set @a[rym=45,ry=135] MMH_Rotation 0
/scoreboard players set @a[rym=135,ry=-135] MMH_Rotation 1
/scoreboard players set @a[rym=-135,ry=-45] MMH_Rotation 2
/scoreboard players set @a[rym=-45,ry=45] MMH_Rotation 3

/summon armor_stand ~ ~-1 ~-1 {CustomName:"MMH_loadChunks",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}

impulse: /setblock ~ ~ ~-1 stone
/summon bat ~ ~ ~ {CustomName:"MMH_Chunkloader",CustomNameVisible:0b,Silent:1}
/spreadplayers 23 23 0 1 false @e[name=MMH_Chunkloader]
/kill @e[name=MMH_Chunkloader]
# Return
/execute @e[name=MMH_loadChunks_return] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/kill @e[name=MMH_loadChunks_return]





# Blue Gel
/summon Item ~-1 ~-1 ~-1 {CustomName:"ACV_BlueGel",Age:-32768,PickupDelay:32767,Item:{Count:1,Damage:11,id:"minecraft:wool"}}

impulse: /give @p spawn_egg 1 0 {display:{Name:"Blue Gel"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_BlueGelSpawner",Silent:1}}
/execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/clone ~1 ~1 ~1 ~3 ~5 ~3 16 1 16

repeat: /testfor @e[type=Chicken,name=MMH_BlueGelSpawner]
conditional: /execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
conditional: /summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/execute @e[type=Chicken,name=MMH_BlueGelSpawner] ~ ~ ~ /clone 16 1 16 18 5 18 ~-1 ~1 ~-1 masked
/execute @e[type=Chicken,name=MMH_BlueGelSpawner] ~ ~1 ~ /fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
/tp @e[type=Chicken,name=MMH_BlueGelSpawner] ~ -100 ~





# Orange Gel
/summon Item ~-1 ~-1 ~-1 {CustomName:"ACV_OrangeGel",Age:-32768,PickupDelay:32767,Item:{Count:1,Damage:1,id:"minecraft:wool"}}

impulse: /give @p spawn_egg 1 0 {display:{Name:"Orange Gel"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_OrangeGelSpawner",Silent:1}}
/execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/clone ~1 ~1 ~1 ~3 ~5 ~3 20 1 16

repeat: /testfor @e[type=Chicken,name=MMH_OrangeGelSpawner]
conditional: /execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
conditional: /summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/execute @e[type=Chicken,name=MMH_OrangeGelSpawner] ~ ~ ~ /clone 20 1 16 22 5 18 ~-1 ~1 ~-1 masked
/execute @e[type=Chicken,name=MMH_OrangeGelSpawner] ~ ~1 ~ /fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
/tp @e[type=Chicken,name=MMH_OrangeGelSpawner] ~ -100 ~





# Cube Dispenser
repeat: /testfor @e[type=armor_stand,name=ACV_Cube,tag=1]
/blockdata ${-1} {SuccessCount:1}
conditional: /summon armor_stand ~1 ~-2 ~-1 {CustomName:"ACV_Cube",DisabledSlots:2035728,ArmorItems:[{},{},{},{Count:1,Damage:6,id:"stone"}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["1"]}

impulse: /give @p spawn_egg 1 0 {display:{Name:"Cube Dispenser"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_CubeDispenser",Silent:1}}
/execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/clone ~1 ~1 ~1 ~3 ~4 ~3 24 1 16

repeat: /testfor @e[type=Chicken,name=MMH_CubeDispenser]
conditional: /execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
conditional: /summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/execute @e[type=Chicken,name=MMH_CubeDispenser] ~ ~ ~ /clone 24 1 16 26 4 18 ~-1 ~1 ~-1 masked
/execute @e[type=Chicken,name=MMH_CubeDispenser] ~ ~1 ~ /fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
/tp @e[type=Chicken,name=MMH_CubeDispenser] ~ -100 ~





# Redirecting Cube Dispenser
repeat: /testfor @e[type=armor_stand,name=ACV_Cube,tag=1]
/blockdata ${-1} {SuccessCount:1}
conditional: /summon armor_stand ~1 ~-2 ~-1 {CustomName:"ACV_Cube",DisabledSlots:2035728,ArmorItems:[{},{},{},{Count:1,id:"dispenser"}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["ACV_Redirecting","1"]}

impulse: /give @p spawn_egg 1 0 {display:{Name:"Redirecting Cube Dispenser"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_RedirectingCubeDispenser",Silent:1}}
/execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/clone ~1 ~1 ~1 ~3 ~4 ~3 28 1 16

repeat: /testfor @e[type=Chicken,name=MMH_RedirectingCubeDispenser]
conditional: /execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
conditional: /summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/execute @e[type=Chicken,name=MMH_RedirectingCubeDispenser] ~ ~ ~ /clone 28 1 16 30 4 18 ~-1 ~1 ~-1 masked
/execute @e[type=Chicken,name=MMH_RedirectingCubeDispenser] ~ ~1 ~ /fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
/tp @e[type=Chicken,name=MMH_RedirectingCubeDispenser] ~ -100 ~





# Portal Spawner
impulse: /summon armor_stand ~ ~ ~2 {CustomName:"ACV_remote_createPortal_PARAM",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/scoreboard players set Color ACV_Interface 0
/execute @e[name=ACV_remote_createPortal] ~ ~ ~ /setblock ~ ~ ~ redstone_block
impulse: /summon armor_stand ~ ~ ~-2 {CustomName:"ACV_remote_createPortal_PARAM",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/scoreboard players set Color ACV_Interface 0
/execute @e[name=ACV_remote_createPortal] ~ ~ ~ /setblock ~ ~ ~ redstone_block
impulse: /summon armor_stand ~2 ~ ~ {CustomName:"ACV_remote_createPortal_PARAM",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/scoreboard players set Color ACV_Interface 0
/execute @e[name=ACV_remote_createPortal] ~ ~ ~ /setblock ~ ~ ~ redstone_block
impulse: /summon armor_stand ~-2 ~ ~ {CustomName:"ACV_remote_createPortal_PARAM",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
/scoreboard players set Color ACV_Interface 0
/execute @e[name=ACV_remote_createPortal] ~ ~ ~ /setblock ~ ~ ~ redstone_block

impulse: /give @p spawn_egg 1 0 {display:{Name:"Portal Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_PortalSpawner",Silent:1}}
/execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/clone ~1 ~1 ~1 ~3 ~3 ~3 16 1 20

repeat: /testfor @e[type=Chicken,name=MMH_PortalSpawner]
conditional: /execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
conditional: /summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ /scoreboard players operation Rotation MMH_Rotation = @p MMH_Rotation
/scoreboard players test Rotation MMH_Rotation 0 0
/execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ /clone 16 1 21 16 3 21 ~-2 ~1 ~ masked
/scoreboard players test Rotation MMH_Rotation 1 1
/execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ /clone 17 1 20 17 3 20 ~ ~1 ~-2 masked
/scoreboard players test Rotation MMH_Rotation 2 2
/execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ /clone 18 1 21 18 3 21 ~2 ~1 ~ masked
/scoreboard players test Rotation MMH_Rotation 3 3
/execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ /clone 17 1 22 17 3 22 ~ ~1 ~2 masked
/tp @e[type=Chicken,name=MMH_PortalSpawner] ~ -100 ~





# Light Bridge Spawner
impulse: /summon armor_stand ~ ~1 ~2 {CustomName:"ACV_LightBridge",Rotation:[0.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~ ~-1 ~2 {CustomName:"ACV_AntiBridge",Rotation:[0.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~ ~1 ~-2 {CustomName:"ACV_LightBridge",Rotation:[180.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~ ~-1 ~-2 {CustomName:"ACV_AntiBridge",Rotation:[180.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~2 ~1 ~ {CustomName:"ACV_LightBridge",Rotation:[-90.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~2 ~-1 ~ {CustomName:"ACV_AntiBridge",Rotation:[-90.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~-2 ~1 ~ {CustomName:"ACV_LightBridge",Rotation:[90.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~-2 ~-1 ~ {CustomName:"ACV_AntiBridge",Rotation:[90.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}

impulse: /give @p spawn_egg 1 0 {display:{Name:"Light Bridge Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_LightBridgeSpawner",Silent:1}}
/execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/clone ~1 ~1 ~1 ~3 ~3 ~3 20 1 20

repeat: /testfor @e[type=Chicken,name=MMH_LightBridgeSpawner]
conditional: /execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
conditional: /summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ /scoreboard players operation Rotation MMH_Rotation = @p MMH_Rotation
/scoreboard players test Rotation MMH_Rotation 0 0
/execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ /clone 20 1 20 20 3 21 ~-2 ~ ~-1 masked
/scoreboard players test Rotation MMH_Rotation 1 1
/execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ /clone 21 1 20 22 3 20 ~ ~ ~-2 masked
/scoreboard players test Rotation MMH_Rotation 2 2
/execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ /clone 22 1 21 22 3 22 ~2 ~ ~ masked
/scoreboard players test Rotation MMH_Rotation 3 3
/execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ /clone 20 1 22 21 3 22 ~-1 ~ ~2 masked
/tp @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ -100 ~





# Laser Spawner
impulse: /summon armor_stand ~3 ~1 ~1 {CustomName:"ACV_Laser",Rotation:[-90.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~-1 ~1 ~3 {CustomName:"ACV_Laser",Rotation:[0.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~-3 ~1 ~-1 {CustomName:"ACV_Laser",Rotation:[90.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
impulse: /summon armor_stand ~1 ~1 ~-3 {CustomName:"ACV_Laser",Rotation:[180.0f,0.0f],NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}

impulse: /give @p spawn_egg 1 0 {display:{Name:"Laser Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_LaserSpawner",Silent:1}}
/execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
/summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/clone ~1 ~1 ~1 ~2 ~8 ~2 24 1 20

repeat: /testfor @e[type=Chicken,name=MMH_LaserSpawner]
conditional: /execute @e[name=MMH_loadChunks] ~ ~ ~ /setblock ~ ~ ~ redstone_block
conditional: /summon armor_stand ${1} {CustomName:"MMH_loadChunks_return",NoGravity:1b,Invisible:1b,Invulnerable:1b,Marker:1b}
$ pass
impulse: /setblock ${-1} stone
/execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ /scoreboard players operation Rotation MMH_Rotation = @p MMH_Rotation
/scoreboard players test Rotation MMH_Rotation 0 0
/execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ /clone 24 1 20 25 2 21 ~-3 ~ ~-1 masked
/scoreboard players test Rotation MMH_Rotation 1 1
/execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ /clone 24 3 20 25 4 21 ~ ~ ~-3 masked
/scoreboard players test Rotation MMH_Rotation 2 2
/execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ /clone 24 5 20 25 6 21 ~2 ~ ~ masked
/scoreboard players test Rotation MMH_Rotation 3 3
/execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ /clone 24 7 20 25 8 21 ~-1 ~ ~2 masked
/tp @e[type=Chicken,name=MMH_LaserSpawner] ~ -100 ~




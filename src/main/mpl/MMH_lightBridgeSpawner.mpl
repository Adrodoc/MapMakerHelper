//impulse: /give @p spawn_egg 1 0 {display:{Name:"Light Bridge Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_LightBridgeSpawner",Silent:1,NoGravity:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~3 ~3 20 1 16

#MMH
repeat process MMH_lightBridgeSpawner {
if: /testfor @e[type=Chicken,name=MMH_LightBridgeSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ scoreboard players operation Rotation MMH_Rotation = @p MMH_Rotation
  /scoreboard players test Rotation MMH_Rotation 0 0
  conditional: /execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ clone 20 1 16 20 3 17 ~-2 ~-1 ~-1 masked
  /scoreboard players test Rotation MMH_Rotation 1 1
  conditional: /execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ clone 21 1 16 22 3 16 ~ ~-1 ~-2 masked
  /scoreboard players test Rotation MMH_Rotation 2 2
  conditional: /execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ clone 22 1 17 22 3 18 ~2 ~-1 ~ masked
  /scoreboard players test Rotation MMH_Rotation 3 3
  conditional: /execute @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ ~ ~ clone 20 1 18 21 3 18 ~-1 ~-1 ~2 masked
  /tp @e[type=Chicken,name=MMH_LightBridgeSpawner] ~ -100 ~
}
}

//impulse: /summon area_effect_cloud ~2 ~1 ~ {CustomName:"ACV_LightBridge",Rotation:[-90.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_lightBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block
//impulse: /summon area_effect_cloud ~2 ~-1 ~ {CustomName:"ACV_AntiBridge",Rotation:[-90.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_antiBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block
//
//impulse: /summon area_effect_cloud ~ ~1 ~2 {CustomName:"ACV_LightBridge",Rotation:[0.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_lightBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block
//impulse: /summon area_effect_cloud ~ ~-1 ~2 {CustomName:"ACV_AntiBridge",Rotation:[0.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_antiBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block
//
//impulse: /summon area_effect_cloud ~-2 ~1 ~ {CustomName:"ACV_LightBridge",Rotation:[90.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_lightBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block
//impulse: /summon area_effect_cloud ~-2 ~-1 ~ {CustomName:"ACV_AntiBridge",Rotation:[90.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_antiBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block
//
//impulse: /summon area_effect_cloud ~ ~1 ~-2 {CustomName:"ACV_LightBridge",Rotation:[180.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_lightBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block
//impulse: /summon area_effect_cloud ~ ~-1 ~-2 {CustomName:"ACV_AntiBridge",Rotation:[180.0f,0.0f],Duration:2147483647}
///execute @e[name=ACV_antiBridges] ~ ~ ~ setblock ~ ~ ~ redstone_block

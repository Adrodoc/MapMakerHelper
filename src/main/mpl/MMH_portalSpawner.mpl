//impulse: /give @p spawn_egg 1 0 {display:{Name:"Portal Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_PortalSpawner",Silent:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~3 ~3 16 1 20

#MMH
repeat process MMH_portalSpawner {
if: /testfor @e[type=Chicken,name=MMH_PortalSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ scoreboard players operation Rotation MMH_Rotation = @p MMH_Rotation
  /scoreboard players test Rotation MMH_Rotation 0 0
  conditional: /execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ clone 16 1 21 16 3 21 ~-2 ~ ~ masked
  /scoreboard players test Rotation MMH_Rotation 1 1
  conditional: /execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ clone 17 1 20 17 3 20 ~ ~ ~-2 masked
  /scoreboard players test Rotation MMH_Rotation 2 2
  conditional: /execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ clone 18 1 21 18 3 21 ~2 ~ ~ masked
  /scoreboard players test Rotation MMH_Rotation 3 3
  conditional: /execute @e[type=Chicken,name=MMH_PortalSpawner] ~ ~ ~ clone 17 1 22 17 3 22 ~ ~ ~2 masked
  /tp @e[type=Chicken,name=MMH_PortalSpawner] ~ -100 ~
}
}

//impulse: /summon area_effect_cloud ~2 ~.1 ~ {CustomName:"ACV_remote_createPortals_PARAM",Tags:["ACV_Blue"],Duration:2147483647}
///execute @e[name=ACV_remote_createPortals] ~ ~ ~ setblock ~ ~ ~ redstone_block
//
//impulse: /summon area_effect_cloud ~ ~.1 ~2 {CustomName:"ACV_remote_createPortals_PARAM",Tags:["ACV_Blue"],Duration:2147483647}
///execute @e[name=ACV_remote_createPortals] ~ ~ ~ setblock ~ ~ ~ redstone_block
//
//impulse: /summon area_effect_cloud ~-2 ~.1 ~ {CustomName:"ACV_remote_createPortals_PARAM",Tags:["ACV_Blue"],Duration:2147483647}
///execute @e[name=ACV_remote_createPortals] ~ ~ ~ setblock ~ ~ ~ redstone_block
//
//impulse: /summon area_effect_cloud ~ ~.1 ~-2 {CustomName:"ACV_remote_createPortals_PARAM",Tags:["ACV_Blue"],Duration:2147483647}
///execute @e[name=ACV_remote_createPortals] ~ ~ ~ setblock ~ ~ ~ redstone_block

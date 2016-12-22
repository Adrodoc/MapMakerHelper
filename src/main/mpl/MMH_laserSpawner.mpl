//impulse: /give @p spawn_egg 1 0 {display:{Name:"Laser Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_LaserSpawner",Silent:1,NoGravity:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~2 ~8 ~2 24 1 16

#MMH
repeat process MMH_laserSpawner {
if: /testfor @e[type=Chicken,name=MMH_LaserSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ scoreboard players operation Rotation MMH_Rotation = @p MMH_Rotation
  /scoreboard players test Rotation MMH_Rotation 0 0
  conditional: /execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ clone 24 1 16 25 2 17 ~-3 ~-1 ~-1 masked
  /scoreboard players test Rotation MMH_Rotation 1 1
  conditional: /execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ clone 24 3 16 25 4 17 ~ ~-1 ~-3 masked
  /scoreboard players test Rotation MMH_Rotation 2 2
  conditional: /execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ clone 24 5 16 25 6 17 ~2 ~-1 ~ masked
  /scoreboard players test Rotation MMH_Rotation 3 3
  conditional: /execute @e[type=Chicken,name=MMH_LaserSpawner] ~ ~ ~ clone 24 7 16 25 8 17 ~-1 ~-1 ~2 masked
  /tp @e[type=Chicken,name=MMH_LaserSpawner] ~ -100 ~
}
}

//impulse: /summon area_effect_cloud ~3 ~1 ~1 {CustomName:"ACV_Laser",Rotation:[-90.0f,0.0f],Duration:2147483647}
//impulse: /summon area_effect_cloud ~-1 ~1 ~3 {CustomName:"ACV_Laser",Rotation:[0.0f,0.0f],Duration:2147483647}
//impulse: /summon area_effect_cloud ~-3 ~1 ~-1 {CustomName:"ACV_Laser",Rotation:[90.0f,0.0f],Duration:2147483647}
//impulse: /summon area_effect_cloud ~1 ~1 ~-3 {CustomName:"ACV_Laser",Rotation:[180.0f,0.0f],Duration:2147483647}

//impulse: /give @p spawn_egg 1 0 {display:{Name:"Cube Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_CubeSpawner",Silent:1,NoGravity:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~4 ~3 16 1 20

#MMH
repeat process MMH_weightedStorageCubeSpawner {
if: /testfor @e[type=Chicken,name=MMH_CubeSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_CubeSpawner] ~ ~ ~ clone 16 1 20 18 4 22 ~-1 ~ ~-1 masked
  /execute @e[type=Chicken,name=MMH_CubeSpawner] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
  /tp @e[type=Chicken,name=MMH_CubeSpawner] ~ -100 ~
}
}

//repeat: /testfor @e[type=armor_stand,name=ACV_Cube,tag=1]
///blockdata ${-1} {SuccessCount:1}
//conditional: /summon armor_stand ~1 ~-2 ~-1 {CustomName:"ACV_Cube",DisabledSlots:2035728,ArmorItems:[{},{},{},{Count:1,Damage:6,id:"stone"}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["1"]}

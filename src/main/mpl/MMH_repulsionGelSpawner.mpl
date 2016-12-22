//impulse: /give @p spawn_egg 1 0 {display:{Name:"Repulsion Gel"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_RepulsionGelSpawner",Silent:1,NoGravity:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~5 ~3 16 1 24

#MMH
repeat process MMH_repulsionGelSpawner {
if: /testfor @e[type=Chicken,name=MMH_RepulsionGelSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_RepulsionGelSpawner] ~ ~ ~ clone 16 1 24 18 5 26 ~-1 ~ ~-1 masked
  /execute @e[type=Chicken,name=MMH_RepulsionGelSpawner] ~ ~1 ~ fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
  /tp @e[type=Chicken,name=MMH_RepulsionGelSpawner] ~ -100 ~
}
}

///summon item ~-1 ~-1 ~-1 {CustomName:"ACV_RepulsionGel",PickupDelay:32767,Item:{Count:1,Damage:11,id:"minecraft:wool"}}

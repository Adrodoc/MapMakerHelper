//impulse: /give @p spawn_egg 1 0 {display:{Name:"Propulsion Gel"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_PropulsionGelSpawner",Silent:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~5 ~3 20 1 16

#MMH
repeat process MMH_propulsionGelSpawner {
if: /testfor @e[type=Chicken,name=MMH_PropulsionGelSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_PropulsionGelSpawner] ~ ~ ~ clone 20 1 16 22 5 18 ~-1 ~ ~-1 masked
  /execute @e[type=Chicken,name=MMH_PropulsionGelSpawner] ~ ~1 ~ fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
  /tp @e[type=Chicken,name=MMH_PropulsionGelSpawner] ~ -100 ~
}
}

///summon item ~-1 ~-1 ~-1 {CustomName:"ACV_PropulsionGel",PickupDelay:32767,Item:{Count:1,Damage:1,id:"minecraft:wool"}}

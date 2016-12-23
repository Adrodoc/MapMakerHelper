//impulse: /give @p spawn_egg 1 0 {display:{Name:"Cleansing Gel Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_CleansingGelSpawner",Silent:1,NoGravity:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~5 ~3 24 1 24

#MMH
repeat process MMH_cleansingGelSpawner {
if: /testfor @e[type=Chicken,name=MMH_CleansingGelSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_CleansingGelSpawner] ~ ~ ~ clone 24 1 24 26 5 26 ~-1 ~ ~-1 masked
  /execute @e[type=Chicken,name=MMH_CleansingGelSpawner] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
  /tp @e[type=Chicken,name=MMH_CleansingGelSpawner] ~ -100 ~
}
}

///summon item ~-1 ~-1 ~-1 {CustomName:"ACV_CleansingGel",PickupDelay:32767,Item:{Count:1,Damage:1,id:"minecraft:wool"}}

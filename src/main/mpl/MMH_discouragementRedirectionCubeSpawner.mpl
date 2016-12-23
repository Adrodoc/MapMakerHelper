//impulse: /give @p spawn_egg 1 0 {display:{Name:"Redirecting Cube Spawner"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_RedirectingCubeSpawner",Silent:1,NoGravity:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~4 ~3 20 1 20

#MMH
repeat process MMH_discouragementRedirectionCubeSpawner {
if: /testfor @e[type=Chicken,name=MMH_RedirectingCubeSpawner]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_RedirectingCubeSpawner] ~ ~ ~ clone 20 1 20 22 4 22 ~-1 ~ ~-1 masked
  /execute @e[type=Chicken,name=MMH_RedirectingCubeSpawner] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
  /tp @e[type=Chicken,name=MMH_RedirectingCubeSpawner] ~ -100 ~
}
}

//repeat: /testfor @e[type=armor_stand,name=ACV_Cube,tag=1]
///blockdata ${-1} {SuccessCount:1}
//conditional: /summon armor_stand ~1 ~-2 ~-1 {CustomName:"ACV_Cube",DisabledSlots:2035728,ArmorItems:[{},{},{},{Count:1,id:"dispenser"}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["ACV_Redirecting","1"]}

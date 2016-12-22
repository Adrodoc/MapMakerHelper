//impulse: /give @p spawn_egg 1 0 {display:{Name:"Redirecting Cube Dispenser"},EntityTag:{id:"minecraft:chicken",CustomName:"MMH_RedirectingCubeDispenser",Silent:1,NoGravity:1}}
//MMH_loadChunks()
///clone ~1 ~1 ~1 ~3 ~4 ~3 28 1 16

#MMH
repeat process MMH_discouragementRedirectionCubeSpawner {
if: /testfor @e[type=Chicken,name=MMH_RedirectingCubeDispenser]
then {
  MMH_loadChunks()
  /execute @e[type=Chicken,name=MMH_RedirectingCubeDispenser] ~ ~ ~ clone 28 1 16 30 4 18 ~-1 ~ ~-1 masked
  /execute @e[type=Chicken,name=MMH_RedirectingCubeDispenser] ~ ~ ~ fill ~ ~ ~ ~ ~ ~ air 0 replace pumpkin
  /tp @e[type=Chicken,name=MMH_RedirectingCubeDispenser] ~ -100 ~
}
}

//repeat: /testfor @e[type=armor_stand,name=ACV_Cube,tag=1]
///blockdata ${-1} {SuccessCount:1}
//conditional: /summon armor_stand ~1 ~-2 ~-1 {CustomName:"ACV_Cube",DisabledSlots:2035728,ArmorItems:[{},{},{},{Count:1,id:"dispenser"}],NoGravity:1b,Invisible:1b,Invulnerable:1b,Tags:["ACV_Redirecting","1"]}

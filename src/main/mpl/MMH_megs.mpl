//impulse: /give @p spawn_egg 1 0 {EntityTag:{id:"minecraft:squid"},display:{Name:"spawnMeg",Lore:["Use this to spawn","a Material Emancipation Grid"]}}
//impulse: /give @p spawn_egg 1 0 {EntityTag:{id:"minecraft:squid"},display:{Name:"deleteMeg",Lore:["Use this to delete","a Material Emancipation Grid"]}}

#MMH
repeat process MMH_megs {
  /execute @e[type=squid,name=spawnMeg] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {CustomName:ACV_MEG,Duration:2147483647,Passengers:[{id:creeper,CustomName:ACV_MEG,powered:1,ActiveEffects:[{Amplifier:1,Duration:1000000,Id:14,ShowParticles:0b}],PersistenceRequired:1,Invulnerable:1,NoAI:1}]}
  /tp @e[type=squid,name=spawnMeg] ~ -100 ~
  /execute @e[type=squid,name=deleteMeg] ~ ~ ~ tp @e[name=ACV_MEG,dy=-1] ~ -100 ~
  /tp @e[type=squid,name=deleteMeg] ~ -100 ~
}

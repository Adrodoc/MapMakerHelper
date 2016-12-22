//impulse: /give @p spawn_egg 1 0 {EntityTag:{id:"minecraft:squid"},display:{Name:"spawnMeg",Lore:["Use this to spawn","a Material Emancipation Grid"]}}
//impulse: /give @p spawn_egg 1 0 {EntityTag:{id:"minecraft:squid"},display:{Name:"deleteMeg",Lore:["Use this to delete","a Material Emancipation Grid"]}}

#MMH
repeat process MMH_megs {
  /execute @e[type=squid,name=spawnMeg] ~ ~ ~ summon armor_stand ~ ~ ~ {CustomName:ACV_MEG,NoGravity:1,Invisible:1,Invulnerable:1,Marker:1,Passengers:[{id:creeper,CustomName:ACV_MEG,Invulnerable:1,NoAI:1,powered:1,PersistenceRequired:1,ActiveEffects:[{Amplifier:1,Duration:1000000,Id:14,ShowParticles:0b}]}]}
  /tp @e[type=squid,name=spawnMeg] ~ -100 ~
  /execute @e[type=squid,name=deleteMeg] ~ ~ ~ tp @e[name=ACV_MEG,dy=-1] ~ -100 ~
  /tp @e[type=squid,name=deleteMeg] ~ -100 ~
}

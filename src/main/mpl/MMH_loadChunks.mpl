impulse process MMH_loadChunks {
/summon area_effect_cloud ~ ~ ~ {CustomName:"MMH_Chunkloader",Duration:1}
/spreadplayers 23 23 0 1 false @e[type=area_effect_cloud,name=MMH_Chunkloader]
/kill @e[type=area_effect_cloud,name=MMH_Chunkloader]
}

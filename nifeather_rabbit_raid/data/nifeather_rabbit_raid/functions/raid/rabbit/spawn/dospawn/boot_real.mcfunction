scoreboard players add $nrr_rabbits nrr_stats 1
scoreboard players add @s nrr_temp 1 

function nifeather_rabbit_raid:raid/rabbit/summon
execute if score @s nrr_temp < $nrr_spawnPerTry nrr_stats run function nifeather_rabbit_raid:raid/rabbit/spawn/dospawn/boot_real
scoreboard players add $nrr_rabbits nrr_stats 1

execute as @e[tag=nrr_spawner, sort=random, limit=1] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/summon/boot

execute if score $nrr_rabbits nrr_stats < $nrr_targetSpawnCount nrr_stats run function nifeather_rabbit_raid:raid/rabbit/spawn/fix/run
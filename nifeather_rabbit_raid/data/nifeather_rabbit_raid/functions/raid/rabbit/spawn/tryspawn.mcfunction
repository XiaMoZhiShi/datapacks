kill @e[tag=nrr_sparead_centre]

execute as @e[tag=nrr_spawner] at @s if score $nrr_rabbits nrr_stats < $nrr_targetSpawnCount nrr_options run function nifeather_rabbit_raid:raid/rabbit/spawn/dospawn/boot

execute if score $nrr_spreadFails nrr_stats matches 1.. run function nifeather_rabbit_raid:raid/rabbit/spawn/fix/boot
kill @e[tag=nrr_spawner]
execute as @e[tag=nrr_spawner, tag=notSpawnable] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/try_spread

execute as @e[tag=spawnable] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/spawnable_doublecheck
summon armor_stand ~ ~ ~ {Tags:["nrr_spawner"]}
spreadplayers ~ ~ 0 40 false @e[tag=nrr_spawner]

execute as @e[tag=nrr_spawner] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/run
kill @e[tag=nrr_spawner]

execute if score $nrr_rabbits nife_stats matches ..39 run function nifeather_rabbit_raid:raid/rabbit/spawn/tryspawn
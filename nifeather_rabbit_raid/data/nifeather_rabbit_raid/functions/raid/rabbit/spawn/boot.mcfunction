summon armor_stand ~ ~ ~ {Tags:["nrr_spawner"]}
spreadplayers ~ ~ 0 60 false @e[tag=nrr_spawner]

execute at @e[tag=nrr_spawner] run function nifeather_rabbit_raid:raid/rabbit/spawn/run
kill @e[tag=nrr_spawner]

execute as @e[tag=nrr_rabbit] run function nifeather_rabbit_raid:raid/rabbit/bossbar/max_upd/update
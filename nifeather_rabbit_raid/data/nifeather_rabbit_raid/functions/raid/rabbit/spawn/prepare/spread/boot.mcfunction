summon marker ~ ~ ~ {Tags:["nrr_sparead_centre"]}
scoreboard players set $nrr_spreadFails nrr_stats 0
#declare entity $nrr_spreadFails 失败了多少次

execute as @e[tag=nrr_spawner] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/try_spread
summon marker ~ ~ ~ {Tags:["nrr_sparead_centre"]}
scoreboard players set $nrr_spreadFails nrr_stats 0
#declare entity $nrr_spreadFails 失败了多少次

scoreboard players operation $nrr_maxSpreadTime nrr_stats = $nrr_prepareTime nrr_stats
scoreboard players operation $nrr_maxSpreadTime nrr_stats -= #nrr_20 nife_stats
#declare entity $nrr_maxSpreadTime 最大扩散时间

execute as @e[tag=nrr_spawner] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/try_spread
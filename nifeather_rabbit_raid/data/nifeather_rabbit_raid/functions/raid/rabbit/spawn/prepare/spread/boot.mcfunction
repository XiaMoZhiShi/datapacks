#生成扩散中心
summon marker ~ ~ ~ {Tags:["nrr_spread_centre"]}

#初始化记分板
scoreboard players set $nrr_spreadFails nrr_stats 0
#declare entity $nrr_spreadFails 失败了多少次

#最大扩散时间 = 准备时间 - 20（1秒）
scoreboard players operation $nrr_maxSpreadTime nrr_stats = $nrr_prepareTime nrr_options
scoreboard players operation $nrr_maxSpreadTime nrr_stats -= #nrr_20 nife_stats
#declare entity $nrr_maxSpreadTime 最大扩散时间

#尝试扩散一次
execute as @e[tag=nrr_spawner] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/try_spread
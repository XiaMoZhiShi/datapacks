#检查脚下的方块是否仍然可以伸生成
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ #nifeather_rabbit_raid:spawnable run tag @s add notSpawnable
execute at @s if block ~ ~ ~ air unless block ~ ~-1 ~ #nifeather_rabbit_raid:spawnable run tag @s add notSpawnable

#如果不能，那么移除标签并设置时间
tag @s[tag=notSpawnable] remove spawnable
scoreboard players operation @s[tag=notSpawnable] nrr_temp = $nrr_bossbarValue nrr_stats
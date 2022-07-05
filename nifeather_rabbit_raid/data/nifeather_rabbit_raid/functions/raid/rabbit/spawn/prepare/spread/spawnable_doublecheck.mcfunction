tag @s remove spawnable
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ #nifeather_rabbit_raid:spawnable run tag @s add notSpawnable
execute at @s if block ~ ~ ~ air unless block ~ ~-1 ~ #nifeather_rabbit_raid:spawnable run tag @s add notSpawnable

tag @s[tag=!notSpawnable] add spawnable
scoreboard players operation @s[tag=notSpawnable] nrr_temp = $nrr_bossbarValue nrr_stats
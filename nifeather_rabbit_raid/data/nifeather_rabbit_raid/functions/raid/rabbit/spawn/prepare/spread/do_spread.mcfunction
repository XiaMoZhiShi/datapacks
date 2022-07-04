tag @s remove notSpawnable

execute at @e[tag=nrr_sparead_centre] run spreadplayers ~ ~ 0 60 false @s
execute at @s unless block ~ ~ ~ air if block ~ ~ ~ #nifeather_rabbit_raid:not_spawnable run tag @s add notSpawnable
execute at @s if block ~ ~ ~ air if block ~ ~-1 ~ #nifeather_rabbit_raid:not_spawnable run tag @s add notSpawnable
execute at @s if entity @e[tag=nrr_spawner, distance=0.1..15] run tag @s add notSpawnable

#重试次数
scoreboard players add @s nrr_temp 1
execute if entity @s[tag=!notSpawnable] run scoreboard players reset @s
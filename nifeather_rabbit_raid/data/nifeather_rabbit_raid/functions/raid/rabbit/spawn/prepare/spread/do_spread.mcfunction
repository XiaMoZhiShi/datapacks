tag @s remove notSpawnable

execute at @e[tag=nrr_sparead_centre] run spreadplayers ~ ~ 0 35 false @s
execute at @s unless block ~ ~ ~ air unless block ~ ~ ~ #nifeather_rabbit_raid:spawnable run tag @s add notSpawnable
execute at @s if block ~ ~ ~ air unless block ~ ~-1 ~ #nifeather_rabbit_raid:spawnable run tag @s add notSpawnable

execute at @s store result score $spawnersNearBy nrr_temp if entity @e[tag=spawnable, tag=nrr_spawner, distance=..15]
execute if score $spawnersNearBy nrr_temp matches 1.. run tag @s add notSpawnable

#execute at @s run particle large_smoke ~ ~.5 ~ 0 0 0 0 1 force

#重试次数
scoreboard players add @s nrr_temp 1
execute if entity @s[tag=!notSpawnable] run scoreboard players reset @s
execute if entity @s[tag=!notSpawnable] run tag @s add spawnable
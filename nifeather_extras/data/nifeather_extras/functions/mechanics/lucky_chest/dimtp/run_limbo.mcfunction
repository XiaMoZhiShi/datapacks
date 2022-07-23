particle minecraft:end_rod ~ ~1.3 ~ 1 1 1 0 100

#execute in overworld run tp @s @e[tag=villager_detector, limit=1]
#execute in nifeather_extras:villages run tp @s 0 255 0
execute in minecraft:overworld run tp @s 0 255 0
execute at @s run spreadplayers ~ ~ 10 20 false @s

advancement grant @s only nifeather_extras:display/limbo/escape_limbo out
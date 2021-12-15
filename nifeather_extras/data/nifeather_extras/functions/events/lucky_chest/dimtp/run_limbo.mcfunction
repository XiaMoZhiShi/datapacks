particle minecraft:end_rod ~ ~1.3 ~ 1 1 1 0 100

execute in overworld run tp @s @e[tag=villager_detector, limit=1]
execute unless entity @e[tag=villager_detector] run kill @s
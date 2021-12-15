execute at @e[tag=villager_detector] as @e[type=villager, distance=..64] at @s run function #llin_sb_villager:detects
execute at @e[tag=villager_detector] as @e[type=iron_golem, distance=..64] at @s run function #llin_sb_villager:detects
execute at @e[tag=villager_detector] run particle minecraft:cloud ~ ~ ~ 0.5 1 0.5 0 100
execute at @e[tag=villager_detector] as @e[type=villager, distance=..64] at @s run function #llin_sb_villager:detects
execute at @e[tag=villager_detector] as @e[type=iron_golem, distance=..64] at @s run function #llin_sb_villager:detects
execute at @e[tag=villager_detector] as @e[type=bee, tag=detector_target, distance=..63] at @s run function #llin_sb_villager:detects
execute at @e[tag=villager_detector] as @e[type=bee, tag=detector_target, distance=63..64] at @s run function llin_sb_villager:teleport_to_nearest_detector
execute at @e[type=bee, tag=detector_target] run tag @e[distance=..4, type=bee, tag=!detector_target] add detector_target

execute at @e[tag=villager_detector] run particle minecraft:cloud ~ ~ ~ 0.5 1 0.5 0 100
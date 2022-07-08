tag @s add nrr_processed
execute store result score @s nrr_temp run data get entity @s UUID[0]
scoreboard players operation @s nrr_temp %= $nrr_rabbitTriggerChance nrr_stats

execute if score @s nrr_temp matches 0 run tag @s add nrr_canTriggerRaid
scoreboard players reset @s
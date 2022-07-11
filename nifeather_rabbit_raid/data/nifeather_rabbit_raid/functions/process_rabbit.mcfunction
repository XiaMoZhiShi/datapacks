tag @s add nrr_processed
execute store result score @s nrr_temp run data get entity @s UUID[0]
scoreboard players operation @s nrr_temp %= $nrr_rabbitTriggerChance nrr_options

execute if score @s nrr_temp matches 0 run tag @s add nrr_canTriggerRaid
execute if score @s nrr_temp matches 0 run data merge entity @s {RabbitType: 99, CustomName: '{"text":"多兔"}'}
scoreboard players reset @s
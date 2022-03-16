#+20%/每级，因此倍率为1+(0.2*lvl)
#attribute @s generic.movement_speed modifier add 7bcf45ef-7450-4d1c-a9b1-055f7f9c7db2 "hub.speed.mod" 1.2 multiply_base

attribute @s generic.movement_speed modifier remove 7bcf45ef-7450-4d1c-a9b1-055f7f9c7db2

execute if score @s xmzs_sprinit_timer matches 20..40 run attribute @s generic.movement_speed modifier add 7bcf45ef-7450-4d1c-a9b1-055f7f9c7db2 "xiamoHub.speedModifier" 0.2 multiply_base

execute if score @s xmzs_sprinit_timer matches 40..60 run attribute @s generic.movement_speed modifier add 7bcf45ef-7450-4d1c-a9b1-055f7f9c7db2 "xiamoHub.speedModifier" 0.4 multiply_base

execute if score @s xmzs_sprinit_timer matches 60..220 run attribute @s generic.movement_speed modifier add 7bcf45ef-7450-4d1c-a9b1-055f7f9c7db2 "xiamoHub.speedModifier" 0.6 multiply_base

execute if score @s xmzs_sprinit_timer matches 220.. run attribute @s generic.movement_speed modifier add 7bcf45ef-7450-4d1c-a9b1-055f7f9c7db2 "xiamoHub.speedModifier" 1.0 multiply_base
execute store result score @s nrr_temp run data get entity @s UUID[0]

scoreboard players operation @s nrr_temp %= $nrr_conditionCount nrr_stats

#判断要哪个时间
execute if score @s nrr_temp matches 0 run function nifeather_rabbit_raid:raid/ex_conditions/conditions/xp_level/give
execute if score @s nrr_temp matches 1 run function nifeather_rabbit_raid:raid/ex_conditions/conditions/kill_time/give
execute if score @s nrr_temp matches 2 run function nifeather_rabbit_raid:raid/ex_conditions/conditions/nano_rabbit/give

kill @s
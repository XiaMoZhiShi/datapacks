execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "SelectNewDeathEvent: ", {"selector": "@s"}]

#随机事件
loot spawn ~ ~ ~ loot nifeather_3lives:respawn_random_event

scoreboard players set @s n3l_random -1

execute store result score @s n3l_random run data get entity @e[type=item, sort=nearest, limit=1] Item.tag.NType
kill @e[type=item, nbt={Item:{tag:{N3L: 1b}}}, sort=nearest, limit=1]

execute if score @s n3l_random matches 0 run function nifeather_3lives:deathevents/events/0_no_event
execute if score @s n3l_random matches 1 run function nifeather_3lives:deathevents/events/1_explode_on_death
execute if score @s n3l_random matches 2 run function nifeather_3lives:deathevents/events/2_reduce_health
execute if score @s n3l_random matches 3 run function nifeather_3lives:deathevents/events/3_slow_movement
execute if score @s n3l_random matches 4 run function nifeather_3lives:deathevents/events/4_slow_attack_speed
execute if score @s n3l_random matches 5 run function nifeather_3lives:deathevents/events/5_weak_attack
execute if score @s n3l_random matches 6 run function nifeather_3lives:deathevents/events/6_weak_armor
execute if score @s n3l_random matches 7 run function nifeather_3lives:deathevents/events/7_fast_attack
execute if score @s n3l_random matches 8 run function nifeather_3lives:deathevents/events/8_strong_armor
execute if score @s n3l_random matches 9 run function nifeather_3lives:deathevents/events/9_more_health
execute if score @s n3l_random matches 10 run function nifeather_3lives:deathevents/events/10_once_again
execute if score @s n3l_random matches 11 run function nifeather_3lives:deathevents/events/11_good_luck
execute if score @s n3l_random matches 12 run function nifeather_3lives:deathevents/events/12_bad_luck
execute if score @s n3l_random matches 13 run function nifeather_3lives:deathevents/events/13_blind

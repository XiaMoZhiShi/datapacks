execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "SelectNewDeathEvent: ", {"selector": "@s"}]

#随机事件
loot spawn ~ ~ ~ loot nifeather_3lives:respawn_random_event

scoreboard players set @s nife_stats -1

execute store result score @s nife_stats run data get entity @e[type=item, sort=nearest, limit=1] Item.tag.NType
data merge entity @e[type=item, sort=nearest, limit=1] {PickupDelay: 0}

execute if score @s nife_stats matches 0 run function nifeather_3lives:deathevents/events/0_no_event
execute if score @s nife_stats matches 1 run function nifeather_3lives:deathevents/events/1_explode_on_death
execute if score @s nife_stats matches 2 run function nifeather_3lives:deathevents/events/2_reduce_health
execute if score @s nife_stats matches 3 run function nifeather_3lives:deathevents/events/3_slow_movement
execute if score @s nife_stats matches 4 run function nifeather_3lives:deathevents/events/4_slow_attack_speed
execute if score @s nife_stats matches 5 run function nifeather_3lives:deathevents/events/5_weak_attack
execute if score @s nife_stats matches 6 run function nifeather_3lives:deathevents/events/6_weak_armor
execute if score @s nife_stats matches 7 run function nifeather_3lives:deathevents/events/7_fast_attack
execute if score @s nife_stats matches 8 run function nifeather_3lives:deathevents/events/8_strong_armor
execute if score @s nife_stats matches 9 run function nifeather_3lives:deathevents/events/9_more_health
execute if score @s nife_stats matches 10 run function nifeather_3lives:deathevents/events/10_once_again
execute if score @s nife_stats matches 11 run function nifeather_3lives:deathevents/events/11_good_luck
execute if score @s nife_stats matches 12 run function nifeather_3lives:deathevents/events/12_bad_luck
execute if score @s nife_stats matches 13 run function nifeather_3lives:deathevents/events/13_blind

scoreboard players reset @s nife_stats
function nifeather_3lives:tools/reset_maintitles

#随机主事件
scoreboard players set @s n3l_random -1

execute store result score @s n3l_random run loot spawn ~ ~ ~ loot nifeather_3lives:titles/random_title
kill @e[type=item, nbt={Item:{tag:{NeedKill: 1b}}}, sort=nearest, distance=..0.1]

execute if score @s n3l_random matches 1 run function nifeather_3lives:titles/maintitles/0_no_event
execute if score @s n3l_random matches 2 run function nifeather_3lives:titles/maintitles/1_explode_on_death
execute if score @s n3l_random matches 3 run function nifeather_3lives:titles/maintitles/2_reduce_health
execute if score @s n3l_random matches 4 run function nifeather_3lives:titles/maintitles/3_slow_movement
execute if score @s n3l_random matches 5 run function nifeather_3lives:titles/maintitles/4_slow_attack_speed
execute if score @s n3l_random matches 6 run function nifeather_3lives:titles/maintitles/5_weak_attack
execute if score @s n3l_random matches 7 run function nifeather_3lives:titles/maintitles/6_weak_armor
execute if score @s n3l_random matches 8 run function nifeather_3lives:titles/maintitles/7_fast_attack
execute if score @s n3l_random matches 9 run function nifeather_3lives:titles/maintitles/8_strong_armor
execute if score @s n3l_random matches 10 run function nifeather_3lives:titles/maintitles/9_more_health
execute if score @s n3l_random matches 11 run function nifeather_3lives:titles/maintitles/10_once_again
execute if score @s n3l_random matches 12 run function nifeather_3lives:titles/maintitles/11_good_luck
execute if score @s n3l_random matches 13 run function nifeather_3lives:titles/maintitles/12_bad_luck
execute if score @s n3l_random matches 14 run function nifeather_3lives:titles/maintitles/13_blind

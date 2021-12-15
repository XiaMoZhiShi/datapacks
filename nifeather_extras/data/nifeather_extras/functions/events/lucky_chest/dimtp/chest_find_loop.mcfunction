scoreboard players add @s nife_sw_timer 1
execute unless block ~ ~ ~ chest if score @s nife_sw_timer matches 0..10 positioned ^ ^ ^1 run function nifeather_extras:events/lucky_chest/dimtp/chest_destroy
execute if block ~ ~ ~ chest run function nifeather_extras:events/lucky_chest/dimtp/chest_find_loop
execute if score @s nife_sw_timer matches 11.. run scoreboard players set @s nife_sw_timer -1
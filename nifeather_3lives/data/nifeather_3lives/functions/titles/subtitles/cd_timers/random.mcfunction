function nifeather_3lives:titles/subtitles/cd_timers/removeall

#region 通过UUID随机触发器
summon marker ~ ~ ~ {Tags:["n3l_random"]}
execute store result score @s n3l_subrandom_temp run data get entity @e[tag=n3l_random, type=marker, limit=1, sort=nearest] UUID[0]
kill @e[tag=n3l_random, type=marker, limit=1, sort=nearest]

scoreboard players operation @s n3l_subrandom_temp %= #2 nife_stats
#endregion

#region 通过记分板的值给与标签
#declare tag n3l_stCD_1m 触发CD1分钟
execute if score @s n3l_subrandom_temp matches 0 run tag @s add n3l_stCD_1m

#declare tag n3l_stCD_2m 触发CD2分钟
execute if score @s n3l_subrandom_temp matches 1 run tag @s add n3l_stCD_2m

#declare tag @s n3l_stCD_internal 内部CD(1秒)
execute if entity @s[tag=n3l_stT_enemycount] run tag @s remove n3l_stCD_1m
execute if entity @s[tag=n3l_stT_enemycount] run tag @s remove n3l_stCD_2m
execute if entity @s[tag=n3l_stT_enemycount] run tag @s add n3l_stCD_internal
#endregion

scoreboard players reset @s n3l_subrandom_temp
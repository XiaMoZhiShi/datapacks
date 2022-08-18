function nifeather_3lives:titles/subtitles/triggers/removeall

#region 通过UUID随机触发器
summon marker ~ ~ ~ {Tags:["n3l_random"]}
execute store result score @s n3l_subrandom_temp run data get entity @e[tag=n3l_random, type=marker, limit=1, sort=nearest] UUID[0]
kill @e[tag=n3l_random, type=marker, limit=1, sort=nearest]

scoreboard players operation @s n3l_subrandom_temp %= #3 nife_stats
#endregion

#region 通过记分板的值给与标签
#declare tag n3l_stT_healthfit 触发器：生命值大于一定数值
execute if score @s n3l_subrandom_temp matches 0 run tag @s add n3l_stT_healthfit

#declare tag n3l_stT_healthlow 触发器：生命值低
execute if score @s n3l_subrandom_temp matches 1 run tag @s add n3l_stT_healthlow

#declare tag n3l_stT_enemycount 触发器：敌人数量
execute if score @s n3l_subrandom_temp matches 2 run tag @s add n3l_stT_enemycount
#endregion

scoreboard players reset @s n3l_subrandom_temp
function nifeather_3lives:titles/subtitles/effects/removeall

#region 通过UUID随机触发器
summon marker ~ ~ ~ {Tags:["n3l_random"]}
execute store result score @s n3l_subrandom_temp run data get entity @e[tag=n3l_random, type=marker, limit=1, sort=nearest] UUID[0]
kill @e[tag=n3l_random, type=marker, limit=1, sort=nearest]

scoreboard players operation @s n3l_subrandom_temp %= #3 nife_stats
#endregion

#region 通过记分板的值给与标签
#declare tag n3l_stE_cure 效果：恢复生命和饱食度
execute if score @s n3l_subrandom_temp matches 0 run tag @s add n3l_stE_cure

#declare tag n3l_stE_movement 效果：提升移速和伤害
execute if score @s n3l_subrandom_temp matches 1 run tag @s add n3l_stE_movement

#declare tag n3l_stE_battle 效果：提升移速或者伤害
execute if score @s n3l_subrandom_temp matches 2 run tag @s add n3l_stE_battle
#endregion

scoreboard players reset @s n3l_subrandom_temp
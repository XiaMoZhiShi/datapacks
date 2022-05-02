#随机子事件
function nifeather_3lives:tools/reset_subtitles

scoreboard players set @s n3l_subrandom -1

execute store result score @s n3l_subrandom run loot spawn ~ ~ ~ loot nifeather_3lives:titles/random_subtitle
kill @e[type=item, nbt={Item:{tag:{NeedKill: 1b}}}, sort=nearest, limit=1]

execute if score @s n3l_subrandom matches 1 run function nifeather_3lives:titles/subtitles/0/give
execute if score @s n3l_subrandom matches 2 run function nifeather_3lives:titles/subtitles/1/give
execute if score @s n3l_subrandom matches 3 run function nifeather_3lives:titles/subtitles/2/give

scoreboard players set @s n3l_se_clock -32767
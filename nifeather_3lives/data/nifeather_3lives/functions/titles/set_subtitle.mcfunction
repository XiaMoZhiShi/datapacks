#随机子事件
function nifeather_3lives:tools/reset_subtitles

loot spawn ~ ~ ~ loot nifeather_3lives:titles/random_subtitle

scoreboard players set @s n3l_subrandom -1

execute store result score @s n3l_subrandom run data get entity @e[type=item, sort=nearest, limit=1] Item.tag.NType
kill @e[type=item, nbt={Item:{tag:{N3L: 1b}}}, sort=nearest, limit=1]

execute if score @s n3l_subrandom matches 0 run function nifeather_3lives:titles/subtitles/0/give
execute if score @s n3l_subrandom matches 1 run function nifeather_3lives:titles/subtitles/1/give
execute if score @s n3l_subrandom matches 2 run function nifeather_3lives:titles/subtitles/2/give

scoreboard players set @s n3l_se_clock -32767
execute store result score @s n3l_monsters_nearby run execute if entity @e[type=#nifeather:hostile, distance=..7]
execute if score @s n3l_monsters_nearby matches 3.. run function nifeather_3lives:titles/subtitles/2/pass_3
execute if score @s n3l_monsters_nearby matches ..2 run function nifeather_3lives:titles/subtitles/2/pass_2
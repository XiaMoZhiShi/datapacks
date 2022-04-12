execute if entity @s[tag=n3l_tick_se0] run function nifeather_3lives:titles/subtitles/0/tick
execute if entity @s[tag=n3l_tick_se1] run function nifeather_3lives:titles/subtitles/1/tick
#execute if entity @s[tag=n3l_tick_se2] run function nifeather_3lives:titles/subtitles/2/tick

#execute if entity @s[tag=n3l_se1] run function nifeather_3lives:titles/subtitles/1/check
execute if entity @s[tag=n3l_se2] run function nifeather_3lives:titles/subtitles/2/check

scoreboard players remove @s n3l_se_clock 1
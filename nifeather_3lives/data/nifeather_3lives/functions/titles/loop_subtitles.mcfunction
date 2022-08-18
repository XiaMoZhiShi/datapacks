scoreboard players remove @s n3l_se_clock 1
scoreboard players remove @s n3l_st_clock 1

#检查触发器
execute if entity @s[tag=n3l_stT_healthfit, scores={nife_health=12..}, tag=__n3l_sprintStarted] run tag @s add __n3l_can_trigger
execute if entity @s[tag=n3l_stT_healthlow, scores={nife_health=..5}] run tag @s add __n3l_can_trigger

execute if entity @s[tag=n3l_stT_enemycount] store result score @s n3l_monsters_nearby run execute if entity @e[type=#nifeather:hostile, distance=..7]
execute if entity @s[tag=n3l_stT_enemycount, scores={n3l_monsters_nearby=3..}] run tag @s add __n3l_can_trigger

#检查CD
#NOTE: st_clock是CD，se_clock是效果剩余时间
execute if entity @s[scores={n3l_st_clock=0..}] run tag @s remove __n3l_can_trigger

execute if score @s n3l_se_clock matches 1.. positioned ~ ~0.6 ~ run particle minecraft:enchanted_hit ~ ~ ~ 0.3 0.9 0.3 0.01 2

execute if entity @s[tag=__n3l_can_trigger] run function nifeather_3lives:titles/subtitles/effects/trigger
execute as @s[tag=__n3l_effect_triggering, tag=!__n3l_can_trigger, scores={n3l_se_clock=..0}] run function nifeather_3lives:titles/subtitles/effects/revoke

#declare tag __n3l_can_trigger 是否可以触发
tag @s remove __n3l_can_trigger

tag @s remove __n3l_sprintStarted
#重置CD
scoreboard players set @s n3l_st_clock 0

execute if entity @s[tag=n3l_stE_movement] run function nifeather_3lives:titles/subtitles/effects/apply/movement
execute if entity @s[tag=n3l_stE_battle] run function nifeather_3lives:titles/subtitles/effects/apply/battle
execute if entity @s[tag=n3l_stE_cure] run function nifeather_3lives:titles/subtitles/effects/apply/cure
execute if entity @s[tag=n3l_stE_attack_speed] run function nifeather_3lives:titles/subtitles/effects/apply/attack_speed

#设置CD
execute if entity @s[tag=n3l_stCD_1m] run scoreboard players add @s n3l_st_clock 1200
execute if entity @s[tag=n3l_stCD_2m] run scoreboard players add @s n3l_st_clock 2400
execute if entity @s[tag=n3l_stCD_internal] run scoreboard players add @s n3l_st_clock 20

scoreboard players operation @s n3l_se_clock = @s n3l_subrandom_timer

execute if entity @s[tag=!__n3l_effect_triggering] run playsound minecraft:block.enchantment_table.use player @s

#设置标签
#declare tag __n3l_effect_triggering 正在触发效果
tag @s add __n3l_effect_triggering

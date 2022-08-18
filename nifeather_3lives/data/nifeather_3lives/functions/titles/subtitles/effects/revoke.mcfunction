execute if entity @s[tag=n3l_stE_battle] run function nifeather_3lives:titles/subtitles/effects/revoke/battle
execute if entity @s[tag=n3l_stE_cure] run function nifeather_3lives:titles/subtitles/effects/revoke/cure
execute if entity @s[tag=n3l_stE_movement] run function nifeather_3lives:titles/subtitles/effects/revoke/movement
execute if entity @s[tag=n3l_stE_attack_speed] run function nifeather_3lives:titles/subtitles/effects/revoke/attack_speed

tag @s remove __n3l_effect_triggering

playsound block.fire.extinguish player @s ~ ~ ~ 0.75
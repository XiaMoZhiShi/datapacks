execute if entity @s[tag=enabledSubtitle] run tag @s add eeUT
#declare tag enabledSubtitle 是否启用蓄力显示

execute if entity @s[tag=!enabledSubtitle] run function hub:sprinit_timer/subtitle_toggle/on
execute if entity @s[tag=eeUT] run function hub:sprinit_timer/subtitle_toggle/off
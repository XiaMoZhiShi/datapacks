execute if entity @s[tag=enabledSprinit] run tag @s add eeST
#declare tag enabledSprinit 是否启用疾行加速

execute if entity @s[tag=!enabledSprinit] run function hub:sprinit_timer/toggle/on
execute if entity @s[tag=eeST] run function hub:sprinit_timer/toggle/off
execute unless entity @s[tag=airChecked] if block ~ ~ ~ water run tag @s add no_forst
#declare tag no_forst 此箭矢已禁用霜华矢

tag @s add airChecked

execute if block ~ ~ ~ air run tag @s remove no_forst

execute if entity @s[tag=no_forst] run data merge entity @s {Glowing: 1b}
execute unless entity @s[tag=no_forst] run data merge entity @s {Glowing: 0b}

#生成霜华矢
execute unless entity @s[tag=no_forst] if block ~ ~ ~ minecraft:water run function hub:arrow_finalize/arrow_finalize_boot
execute if entity @s[nbt={inGround: 1b}] run function hub:arrow_finalize/arrow_finalize_boot
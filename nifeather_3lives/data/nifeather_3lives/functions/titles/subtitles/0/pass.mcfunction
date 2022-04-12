attribute @s generic.attack_damage modifier add 1-0-0-0-0 "n3l_se0_modifier" 0.3 multiply
attribute @s generic.attack_speed modifier add 1-0-0-0-0 "n3l_se0_modifier" 0.5 multiply

playsound item.totem.use player @a ~ ~ ~ 3 2
particle minecraft:end_rod ~ ~0.9 ~ 0 0.3 0 0.4 50

scoreboard players set @s n3l_se_clock 100
effect give @s minecraft:regeneration 1 3
effect give @s saturation 1 2

tag @s add n3l_tick_se0
#declare tag n3l_tick_se0 玩家需要Tick事件0
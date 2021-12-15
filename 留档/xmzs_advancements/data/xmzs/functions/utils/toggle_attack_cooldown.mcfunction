#0: 关
#1: 开

#切换
execute if score #noCoolDown nife_stats matches 1 run scoreboard players set #noCoolDown nife_stats 2
execute if score #noCoolDown nife_stats matches 0 run scoreboard players set #noCoolDown nife_stats 1

execute if score #noCoolDown nife_stats matches 2 run scoreboard players set #noCoolDown nife_stats 0

#检查
execute if score #noCoolDown nife_stats matches 0 as @a run attribute @s generic.attack_speed modifier remove 4000000-0000-0000-0000-1
execute if score #noCoolDown nife_stats matches 1 as @a run attribute @s generic.attack_speed modifier add 4000000-0000-0000-0000-1 "NiFeather" 300 add
tellraw @s "完成"
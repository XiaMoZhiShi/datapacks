execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnGoldenAppleEat: ", {"selector": "@s"}]
scoreboard players remove @s nife_gapple_eat 1
execute if entity @s[scores={nife_lives=..0}] run tag @s add nife_curing
execute if entity @s[scores={nife_lives=..9}, tag=nife_curing] run function nifeather_3lives:events/thunder_respawn/0_on_goldenapple_eaten
execute if entity @s[scores={nife_lives=10..}, tag=nife_curing] run function nifeather_3lives:events/thunder_respawn/1_recure_from_0
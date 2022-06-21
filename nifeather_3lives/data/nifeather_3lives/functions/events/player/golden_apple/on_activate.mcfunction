execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnGoldenAppleEat: ", {"selector": "@s"}]

advancement revoke @s only nifeather_3lives:mechanics/on_goldenapple_eat
execute if entity @s[scores={n3l_lives=..0}] run tag @s add nife_curing
execute if entity @s[scores={n3l_lives=..9}, tag=nife_curing] run function nifeather_3lives:events/player/golden_apple/stages/curing
execute if entity @s[scores={n3l_lives=10..}, tag=nife_curing] run function nifeather_3lives:events/player/golden_apple/stages/cured
execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnPlayerDeath_OnSpecatorDeath: ", {"selector": "@s"}]
execute if entity @s[gamemode=survival] run particle minecraft:soul ~ ~0.5 ~ 0 0.3 0 0.1 100
execute if entity @s[gamemode=spectator] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0.9 0 0.1 100
playsound entity.generic.explode player @a ~ ~ ~
gamemode spectator @s
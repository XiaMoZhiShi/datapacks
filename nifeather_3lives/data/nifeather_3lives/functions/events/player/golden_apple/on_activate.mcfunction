execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnGoldenAppleEat: ", {"selector": "@s"}]

advancement revoke @s only nifeather_3lives:mechanics/on_goldenapple_eat
execute if entity @s[scores={n3l_lives=..9}, tag=n3l_curing] run function nifeather_3lives:events/player/golden_apple/stages/curing
execute if entity @s[scores={n3l_lives=10..}, tag=n3l_curing] run function nifeather_3lives:events/player/golden_apple/stages/cured

execute if entity @s[tag=n3l_specator] run tellraw @a {"text":"", "color":"red", "extra":[{"selector":"@s"}, "触发了不应该触发的东西"]}
execute if entity @s[tag=n3l_specator] run kill @s
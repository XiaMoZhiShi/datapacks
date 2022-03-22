execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnThunderRespawn.Run: ", {"selector": "@s"}]

execute if score @s nife_lives < #minimumTRespawn nife_lives run function nifeather_3lives:respawn/thunder_respawn_fail
execute if score @s nife_lives >= #minimumTRespawn nife_lives run function nifeather_3lives:respawn/thunder_respawn_success
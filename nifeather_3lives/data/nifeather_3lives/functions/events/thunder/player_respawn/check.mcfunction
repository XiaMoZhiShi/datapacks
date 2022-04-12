execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnThunderRespawn.Run: ", {"selector": "@s"}]

execute if score @s nife_lives < #minimumTRespawn nife_lives run function nifeather_3lives:events/thunder/player_respawn/fail
execute if score @s nife_lives >= #minimumTRespawn nife_lives run function nifeather_3lives:events/thunder/player_respawn/pass
execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnThunderRespawn.Detect: ", {"selector": "@s"}]

execute as @a[distance=..7, gamemode=spectator, scores={nife_lives=..0, nife_deaths=..0}] run function nifeather_3lives:events/thunder/player_respawn/check
tag @s add processed
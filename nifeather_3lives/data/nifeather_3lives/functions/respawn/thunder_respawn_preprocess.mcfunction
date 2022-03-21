execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnThunderRespawn.Detect: ", {"selector": "@s"}]

execute as @a[distance=..7, gamemode=spectator, scores={nife_lives=..0, nife_deaths=..0}] run function nifeather_3lives:respawn/thunder_respawn_run
tag @s add processed
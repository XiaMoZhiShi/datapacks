execute if entity @r[gamemode=spectator, scores={nife_lives=..0}] if predicate nifeather_3lives:suit_for_thunder run function nifeather_3lives:misc/weather_modify/random

schedule function nifeather_3lives:misc/weather_modify/detect 60s
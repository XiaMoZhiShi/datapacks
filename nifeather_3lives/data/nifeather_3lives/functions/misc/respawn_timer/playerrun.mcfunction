scoreboard players operation $TEMP n3l_lastDeathTime = clock nife_stats
scoreboard players operation $TEMP n3l_lastDeathTime -= @s n3l_lastDeathTime

#12000: 10分钟
execute if score $TEMP n3l_lastDeathTime matches 1200.. run function nifeather_3lives:misc/respawn_timer/player_dorespawn
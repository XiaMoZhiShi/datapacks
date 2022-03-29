advancement revoke @s only nifeather_3lives:reroll_event

execute if entity @s[tag=nife_curing] run function nifeather_3lives:reroll/player_fail
execute if score @s nife_lives matches ..0 run function nifeather_3lives:reroll/player_fail
execute if score @s[tag=!nife_curing] nife_lives matches 1.. run function nifeather_3lives:reroll/player_run
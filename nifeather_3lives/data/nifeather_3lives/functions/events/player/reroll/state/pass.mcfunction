scoreboard players remove @s nife_lives 1

execute if score @s nife_lives matches ..0 run function nifeather_3lives:events/on_specator_death
execute if score @s nife_lives matches ..0 run function nifeather_3lives:events/on_spectator_respawn

execute unless score @s nife_lives matches ..0 run function nifeather_3lives:titles/set_titles
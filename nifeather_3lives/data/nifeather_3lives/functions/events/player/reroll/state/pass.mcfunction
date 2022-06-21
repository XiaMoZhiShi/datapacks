scoreboard players remove @s nife_lives 1

execute if score @s nife_lives matches ..0 run kill @s

execute unless score @s nife_lives matches ..0 run function nifeather_3lives:titles/set_titles
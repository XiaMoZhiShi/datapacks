scoreboard players remove @s n3l_lives 1

execute if score @s n3l_lives matches ..0 run kill @s

execute unless score @s n3l_lives matches ..0 run function nifeather_3lives:titles/set_titles
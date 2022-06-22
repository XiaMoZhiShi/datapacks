scoreboard players remove @s n3l_lives 1

execute if score @s n3l_lives matches ..0 run kill @s

execute unless score @s n3l_lives matches ..0 run function nifeather_3lives:titles/set_titles

tellraw @s {"translate": "text.hub.hint","color":"#dddddd", "with":["\uE36E", {"text":"你还剩余", "extra":[{"score":{"objective":"n3l_lives","name":"@s"}}, "条生命"]}]}
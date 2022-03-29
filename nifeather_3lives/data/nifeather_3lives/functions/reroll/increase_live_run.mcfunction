execute if score @s nife_lives >= #illegalLivesLevel nife_lives run tellraw @s {"translate":"text.hub.hint","color": "#dddddd" , "with": ["\uE365", {"text": "生命值已达最大值"}]}
execute if score @s nife_lives >= #illegalLivesLevel nife_lives run give @s golden_apple{3LRerollP: 1b}

scoreboard players add @s nife_lives 1
execute if score @s nife_lives > #illegalLivesLevel nife_lives run scoreboard players operation @s nife_lives = #illegalLivesLevel nife_lives

tellraw @s {"translate":"text.hub.hint","color": "#dddddd" , "with": ["\uE365", {"text": "生命值变更为", "extra":[{"score":{"objective": "nife_lives", "name":"@s"}}]}]}
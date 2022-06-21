execute unless score @s n3l_lives >= @s n3l_maxLives run scoreboard players add @s n3l_lives 1

tellraw @s {"translate":"text.hub.hint","color": "#dddddd" , "with": ["\uE365", {"text": "生命值变更为", "extra":[{"score":{"objective": "n3l_lives", "name":"@s"}}]}]}
execute if score @s n3l_lives >= @s n3l_maxLives run tellraw @s {"translate":"text.hub.hint","color": "#dddddd" , "with": ["\uE365", {"text": "生命值已达最大值，将不会继续增长"}]}
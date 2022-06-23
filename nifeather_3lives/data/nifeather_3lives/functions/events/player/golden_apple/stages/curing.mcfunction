attribute @s generic.max_health modifier remove 0-0-1-0-0
attribute @s generic.max_health modifier add 0-0-1-0-1 "nife_reduce_health" -0.6 multiply
scoreboard players add @s n3l_lives 1
execute if score @s n3l_lives matches ..9 run tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE2B6", {"text": "你恢复了一部分身体状况（", "extra":[{"score": {"name": "@s", "objective": "n3l_lives"}}, "/10）"]}]}]
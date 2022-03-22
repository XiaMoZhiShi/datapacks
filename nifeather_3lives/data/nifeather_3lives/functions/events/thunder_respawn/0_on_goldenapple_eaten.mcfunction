attribute @s generic.max_health modifier remove 0-0-1-0-0
attribute @s generic.max_health modifier add 0-0-1-0-1 "nife_reduce_health" -0.6 multiply
scoreboard players add @s nife_lives 1
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE2B6", {"text": "你恢复了一部分身体状况（", "extra":[{"score": {"name": "@s", "objective": "nife_lives"}}, "/10）"]}]}]
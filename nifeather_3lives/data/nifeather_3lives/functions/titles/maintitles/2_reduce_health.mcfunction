#图标：凋零效果Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE378", "这次醒来你感到异常地虚弱"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE378", "很显然，你的重生过程出了岔子"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE378", "最大生命值 -40%"]}]

attribute @s generic.max_health modifier add 0-0-0-2-0 "n3l_reduce_health" -0.4 multiply
effect give @s instant_health 100 20 true
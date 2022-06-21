#图标：急迫效果Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE360", "你感觉双手挥起来异常地轻盈"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE360", "就和没有阻力一样"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE360", "攻击速度 +30%"]}]

attribute @s generic.attack_speed modifier add 0-0-0-7-0 "n3l_fast_attack" 0.3 multiply
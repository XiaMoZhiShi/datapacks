#图标：缓慢效果Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE372", "你的双腿有些乏力"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE372", "是运动过度了吗？"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE372", "移动速度 -20%"]}]

attribute @s generic.movement_speed modifier add 0-0-0-3-0 "nife_slow_movement" -0.2 multiply
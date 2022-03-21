#图标：缓慢效果Icon
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE372", "你感觉你有些挥不动双手"]}]
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE372", "可能是醒来的姿势不对吧..."]}]
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE372", "攻击速度 -40%"]}]

attribute @s generic.attack_speed modifier add 0-0-0-4-0 "nife_slow_attack_speed" -0.4 multiply_base
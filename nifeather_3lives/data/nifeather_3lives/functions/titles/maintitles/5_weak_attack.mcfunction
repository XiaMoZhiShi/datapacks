#图标：虚弱效果Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE377", "你的双手有些乏力"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE377", "是运动过度了吗？"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE377", "攻击伤害 -30%"]}]

attribute @s generic.attack_damage modifier add 0-0-0-5-0 "nife_weak_attack" -0.3 multiply_base
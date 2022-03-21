#图标：生命提升效果Icon
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE365", "这次醒来你感到充满了力量"]}]
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE365", "很显然，有个倒霉蛋要损失40%的最大生命了"]}]
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE365", "最大生命值 +40%"]}]

attribute @s generic.max_health modifier add 0-0-0-9-0 "nife_more_health" 0.4 multiply
#图标：霉运Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE35B", "感觉有种说不上来的奇怪"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE35B", "最近还是别走夜路了吧..."]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE35B", "+夜晚周围亮度小于4时将致盲"]}]

tag @s add blind
#declare tag blind 夜盲症
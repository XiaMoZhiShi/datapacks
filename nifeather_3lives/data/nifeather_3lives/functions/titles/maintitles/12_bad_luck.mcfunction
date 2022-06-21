#图标：霉运Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE375", "感觉有种说不上来的奇怪"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE375", "最近还是别出门了吧..."]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE375", "运气 -2, 并 x50%"]}]

attribute @s generic.luck modifier add 0-0-0-12-0 "n3l_good_luck" -2 add
attribute @s generic.luck modifier add 0-0-0-12-1 "n3l_good_luck" -0.5 multiply
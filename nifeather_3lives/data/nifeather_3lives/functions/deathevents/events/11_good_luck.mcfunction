#图标：幸运Icon
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE369", "感觉有种说不上来的奇怪"]}]
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE369", "多出去钓鱼吧，说不定能有所好转"]}]
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE369", "运气 +1, 并 x200%"]}]

attribute @s generic.luck modifier add 0-0-0-11-0 "nife_good_luck" 1 add
attribute @s generic.luck modifier add 0-0-0-11-1 "nife_good_luck" 1 multiply
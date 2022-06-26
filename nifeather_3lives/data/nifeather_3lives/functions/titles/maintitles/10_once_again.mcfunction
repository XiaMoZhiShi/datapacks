#图标：不死图腾Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE355", "你意外地捡到一条命"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE355", "嗯...就是这样"]}]

execute if score @s n3l_lives >= @s n3l_maxLives run tag @s add n3l_t10_no_increase

tellraw @s[tag=n3l_t10_no_increase] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE355", "但你的生命值已经满了，因此什么也没有发生"]}]

scoreboard players add @s[tag=!n3l_t10_no_increase] n3l_lives 1
tellraw @s[tag=!n3l_t10_no_increase] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE355", "生命值+1"]}]

tag @s remove n3l_t10_no_increase
execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnPlayerRespawn_OnSpecatorRespawn: ", {"selector": "@s"}]

#图标：金粒Icon
tellraw @s[tag=!firstDeathShown] ["", {"translate": "text.hub.hint", "with":["\uE270", "你的实体消散了"]}]
tellraw @s[tag=!firstDeathShown] ["", {"translate": "text.hub.hint", "with":["\uE270", "也许在某个雷雨天的晚上，可以借助闪电可以让你再次显形"]}]
tellraw @s[tag=!firstDeathShown] ["", {"translate": "text.hub.hint", "with":["\uE270", "但在此之前，还是先找个避雷针吧"]}]
tellraw @s[tag=!firstDeathShown] ["", {"translate": "text.hub.hint", "with":["\uE270", {"text":"旁观状态下的死亡会削弱体质", "bold": true}]}]
tellraw @s[tag=!firstDeathShown] ["", {"translate": "text.hub.hint", "with":["\uE270", {"text":"体质削弱到一定程度后将无法复活", "bold": true}]}]
tellraw @s[tag=!firstDeathShown] ["", {"translate": "text.hub.hint", "with":["\uE270", "此提示将不会显示第二次"]}]

tag @s add firstDeathShown

attribute @s generic.max_health modifier add 0-0-1-0-0 "nife_resuce_health_to_1" -1000 multiply
effect give @s instant_health 100 20 true
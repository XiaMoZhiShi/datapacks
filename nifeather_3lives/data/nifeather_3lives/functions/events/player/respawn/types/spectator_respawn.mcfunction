execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "OnPlayerRespawn_OnSpecatorRespawn: ", {"selector": "@s"}]

#图标：金粒Icon
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE270", "你用完了你的重生次数 :("]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE270", "现在你需要等待一段时间恢复体质来重生"]}]
tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE270", "在这期间去做别的事吧（甚至退出游戏都可以，只要服务器还在运行）"]}]

attribute @s generic.max_health modifier add 0-0-1-0-0 "nife_resuce_health_to_1" -1000 multiply
effect give @s instant_health 100 20 true
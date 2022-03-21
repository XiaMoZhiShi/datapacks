execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnThunderRespawn.Fail: ", {"selector": "@s"}]

particle minecraft:soul ~ ~1 ~ 0 0 0 0.05 10
tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE310", {"text": "你的状态过于脆弱，无法再次显形。", "color": "red"}]}]
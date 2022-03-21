execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnThunderRespawn.Success: ", {"selector": "@s"}]

effect give @s resistance 10 255
effect give @s glowing 10
effect give @s fire_resistance 20
gamemode survival @s

tellraw @s[tag=!nife_thunder_respawned] ["", {"translate": "text.hub.hint", "with":["\uE2B6", {"text": "你的存在并不稳定，请远离一切伤害源"}]}]
tellraw @s[tag=!nife_thunder_respawned] ["", {"translate": "text.hub.hint", "with":["\uE2B6", {"text": "食用金苹果可以帮助稳定你的存在形式"}]}]
tellraw @s[tag=!nife_thunder_respawned] ["", {"translate": "text.hub.hint", "with":["\uE2B6", {"text": "恢复途中任何形式的死亡都会中断该过程！"}]}]
tellraw @s[tag=!nife_thunder_respawned] ["", {"translate": "text.hub.hint", "with":["\uE2B6", {"text": "此文本不会出现第二次"}]}]

tag @s add nife_thunder_respawned
execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[调试] ", "color": "gray"}, "RespawnTimer.DoRespawn: ", {"selector": "@s"}]

effect give @s resistance 180 255
effect give @s glowing 10
effect give @s fire_resistance 180
effect give @s regeneration 180 1
effect give @s health_boost 180 1
gamemode survival @s

playsound entity.villager.celebrate player @s ~ ~ ~

tellraw @s ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE2B6", {"text": "成功重生！"}]}]
tellraw @s[tag=!n3l_respawnedonce] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE2B6", {"text": "你的存在并不稳定，请远离一切伤害源"}]}]
tellraw @s[tag=!n3l_respawnedonce] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE2B6", {"text": "食用金苹果可以帮助稳定你的存在形式"}]}]
tellraw @s[tag=!n3l_respawnedonce] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE2B6", {"text": "恢复过程中死亡会中断该过程！"}]}]
tellraw @s[tag=!n3l_respawnedonce] ["", {"translate": "text.hub.hint", "color": "#dddddd", "with":["\uE2B6", {"text": "此文本不会出现第二次"}]}]

tag @s remove n3l_specator
tag @s add n3l_respawnedonce
tag @s add n3l_curing
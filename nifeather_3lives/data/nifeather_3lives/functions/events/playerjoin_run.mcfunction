execute if score debug nife_stats matches 1 run tellraw @a[tag=admin] [{"text": "[DEBUG] ", "color": "gray"}, "OnPlayerJoin: ", {"selector": "@s"}]

execute if entity @s[tag=!3livesinit] run function nifeather_3lives:reset_lives

tellraw @s ["", {"translate": "text.hub.hint", "with":["\uE33C", {"text": "欢迎回来，您目前剩余", "extra":[{"score":{"objective": "nife_lives", "name": "*"}}, "条生命"]}]}]

#tellraw @s [{"text":"欢迎回来, ", "color": "gold", "bold": true, "hoverEvent": {"action": "show_text", "contents": ["owo"] }}, {"selector":"@s", "color": "gold"}, "!"]

#第一次游玩？
#execute if entity @s[tag=3livesinit] run tellraw @s [{"text":"第一次游玩: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["祝你好运！"] }}, {"text":"否", "color": "green"}]
#execute if entity @s[tag=!3livesinit] run tellraw @s [{"text":"第一次游玩: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["祝你好运！"] }}, {"text":"是", "color": "yellow"}]
#
##血量/命数
#tellraw @s [{"text":"血量: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["请时刻留意你的血量。\n", "每死亡一次，你的【生命】将会消耗1点。\n", "每消耗1点【生命】，你都将随机获得一个正面/负面效果。\n", "该效果将一直伴随着你，直到下次死亡。"] }}, {"score":{"objective": "nife_health", "name": "@s"}, "color": "green"}]
#
#scoreboard players operation @s nife_lives /= #2 nife_lives
#tellraw @s [{"text":"剩余【生命】: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["请时刻留意你的【生命】。\n", "【生命】用尽后你将只能等待夜晚雷雨天的落雷来将你复活。"] }}, {"score":{"objective": "nife_lives", "name": "@s"}, "color": "aqua"}]
#scoreboard players operation @s nife_lives *= #2 nife_lives
#
##复活过一次？
#execute if entity @s[tag=nife_thunder_respawned] run tellraw @s [{"text": "于雷雨天复活: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["是否被夜晚雷雨天中的落雷击中而复活。\n", "这只会对【生命】用尽的玩家有效果。"] }}, {"text":"是", "color": "yellow"}]
#execute if entity @s[tag=!nife_thunder_respawned] run tellraw @s [{"text": "于雷雨天复活: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["是否被夜晚雷雨天中的落雷击中而复活。\n", "这只会对【生命】用尽的玩家有效果。"] }}, {"text":"否", "color": "green"}]
#
##服务器处于睡眠状态？
#execute if score #tpsLimited nife_stats matches 1 run tellraw @s [{"text": "服务器闲置: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["若服务器超过1分钟没有人在线，则会进入闲置状态以节省资源。\n", "闲置状态下，服务器最大TPS将被锁定在2。"] }}, {"text": "是", "color": "yellow"}]
#execute if score #tpsLimited nife_stats matches 0 run tellraw @s [{"text": "服务器闲置: ", "color": "gold", "hoverEvent": {"action": "show_text", "contents": ["若服务器超过1分钟没有人在线，则会进入闲置状态以节省资源。\n", "闲置状态下，服务器最大TPS将被锁定在2。"] }}, {"text": "否", "color": "green"}]
#
#tellraw @s [{"text": "提示： 你可以将光标放在上面的文本上来查看其对应的描述。", "color": "green", "hoverEvent": {"action": "show_text", "contents": ["诶嘿～"] }}]

tag @s add 3livesinit

execute unless entity @s[tag=suspendTeleportScreen]
title @s times 0 32767 0

execute unless entity @s[tag=screen_died] run title @s title {"translate": "%1$s%3$s", "with": ["", [{"text": "W", "font": "xmzs:mask", "color": "#333333"}, {"translate": "offset.-512", "font": "space:default", "color": "white", "with": [{"text": "", "font": "minecraft:default", "color": "#ffffff"}]}], ""]}

execute unless entity @s[tag=screen_died] run title @s subtitle {"translate": "%1$s%3$s", "with": ["", {"text": "等待区块加载...", "color": "#ffffff"}, ""]}

effect give @s resistance 5 255 true

tag @s add displayingTeleportScreen
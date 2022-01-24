title @s times 0 15 5
execute unless entity @s[tag=screen_died] run title @s title {"translate": "%1$s%3$s", "with": ["", ["", {"text": "W", "font": "xmzs:mask", "color": "#000000"}, {"translate": "offset.-513", "font": "space:default", "color": "white", "with": [{"text": "9", "font": "minecraft:illageralt", "color": "white"}]}], ""]}
execute unless entity @s[tag=screen_died] run title @s subtitle {"translate": "%1$s%3$s", "with": ["", {"text": "Welcome", "font": "minecraft:illageralt"}, ""]}
effect give @s resistance 3 255 true
tag @s add suspendTeleportScreen
advancement revoke @s only nifeather_screens:change_dim/to_limbo
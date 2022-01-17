title @s times 0 15 5
execute unless entity @s[tag=screen_died] run title @s title {"translate": "%1$s%3427655$s", "with": ["", ["", {"text": "W", "font": "xmzs:mask", "color": "#251c36"}, {"translate": "offset.-512", "font": "space:default", "color": "white", "with": [{"text": "🏹", "font": "minecraft:default", "color": "white"}]}]]}
execute unless entity @s[tag=screen_died] run title @s subtitle {"translate": "%1$s%3427655$s", "with": ["", {"translate": "advancements.end.root.title"}]}
effect give @s resistance 3 255 true
advancement revoke @s only nifeather_screens:change_dim/to_the_end
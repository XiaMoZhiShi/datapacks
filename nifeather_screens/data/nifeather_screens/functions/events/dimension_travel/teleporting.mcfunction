title @s times 5 30 20

execute if predicate nifeather:is_day run title @s title [{"text": "W", "font": "xmzs:mask", "color": "#ffffff"}, {"translate": "offset.-512", "font": "minecraft:default", "color": "white", "with": [{"text": "⚖", "font": "minecraft:default", "color": "#333333"}]}]
execute if predicate nifeather:is_night run title @s title [{"text": "W", "font": "xmzs:mask", "color": "#222222"}, {"translate": "offset.-512", "font": "minecraft:default", "color": "white", "with": [{"text": "⚖", "font": "minecraft:default", "color": "#eeeeee"}]}]

execute if predicate nifeather:is_day run title @s subtitle [{"text": "正在传送", "color": "#222222"}]
execute if predicate nifeather:is_night run title @s subtitle [{"text": "正在传送", "color": "#eeeeee"}]

effect give @s resistance 8 255 true
advancement revoke @s only nifeather_screens:change_dim/to_the_end
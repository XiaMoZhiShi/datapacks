title @s times 0 15 5

execute if predicate nifeather:is_day run title @s title {"translate": "%1$s%3427655$s", "with": ["", [{"text": "W", "font": "xmzs:mask", "color": "#abcdef"}, {"translate": "offset.-512", "font": "space:default", "color": "white", "with": [{"text": "🎣", "font": "minecraft:default", "color": "#333333"}]}]]}
execute if predicate nifeather:is_night run title @s title {"translate": "%1$s%3427655$s", "with": ["", [{"text": "W", "font": "xmzs:mask", "color": "#222222"}, {"translate": "offset.-512", "font": "space:default", "color": "white", "with": [{"text": "🎣", "font": "minecraft:default", "color": "#ffffff"}]}]]}
execute if predicate nifeather:weather/thunder run title @s title {"translate": "%1$s%3427655$s", "with": ["", [{"text": "W", "font": "xmzs:mask", "color": "#222222"}, {"translate": "offset.-512", "font": "space:default", "color": "white", "with": [{"text": "🎣", "font": "minecraft:default", "color": "#ffffff"}]}]]}

execute if predicate nifeather:is_day run title @s subtitle {"translate": "%1$s%3427655$s", "with": ["", [{"translate": "createWorld.customize.preset.overworld", "color": "#333333"}]]}
execute if predicate nifeather:weather/thunder run title @s subtitle {"translate": "%1$s%3427655$s", "with": ["", [{"translate": "createWorld.customize.preset.overworld", "color": "#ffffff"}]]}
execute if predicate nifeather:is_night run title @s subtitle {"translate": "%1$s%3427655$s", "with": ["", [{"translate": "createWorld.customize.preset.overworld", "color": "#ffffff"}]]}

effect give @s resistance 3 255 true
advancement revoke @s only nifeather_screens:change_dim/to_overworld
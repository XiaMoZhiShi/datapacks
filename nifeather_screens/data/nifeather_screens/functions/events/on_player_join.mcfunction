function nifeather:screens/push/instant_push_black
title @s times 0 20 5

execute if entity @s if predicate nifeather_screens:in_overworld run function nifeather_screens:events/dimension_travel/to_overworld
execute if entity @s if predicate nifeather_screens:in_nether run function nifeather_screens:events/dimension_travel/to_nether
execute if entity @s if predicate nifeather_screens:in_the_end run function nifeather_screens:events/dimension_travel/to_the_end

title @s subtitle {"translate": "%1$s%3$s", "with": ["", [{"text": "欢迎回来，", "color": "#eeeeee", "extra": [{"selector": "@s"}, "！"]}], ""]}
execute if predicate nifeather_screens:in_overworld if predicate nifeather:is_day run title @s subtitle {"translate": "%1$s%3427655$s", "with": ["", [{"text": "欢迎回来，", "color": "#222222", "extra": [{"selector": "@s"}, "！"]}]]}
execute if predicate nifeather_screens:in_overworld if predicate nifeather:weather/thunder run title @s subtitle {"translate": "%1$s%3427655$s", "with": ["", [{"text": "欢迎回来，", "color": "#eeeeee", "extra": [{"selector": "@s"}, "！"]}]]}

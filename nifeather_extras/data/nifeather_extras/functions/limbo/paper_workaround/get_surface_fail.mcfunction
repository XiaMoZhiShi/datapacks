tellraw @s ["", {"text": "我们未能找到合适的落脚点", "color": "red"}]
effect give @s slow_falling 30
tp @s 0 128 0
tag @s remove limbo_process
tag @s add enabledSprinit
tag @s remove disabledSprinit

tellraw @s {"translate": "text.hub.hint", "color": "#dddddd", "with":["疾行加速", {"text": "已启用", "color": "green"}]}
scoreboard players set @s xmzs_sprinit_timer 0
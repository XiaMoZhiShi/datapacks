tag @s remove enabledSprinit
tag @s remove eeST

tag @s add disabledSprinit
#declare tag disabledSprinit 已禁用疾行加速，用于egui

#设置timer
scoreboard players set @s xmzs_sprinit_timer -1

title @s actionbar ""

#执行一次always_loop刷新状态
function hub:sprinit_timer/always_loop

tellraw @s {"translate": "text.hub.hint", "color": "#dddddd", "with":["疾行加速", {"text": "已关闭", "color": "gold"}]}
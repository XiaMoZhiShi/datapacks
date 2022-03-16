#应用抗性，这时候loop_2s可能尚未执行
effect give @s resistance 6 255 true

#MOTD
function hub:motd/boot

#清除背包并添加物品
clear @s
loot give @s loot hub:on_join
clear @s dirt

#传送到出生点
function hub:tp_to_spawn
scoreboard players enable @s xmzs_hub_trigger

#应用属性修改器
attribute @s generic.attack_speed modifier add 42e27542-21f5-4db1-b31b-3bdf8ff82cb5 "xiamoHub.attackSpeedModifier" 10 multiply

#重置疾行加速
scoreboard players set @s xmzs_sprinit_timer 0

#重置末影箱
scoreboard players set @s xmzs_egui_id 0
function hub:egui/screens/reload_screen
tag @s remove tickEnderChest

execute if entity @s[tag=!firstJoinProcessed] run function hub:on_first_join
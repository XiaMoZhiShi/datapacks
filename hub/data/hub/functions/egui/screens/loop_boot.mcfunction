#更新玩家选择
function hub:egui/screens/loop/update_selection

#检查屏幕是否合法
function hub:egui/screens/screen_legal_check

#玩家选择物件时要做的事
execute if score @s xmzs_egui_selection matches 1.. run function hub:egui/screens/on_select

#屏幕loop
execute if score @s xmzs_egui_id matches 0 run function hub:egui/screens/loop/0

#如果有xmzs_refresh_egui, 则刷新当前屏幕
execute if entity @s[tag=xmzs_refresh_egui] run function hub:egui/screens/reload_screen
#declare tag xmzs_refresh_egui 是否要刷新egui

tag @s remove xmzs_refresh_egui
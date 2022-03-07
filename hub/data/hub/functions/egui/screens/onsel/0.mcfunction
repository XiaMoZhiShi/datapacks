#execute if score @s xmzs_egui_selection matches 26 run title @s actionbar "26"

#11: 疾行加速
execute if score @s xmzs_egui_selection matches 11 run function hub:sprinit_timer/toggle/boot
execute if score @s xmzs_egui_selection matches 13 run function hub:sprinit_timer/subtitle_toggle/boot
execute if score @s xmzs_egui_selection matches 15 run function hub:sprinit_timer/particle_toggle/boot

tag @s add xmzs_refresh_egui
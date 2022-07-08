tellraw @a {"translate":"text.hub.hint", "with":["?", "附加条件：每只兔子的击败间隔不超过20秒"]}

#declare tag nrr_c_01 附加条件2: 击败间隔

bossbar set nrr_display_c name [{"text":"多兔袭击"}, " - 击败间隔"]
bossbar set nrr_display_c color white
bossbar set nrr_display_c max 400
bossbar set nrr_display_c value 0

scoreboard players set $nrr_c_kill_time nrr_temp 400
#declare entity $nrr_c_kill_time 击杀间隔

tag @e[tag=nrr_centre] add nrr_c_01
tag @e[tag=nrr_centre] add nrr_show_conditionProgress
tag @e[tag=nrr_centre] add nrr_c_completed
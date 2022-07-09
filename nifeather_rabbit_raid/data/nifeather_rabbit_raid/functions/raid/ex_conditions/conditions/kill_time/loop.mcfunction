#计时
scoreboard players remove $nrr_c_kill_time nrr_temp 1

#同步到bossbar
execute store result bossbar nrr_display_c value run scoreboard players get $nrr_c_kill_time nrr_temp

#根据时间设置bossbar颜色
execute if score $nrr_c_kill_time nrr_temp matches ..80 run bossbar set nrr_display_c color red
execute unless score $nrr_c_kill_time nrr_temp matches ..80 run bossbar set nrr_display_c color white

#如果超时，那么调用makefail使事件失败
execute if score $nrr_c_kill_time nrr_temp matches ..-1 run function nifeather_rabbit_raid:raid/ex_conditions/conditions/misc/makefail
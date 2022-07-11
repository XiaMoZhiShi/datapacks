#增加记分板的值
scoreboard players operation $nrr_c_xp_deltaTotal nrr_temp += @s nife_exp_delta
#declare entity $nrr_c_xp_deltaTotal 总经验变化

#同步到bossbar
execute store result bossbar nrr_display_c value run scoreboard players get $nrr_c_xp_deltaTotal nrr_temp
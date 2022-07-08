execute if score $nrr_c_xp_deltaTotal nrr_temp matches 200.. run bossbar set nrr_display_c color green
execute if score $nrr_c_xp_deltaTotal nrr_temp matches 200.. run tag @e[tag=nrr_centre] add nrr_c_completed
#declare tag nrr_c_completed 条件完成
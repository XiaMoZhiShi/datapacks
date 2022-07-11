#检查是否收集到了足够的经验来触发成功
execute if score $nrr_c_xp_deltaTotal nrr_temp matches 200.. run function nifeather_rabbit_raid:raid/ex_conditions/conditions/misc/makesuccess
#declare tag nrr_c_completed 条件完成
#移除用来触发的进度
advancement revoke @s only nifeather_rabbit_raid:rabbit_kill

#刷新时间
execute if entity @s[tag=nrr_raid] if entity @e[tag=nrr_c_01] run function nifeather_rabbit_raid:raid/ex_conditions/conditions/kill_time/refresh
bossbar set nrr_display_c players @a[tag=nrr_raid]

execute if entity @s[tag=nrr_c_00] run function nifeather_rabbit_raid:raid/ex_conditions/conditions/xp_level/loop 
execute if entity @s[tag=nrr_c_01] run function nifeather_rabbit_raid:raid/ex_conditions/conditions/kill_time/loop 
execute if entity @s[tag=nrr_c_02] run function nifeather_rabbit_raid:raid/ex_conditions/conditions/nano_rabbit/loop 
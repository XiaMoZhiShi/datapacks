#如果玩家参与袭击并且当前条件是收集经验，那么调用run来继续处理
execute if entity @s[tag=nrr_raid] if entity @e[tag=nrr_c_00] run function nifeather_rabbit_raid:raid/ex_conditions/conditions/xp_level/external_event/run
execute if score $nrr_current_wave nrr_stats >= $nrr_waves nrr_options run tag @s add shouldClear
execute if entity @s[tag=shouldClear] run function nifeather_rabbit_raid:raid/status/on_clear/boot
execute if entity @s[tag=!shouldClear] run function nifeather_rabbit_raid:raid/status/running/on_clear_nextwave

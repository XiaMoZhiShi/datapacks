#检查自己的时间是否超过了最大扩散时间
execute unless score @s nrr_temp > $nrr_maxSpreadTime nrr_stats run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/do_spread
execute if score @s nrr_temp > $nrr_maxSpreadTime nrr_stats run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/fail_spread
#如果兔子数量在99个以内，那么进行复制
execute if score $nrr_rabbits nrr_stats matches ..99 run function nifeather_rabbit_raid:raid/rabbit/dupe/run
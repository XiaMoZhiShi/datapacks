execute if score $nrr_running nife_stats matches 1 run function nifeather_rabbit_raid:raid/start/fail

execute unless score $nrr_running nife_stats matches 1 run function nifeather_rabbit_raid:raid/start/run
#declare entity $nrr_running 是否有正在进行的袭击,在nife_stats的值为1时则代表有
#如果没袭击正在运行，那么启动袭击
execute unless score $nrr_running nrr_stats matches 1 unless predicate nifeather_rabbit_raid:in_nether run function nifeather_rabbit_raid:raid/start/run
#declare entity $nrr_running 是否有正在进行的袭击,在nrr_stats的值为1时则代表有
#创建一个生成器
function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spawner/create

#如果生成器数量小于目标数量，那么再执行一次自动生成
execute if score $nrr_spawners nrr_stats < $nrr_targetSpawners nrr_stats run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spawner/autocreate
#初始化记分板
scoreboard players set $nrr_spawners nrr_stats 0
#declare entity $nrr_spawners 有多少个生成器

scoreboard players set $nrr_targetSpawners nrr_stats 0
#declare entity $nrr_targetSpawners 要生成多少个生成器

#计算要生成多少个spawner
scoreboard players operation $nrr_targetSpawners nrr_stats = $nrr_targetSpawnCount nrr_options
scoreboard players operation $nrr_targetSpawners nrr_stats /= $nrr_spawnPerTry nrr_options

#循环生成
function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spawner/autocreate
scoreboard players set $nrr_spawners nrr_stats 0
#declare entity $nrr_spawners 有多少个生成器

scoreboard players set $nrr_targetSpawners nrr_stats 0
#declare entity $nrr_targetSpawners 要生成多少个生成器

#计算要生成多少个spawner
scoreboard players operation $nrr_targetSpawners nrr_stats = $nrr_targetSpawnCount nrr_stats
scoreboard players operation $nrr_targetSpawners nrr_stats /= $nrr_spawnPerTry nrr_stats

#循环生成
function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spawner/autocreate
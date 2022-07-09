#增加兔子数量
scoreboard players add $nrr_rabbits nrr_stats 1

#随机指定一个刷新点跑一遍刷新过程
execute as @e[tag=nrr_spawner, sort=random, limit=1] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/summon/boot

#如果数量小于指定的量，那么再运行一次补全
execute if score $nrr_rabbits nrr_stats < $nrr_targetSpawnCount nrr_options run function nifeather_rabbit_raid:raid/rabbit/spawn/fix/run
#继续运行失败的扩散
execute as @e[tag=nrr_spawner, tag=notSpawnable] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/try_spread

#检查已经找到点的生成器底下是否仍然可以生成
execute as @e[tag=spawnable] at @s run function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/spawnable_doublecheck
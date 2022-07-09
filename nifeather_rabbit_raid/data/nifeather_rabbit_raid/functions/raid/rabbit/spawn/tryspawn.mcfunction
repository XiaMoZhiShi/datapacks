#清除扩散中心
kill @e[tag=nrr_sparead_centre]

#如果兔子总量小于设定的目标，那么刷新一次
execute as @e[tag=nrr_spawner] at @s if score $nrr_rabbits nrr_stats < $nrr_targetSpawnCount nrr_options run function nifeather_rabbit_raid:raid/rabbit/spawn/dospawn/boot

#如果有失败的扩散，那么在现有的刷新点补上少的兔子
execute if score $nrr_spreadFails nrr_stats matches 1.. run function nifeather_rabbit_raid:raid/rabbit/spawn/fix/boot

#清理刷新点
kill @e[tag=nrr_spawner]
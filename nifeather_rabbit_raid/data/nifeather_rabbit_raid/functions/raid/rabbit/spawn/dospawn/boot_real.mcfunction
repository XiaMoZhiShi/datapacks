#增加兔子数量
scoreboard players add $nrr_rabbits nrr_stats 1

#增加temp值
scoreboard players add @s nrr_temp 1 

#生成兔子
function nifeather_rabbit_raid:raid/rabbit/spawn/summon/boot

#如果temp值小于每次刷新要刷的量，那么再刷新一次
execute if score @s nrr_temp < $nrr_spawnPerTry nrr_options run function nifeather_rabbit_raid:raid/rabbit/spawn/dospawn/boot_real
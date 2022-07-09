#效果
summon lightning_bolt ~ 512 ~

#清空最大血量
scoreboard players set $nrr_rabbitTotalMaxHealth nrr_stats 0
function nifeather_rabbit_raid:raid/rabbit/spawn/boot

#如果是第一波则随机附加条件，反之刷新当前条件
execute if score $nrr_current_wave nrr_stats matches ..1 run function nifeather_rabbit_raid:raid/status/running/set_conditions
execute unless score $nrr_current_wave nrr_stats matches ..1 run function nifeather_rabbit_raid:raid/ex_conditions/refresh

#设置状态
scoreboard players set $nrr_status nrr_stats 1

#设置时间
scoreboard players operation $nrr_current nrr_stats = $nrr_maxTime nrr_options

#workaround: 时间设置刚好时一刷就复制
#todo: 复制时钟需要独立计算 / 让袭击时钟自加而不是自减
tag @s remove firstDupeIgnored
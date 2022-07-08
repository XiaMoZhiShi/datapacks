#效果
summon lightning_bolt ~ 512 ~

#清空最大血量
scoreboard players set $nrr_rabbitTotalMaxHealth nrr_stats 0
function nifeather_rabbit_raid:raid/rabbit/spawn/boot

#设置状态
scoreboard players set $nrr_status nrr_stats 1

#设置时间
scoreboard players operation $nrr_current nrr_stats = $nrr_maxTime nrr_options

tag @s remove firstDupeIgnored
#效果
summon lightning_bolt ~ 512 ~

#清空最大血量
scoreboard players set $nrr_rabbitTotalMaxHealth nrr_stats 0
function nifeather_rabbit_raid:raid/rabbit/spawn/boot

execute if score $nrr_current_wave nrr_stats matches ..1 run function nifeather_rabbit_raid:raid/status/running/set_conditions
execute unless score $nrr_current_wave nrr_stats matches ..1 run function nifeather_rabbit_raid:raid/ex_conditions/refresh

#设置状态
scoreboard players set $nrr_status nrr_stats 1

#设置时间
scoreboard players operation $nrr_current nrr_stats = $nrr_maxTime nrr_options

tag @s remove firstDupeIgnored
#移除ticker
kill @e[tag=nrr_centre]

#设置状态
scoreboard players set $nrr_running nife_stats 0
bossbar set nrr_display players

#移除forceload
execute if score $nrr_haveForceLoad nife_stats matches 0 run forceload remove ~ ~

#天气
execute if score $nrr_startupWeather nife_stats matches 0 run weather clear
execute if score $nrr_startupWeather nife_stats matches 1 run weather rain

tag @e[tag=nrr_rabbit] add nrr_remained_rabbit
#declare tag nrr_remained_rabbit 是否为NRR袭击剩下的兔子

tag @e[tag=nrr_rabbit] remove nrr_rabbit

tag @a remove nrr_raid

scoreboard players set $nrr_status nife_stats -1
scoreboard players set $nrr_running nife_stats 1

#设置事件
scoreboard players operation $nrr_current nife_stats = $nrr_maxTime nife_stats
#declare entity $nrr_current 当前剩余时间

#设置阶段
function nifeather_rabbit_raid:raid/status/preparing/boot

#设置bossbar
bossbar set nrr_display name {"text":"多兔袭击"}
bossbar set nrr_display color red


summon armor_stand ~ ~ ~ {Tags:["nrr_centre"]}

execute positioned ~ ~5 ~ run particle minecraft:end_rod ~ ~ ~ 0 10 0 0 80

#强制加载区域
#检查当前区域有没有被forceload
execute store success score $nrr_haveForceLoad nife_stats run forceload query ~ ~
#declare entity $nrr_haveForceLoad 当前激活区域是否被forceloaded

#如果没有，则添加forceload
execute if score $nrr_haveForceLoad nife_stats matches 0 run forceload add ~ ~

#天气控制
scoreboard players set $nrr_startupWeather nife_stats 0
#declare entity $nrr_startupWeather 启动时的天气(0: 晴朗, 1: 下雨, 2: 雷暴)

execute if predicate nifeather:weather/raining run scoreboard players set $nrr_startupWeather nife_stats 1
execute if predicate nifeather:weather/thunder run scoreboard players set $nrr_startupWeather nife_stats 2

#设置天气
weather thunder 1000000
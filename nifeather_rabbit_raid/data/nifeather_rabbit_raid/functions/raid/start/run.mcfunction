#设置运行状态
scoreboard players set $nrr_running nrr_stats 1

#设置属性
scoreboard players operation $nrr_current nrr_stats = $nrr_maxTime nrr_options
#declare entity $nrr_current 当前剩余时间

#设置波数
scoreboard players set $nrr_current_wave nrr_stats 1
#declare entity $nrr_current_wave 当前多少波

#生成袭击中心
summon marker ~ ~ ~ {Tags:["nrr_centre"]}

#粒子效果
execute positioned ~ ~5 ~ run particle minecraft:end_rod ~ ~ ~ 0 10 0 0 80
particle minecraft:lava ~ ~1 ~ 0 0 0 1 5

#强制加载区域
#检查当前区域有没有被forceload
execute store success score $nrr_haveForceLoad nrr_stats run forceload query ~ ~
#declare entity $nrr_haveForceLoad 当前激活区域是否被forceloaded

#如果没有，则添加forceload
execute if score $nrr_haveForceLoad nrr_stats matches 0 run forceload add ~ ~

#天气控制
scoreboard players set $nrr_startupWeather nrr_stats 0
#declare entity $nrr_startupWeather 启动时的天气(0: 晴朗, 1: 下雨, 2: 雷暴)

execute if predicate nifeather:weather/raining run scoreboard players set $nrr_startupWeather nrr_stats 1
execute if predicate nifeather:weather/thunder run scoreboard players set $nrr_startupWeather nrr_stats 2

#设置天气
weather thunder 1000000

#设置阶段
function nifeather_rabbit_raid:raid/status/preparing/boot
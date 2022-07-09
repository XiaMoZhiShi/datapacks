#继续失败的扩散
function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/continue_failed_spawn

#获取当前有效生成器的数量
execute store result score $nrr_livingSpawners nrr_stats if entity @e[tag=nrr_spawner]

#execute at @e[tag=spawnable] run particle cloud ~ ~.5 ~ 0 0 0 0 1

#如果生成器是0（没有找到点），那么中断袭击准备
execute if score $nrr_livingSpawners nrr_stats matches 0 run function nifeather_rabbit_raid:raid/stop/error

#更新bossbar，检查是否可以进入下个阶段
execute if score $nrr_bossbarValue nrr_stats > $nrr_prepareTime nrr_options run function nifeather_rabbit_raid:raid/status/preparing/on_prepare_done
execute if score $nrr_bossbarValue nrr_stats <= $nrr_prepareTime nrr_options run scoreboard players add $nrr_bossbarValue nrr_stats 1
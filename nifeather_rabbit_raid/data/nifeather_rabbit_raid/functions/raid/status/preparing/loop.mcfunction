function nifeather_rabbit_raid:raid/rabbit/spawn/prepare/spread/continue_failed_spawn
execute store result score $nrr_livingSpawners nrr_stats if entity @e[tag=nrr_spawner]

execute if score $nrr_livingSpawners nrr_stats matches 0 run function nifeather_rabbit_raid:raid/stop/error

execute if score $nrr_bossbarValue nrr_stats matches 200 run function nifeather_rabbit_raid:raid/status/preparing/on_prepare_done
execute if score $nrr_bossbarValue nrr_stats matches ..200 run scoreboard players add $nrr_bossbarValue nrr_stats 1
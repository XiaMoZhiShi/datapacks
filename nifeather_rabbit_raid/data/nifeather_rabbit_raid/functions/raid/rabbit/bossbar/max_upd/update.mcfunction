scoreboard players set $nrr_rabbitTotalMaxHealth nife_stats 0
execute as @e[tag=nrr_rabbit] run function nifeather_rabbit_raid:raid/rabbit/bossbar/max_upd/doupdate
execute store result bossbar nrr_display max run scoreboard players get $nrr_rabbitTotalMaxHealth nife_stats

scoreboard players reset $nrr_tmh
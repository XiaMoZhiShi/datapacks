execute as @e[tag=nrr_centre] at @s run function nifeather_rabbit_raid:raid/loop

execute as @e[tag=nrr_remained_rabbit] run function nifeather_rabbit_raid:tracker/boot

execute as @a[tag=nrr_raid_showResult] run function nifeather_rabbit_raid:bossbar_keeper/boot

execute as @e[tag=!nrr_rabbit, tag=!nrr_remained_rabbit, tag=!nrr_processed, type=rabbit] run function nifeather_rabbit_raid:process_rabbit
#在运行和准备之间切换
execute if score $nrr_status nrr_stats matches 1 run tag @s add nrr_is_running
execute if entity @s[tag=nrr_is_running] as @e[tag=nrr_centre] at @s run function nifeather_rabbit_raid:raid/status/preparing/boot
execute unless entity @s[tag=nrr_is_running] as @e[tag=nrr_centre] at @s run function nifeather_rabbit_raid:raid/status/running/boot

tag @s remove nrr_is_running
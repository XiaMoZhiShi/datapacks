#nrr_temp_rabbit_max_health -> nrr_trmh
execute store result score $nrr_trmh nife_stats run attribute @s generic.max_health get
scoreboard players operation $nrr_rabbitTotalMaxHealth nife_stats += $nrr_trmh nife_stats
#declare entity $nrr_tabbitTotalMaxHealth 兔子的总最大血量
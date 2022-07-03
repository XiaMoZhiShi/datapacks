#nrr_temp_rabbit_health -> nrr_trh
execute store result score $nrr_trh nife_stats run data get entity @s Health
scoreboard players operation $nrr_rabbitTotalHealth nife_stats += $nrr_trh nife_stats
#declare entity $nrr_tabbitTotalHealth 兔子的总血量
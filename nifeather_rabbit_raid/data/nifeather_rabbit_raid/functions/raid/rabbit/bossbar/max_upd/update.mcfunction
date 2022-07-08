scoreboard players set $nrr_rabbitTotalMaxHealthTemp nrr_stats 0
scoreboard players operation $nrr_rabbitTotalMaxHealthTemp nrr_stats = $nrr_rabbits nrr_stats
scoreboard players operation $nrr_rabbitTotalMaxHealthTemp nrr_stats *= $nrr_rabbitMaxHealth nrr_options

execute if score $nrr_rabbitTotalMaxHealthTemp nrr_stats > $nrr_rabbitTotalMaxHealth nrr_stats run scoreboard players operation $nrr_rabbitTotalMaxHealth nrr_stats = $nrr_rabbitTotalMaxHealthTemp nrr_stats
execute store result bossbar nrr_display max run scoreboard players get $nrr_rabbitTotalMaxHealth nrr_stats

scoreboard players reset $nrr_rabbitTotalMaxHealthTemp
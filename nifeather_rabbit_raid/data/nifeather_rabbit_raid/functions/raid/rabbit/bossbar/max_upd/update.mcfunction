scoreboard players set $nrr_rabbitTotalMaxHealthTemp nife_stats 0
scoreboard players operation $nrr_rabbitTotalMaxHealthTemp nife_stats = $nrr_rabbits nife_stats
scoreboard players operation $nrr_rabbitTotalMaxHealthTemp nife_stats *= $nrr_rabbitMaxHealth nife_stats

execute if score $nrr_rabbitTotalMaxHealthTemp nife_stats > $nrr_rabbitTotalMaxHealth nife_stats run scoreboard players operation $nrr_rabbitTotalMaxHealth nife_stats = $nrr_rabbitTotalMaxHealthTemp nife_stats
execute store result bossbar nrr_display max run scoreboard players get $nrr_rabbitTotalMaxHealth nife_stats

scoreboard players reset $nrr_rabbitTotalMaxHealthTemp
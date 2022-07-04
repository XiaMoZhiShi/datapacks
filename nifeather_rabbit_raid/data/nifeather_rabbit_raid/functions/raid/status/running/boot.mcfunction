summon lightning_bolt ~ 512 ~

scoreboard players set $nrr_rabbitTotalMaxHealth nife_stats 0
function nifeather_rabbit_raid:raid/rabbit/spawn/boot

scoreboard players set $nrr_status nife_stats 1
scoreboard players operation $nrr_current nife_stats = $nrr_maxTime nife_stats
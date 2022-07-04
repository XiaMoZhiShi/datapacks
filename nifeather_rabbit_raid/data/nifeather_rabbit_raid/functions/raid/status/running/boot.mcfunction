summon lightning_bolt ~ 512 ~

scoreboard players set $nrr_rabbitTotalMaxHealth nrr_stats 0
function nifeather_rabbit_raid:raid/rabbit/spawn/boot

scoreboard players set $nrr_status nrr_stats 1
scoreboard players operation $nrr_current nrr_stats = $nrr_maxTime nrr_stats

tag @s remove firstDupeIgnored
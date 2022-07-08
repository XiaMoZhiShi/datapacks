execute if entity @s[tag=nrr_c_completed] run tag @s add shouldSuccess
execute if score $nrr_current nrr_stats matches ..0 if entity @s[tag=shouldSuccess] run function nifeather_rabbit_raid:raid/stop/success
execute if score $nrr_current nrr_stats matches ..0 if entity @s[tag=!shouldSuccess] run function nifeather_rabbit_raid:raid/stop/fail
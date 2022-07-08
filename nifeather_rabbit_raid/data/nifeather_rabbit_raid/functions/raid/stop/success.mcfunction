tag @a[tag=nrr_raid] add nrr_raid_showResult
tag @a[tag=nrr_raid] add nrr_raid_showResult_success

advancement grant @a[tag=nrr_raid] only nifeather_rabbit_raid:display/raid_success

scoreboard players reset $nrr_successed

bossbar set nrr_display_success players @a[tag=nrr_raid]

execute if entity @s[tag=nrr_c_completed] run function nifeather_rabbit_raid:raid/status/on_clear/get_condition_advancement

function nifeather_rabbit_raid:raid/stop/common
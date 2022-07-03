tag @a[tag=nrr_raid] add nrr_raid_showResult
tag @a[tag=nrr_raid] add nrr_raid_showResult_success

advancement grant @a[tag=nrr_raid] only nifeather_rabbit_raid:display/raid_success

scoreboard players reset $nrr_successed

bossbar set nrr_display_success players @a[tag=nrr_raid]

function nifeather_rabbit_raid:raid/stop/common
say success
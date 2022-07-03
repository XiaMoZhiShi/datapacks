tag @s remove nrr_raid_showResult
scoreboard players reset @s nrr_bossbarTimeTracker

tag @s remove nrr_raid_showResult_fail
tag @s remove nrr_raid_showResult_success

bossbar set nrr_display_fail players @a[tag=nrr_raid_showResult, tag=nrr_raid_showResult_fail]
bossbar set nrr_display_success players @a[tag=nrr_raid_showResult, tag=nrr_raid_showResult_success]
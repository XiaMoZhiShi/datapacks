#设置玩家标签
tag @a[tag=nrr_raid] add nrr_raid_showResult
tag @a[tag=nrr_raid] add nrr_raid_showResult_fail
#declare tag nrr_raid_showResult 是否显示结果

#显示失败bossbar
bossbar set nrr_display_fail players @a[tag=nrr_raid]

function nifeather_rabbit_raid:raid/stop/common
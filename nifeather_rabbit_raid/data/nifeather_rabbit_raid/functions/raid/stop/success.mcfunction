#设置玩家标签
tag @a[tag=nrr_raid] add nrr_raid_showResult
tag @a[tag=nrr_raid] add nrr_raid_showResult_success

#成就相关
advancement grant @a[tag=nrr_raid] only nifeather_rabbit_raid:display/raid_success
execute if entity @s[tag=nrr_c_completed] run function nifeather_rabbit_raid:raid/ex_conditions/advancements/check

#设置运行状态
scoreboard players reset $nrr_successed

#显示bossbar
bossbar set nrr_display_success players @a[tag=nrr_raid]

function nifeather_rabbit_raid:raid/stop/common
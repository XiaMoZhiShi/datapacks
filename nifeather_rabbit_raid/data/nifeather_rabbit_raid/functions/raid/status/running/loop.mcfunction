#兔子复制计时器

#更新bossbar
scoreboard players set $nrr_rabbitTotalHealth nife_stats 0

execute as @e[tag=nrr_rabbit] run function nifeather_rabbit_raid:raid/rabbit/bossbar/value_upd/update

scoreboard players operation $nrr_bossbarValue nife_stats = $nrr_rabbitTotalHealth nife_stats

bossbar set nrr_display name [{"text":"多兔袭击"}, "- 剩余", {"score":{"objective": "nife_stats", "name":"$nrr_rabbits"}}, "只兔子"]

scoreboard players reset $nrr_trmh
execute if score $nrr_rabbitTotalHealth nife_stats matches ..0 unless score $nrr_successed nife_stats matches 1 run function nifeather_rabbit_raid:raid/status/running/trigger_success
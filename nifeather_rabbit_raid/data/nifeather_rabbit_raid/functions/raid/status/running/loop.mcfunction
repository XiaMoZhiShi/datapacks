#兔子复制计时器

#更新bossbar
scoreboard players set $nrr_rabbitTotalHealth nrr_bossbarTimeTracker 0

execute as @e[tag=nrr_rabbit] run function nifeather_rabbit_raid:raid/rabbit/bossbar/value_upd/update

scoreboard players operation $nrr_bossbarValue nife_stats = $nrr_rabbitTotalHealth nrr_bossbarTimeTracker

bossbar set nrr_display name [{"text":"多兔袭击"}, " - 剩余", {"score":{"objective": "nife_stats", "name":"$nrr_rabbits"}}, "只兔子"]

scoreboard players reset $nrr_trmh
execute if score $nrr_rabbitTotalHealth nrr_bossbarTimeTracker matches ..0 unless score $nrr_successed nife_stats matches 1 run function nifeather_rabbit_raid:raid/status/running/trigger_success

scoreboard players operation $nrr_dupeRemain nife_stats = $nrr_current nife_stats
scoreboard players operation $nrr_dupeRemain nife_stats %= $nrr_dupeTime nife_stats
execute if score $nrr_dupeRemain nife_stats matches 0 if entity @s[tag=firstDupeIgnored] run function nifeather_rabbit_raid:raid/rabbit/dupe/boot
execute if score $nrr_dupeRemain nife_stats matches 0 run tag @s add firstDupeIgnored

effect give @e[tag=nrr_rabbit] weakness 10 1 true

execute as @e[tag=nrr_rabbit, distance=70..] at @s run function nifeather_rabbit_raid:tracker/killentity
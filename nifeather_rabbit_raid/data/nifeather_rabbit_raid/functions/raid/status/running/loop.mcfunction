#兔子复制计时器

#更新bossbar
scoreboard players set $nrr_rabbitTotalHealth nrr_bossbarTimeTracker 0

execute as @e[tag=nrr_rabbit] run function nifeather_rabbit_raid:raid/rabbit/bossbar/value_upd/update

scoreboard players operation $nrr_bossbarValue nrr_stats = $nrr_rabbitTotalHealth nrr_bossbarTimeTracker

execute unless score $nrr_rabbits nrr_stats matches ..10 run bossbar set nrr_display name [{"text":"多兔袭击"}]
execute if score $nrr_rabbits nrr_stats matches ..10 run bossbar set nrr_display name [{"text":"多兔袭击"}, " - 剩余", {"score":{"objective": "nrr_stats", "name":"$nrr_rabbits"}}, "只兔子"]

scoreboard players operation $nrr_dupeRemain nrr_stats = $nrr_current nrr_stats
scoreboard players operation $nrr_dupeRemain nrr_stats %= $nrr_dupeTime nrr_stats
execute if score $nrr_dupeRemain nrr_stats matches 0 if entity @s[tag=firstDupeIgnored] run function nifeather_rabbit_raid:raid/rabbit/dupe/boot
execute if score $nrr_dupeRemain nrr_stats matches 0 run tag @s add firstDupeIgnored

effect give @e[tag=nrr_rabbit] weakness 10 1 true

execute as @e[tag=nrr_rabbit, distance=90..] at @s run function nifeather_rabbit_raid:tracker/killentity

execute if score $nrr_current nrr_stats matches ..0 run function nifeather_rabbit_raid:raid/stop/fail
execute if score $nrr_rabbitTotalHealth nrr_bossbarTimeTracker matches ..0 run function nifeather_rabbit_raid:raid/status/running/on_clear
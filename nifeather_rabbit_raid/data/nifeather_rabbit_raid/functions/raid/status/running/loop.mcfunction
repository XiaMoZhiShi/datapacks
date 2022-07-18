#兔子复制计时器

#更新兔子总生命到bossbar目标值
scoreboard players set $nrr_rabbitTotalHealth nrr_bossbarTimeTracker 0
execute as @e[tag=nrr_rabbit] run function nifeather_rabbit_raid:raid/rabbit/bossbar/value_upd/update
scoreboard players operation $nrr_bossbarValue nrr_stats = $nrr_rabbitTotalHealth nrr_bossbarTimeTracker

#根据兔子数量更新bossbar标题
execute unless score $nrr_rabbits nrr_stats matches ..10 run bossbar set nrr_display name [{"text":"多兔袭击"}]
execute if score $nrr_rabbits nrr_stats matches ..10 run bossbar set nrr_display name [{"text":"多兔袭击"}, " - 剩余", {"score":{"objective": "nrr_stats", "name":"$nrr_rabbits"}}, "只兔子"]

#兔子复制计时
scoreboard players operation $nrr_dupeRemain nrr_stats = $nrr_current nrr_stats
scoreboard players operation $nrr_dupeRemain nrr_stats %= $nrr_dupeTime nrr_options
execute if score $nrr_dupeRemain nrr_stats matches 0 if entity @s[tag=firstDupeIgnored] run function nifeather_rabbit_raid:raid/rabbit/dupe/boot
execute if score $nrr_dupeRemain nrr_stats matches 0 run tag @s add firstDupeIgnored

#清理过远、在下界的兔子、方块破坏机制
execute as @e[tag=nrr_rabbit, distance=90..] at @s run function nifeather_rabbit_raid:tracker/killentity
execute in the_nether as @e[tag=nrr_rabbit, distance=0..] at @s run function nifeather_rabbit_raid:tracker/killentity
execute as @e[tag=nrr_rabbit] at @s if block ~ ~ ~ #nifeather_rabbit_raid:rabbit_stuckable run function nifeather_rabbit_raid:raid/status/running/no_stuck

#附加条件
execute if entity @s[tag=nrr_show_conditionProgress] run function nifeather_rabbit_raid:raid/ex_conditions/loop

#超时处理
execute if score $nrr_current nrr_stats matches ..0 run function nifeather_rabbit_raid:raid/stop/fail

#胜利判定
execute if score $nrr_rabbitTotalHealth nrr_bossbarTimeTracker matches ..0 run function nifeather_rabbit_raid:raid/status/running/on_clear
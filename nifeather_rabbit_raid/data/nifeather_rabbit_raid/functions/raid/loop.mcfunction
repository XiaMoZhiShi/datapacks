data merge entity @s {Glowing: 1b}

#处理玩家加入和退出
execute as @a[tag=!nrr_raid, distance=..80] run function nifeather_rabbit_raid:raid/player/makejoin
execute as @a[tag=nrr_raid, distance=81..] run function nifeather_rabbit_raid:raid/player/makeleave

#设置bossbar
bossbar set nrr_display players @a[tag=nrr_raid]

#Tick阶段
scoreboard players remove $nrr_current nife_stats 1
execute if score $nrr_current nife_stats matches ..0 run function nifeather_rabbit_raid:raid/stop/fail

#获取兔子数量
execute store result score $nrr_rabbits nife_stats run execute if entity @e[tag=nrr_rabbit, nbt=!{Health: 0s}]
#declare entity $nrr_rabbits 有多少只袭击生成的兔子

#状态loop
execute if score $nrr_status nife_stats matches 0 run function nifeather_rabbit_raid:raid/status/preparing/loop
execute if score $nrr_status nife_stats matches 1 run function nifeather_rabbit_raid:raid/status/running/loop

execute store result bossbar nrr_display value run scoreboard players get $nrr_bossbarValue nife_stats
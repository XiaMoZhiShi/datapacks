data merge entity @s {Glowing: 1b}

#处理玩家加入和退出
execute as @a[tag=!nrr_raid, distance=..100] run function nifeather_rabbit_raid:raid/player/makejoin
execute as @a[tag=nrr_raid, distance=101..] run function nifeather_rabbit_raid:raid/player/makeleave

#设置bossbar
bossbar set nrr_display players @a[tag=nrr_raid]

#Tick阶段
scoreboard players remove $nrr_current nrr_stats 1

#获取兔子数量
execute store result score $nrr_rabbits nrr_stats run execute if entity @e[tag=nrr_rabbit, nbt=!{Health: 0s}]
#declare entity $nrr_rabbits 有多少只袭击生成的兔子

#状态loop
execute if score $nrr_status nrr_stats matches 2 run function nifeather_rabbit_raid:raid/status/on_clear/loop
execute if score $nrr_status nrr_stats matches 1 run function nifeather_rabbit_raid:raid/status/running/loop
execute if score $nrr_status nrr_stats matches 0 run function nifeather_rabbit_raid:raid/status/preparing/loop

#更新BOSSBAR
execute store result bossbar nrr_display value run scoreboard players get $nrr_bossbarValue nrr_stats
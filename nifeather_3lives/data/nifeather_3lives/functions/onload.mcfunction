scoreboard objectives add n3l_lives dummy

scoreboard objectives add n3l_random dummy
#declare objective n3l_random 主事件随机数储存

scoreboard objectives add n3l_subrandom dummy
#declare objective n3l_subrandom 子事件随机数储存

scoreboard objectives add n3l_patchlevel dummy
#declare objective n3l_patchlevel 玩家补丁等级

scoreboard objectives add n3l_se_clock dummy
#declare objective n3l_se_clock se时钟

scoreboard objectives add n3l_monsters_nearby dummy
#declare objective n3l_monsters_nearby 周围的怪物数量

scoreboard objectives add n3l_maxLives dummy
#declare objective n3l_maxLives 某个玩家的最大生命数

scoreboard objectives add n3l_armorLevel dummy
#declare objective n3l_armorLevel 玩家盔甲等级

scoreboard objectives add n3l_lastDeathTime dummy
#declare objective n3l_lastDeathTime 记录玩家死亡时间

scoreboard objectives add n3l_respawnTimeRemain dummy
#declare objective n3l_respawnTimeRemain 剩余时间

scoreboard objectives add n3l_rTRDisplaySecond dummy
#declare objective n3l_rTRDisplaySecond 剩余时间显示

scoreboard objectives add n3l_rTRDisplayMinute dummy
#declare objective n3l_rTRDisplayMinute 剩余时间显示

scoreboard objectives add n3l_rTRDisplayHour dummy
#declare objective n3l_rTRDisplayHour 剩余时间显示


#scoreboard objectives add nife_gapple_eat minecraft.used:minecraft.golden_apple

scoreboard players set #4 n3l_lives 4
scoreboard players set #2 n3l_lives 2
scoreboard players set #0 n3l_lives 0

scoreboard players set #n3l_ticksPerSec nife_stats 20
scoreboard players set #n3l_ticksPerMin nife_stats 1200
scoreboard players set #n3l_ticksPerHr nife_stats 72000
scoreboard players set #n3l_secsPerMin nife_stats 60
scoreboard players set #n3l_minsPerHr nife_stats 60

execute unless score #n3l_respawnTick nife_stats matches -2147483648..2147483647 run scoreboard players set #n3l_respawnTick nife_stats 216000

#define entity #n3l_respawnTick 重生等待时间
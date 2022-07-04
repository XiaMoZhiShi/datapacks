scoreboard players set $nrr_status nrr_stats 0
#declare entity $nrr_status 袭击阶段（0: 准备中，1: 袭击进行中）

bossbar set nrr_display max 200
bossbar set nrr_display value 0

scoreboard players set $nrr_bossbarValue nrr_stats 0
#declare entity $nrr_bossbarValue 用于显示到bossbar上的值
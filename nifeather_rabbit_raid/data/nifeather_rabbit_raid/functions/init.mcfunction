#BOSSBAR
bossbar add nrr_display "nrr display"
bossbar set minecraft:nrr_display style notched_10
#declare bossbar nrr_display 用于显示进度的bossbar

bossbar add nrr_display_success [{"text":"多兔袭击"}, " - 胜利"]
bossbar set minecraft:nrr_display_success style notched_10
bossbar set nrr_display_success color red
#declare bossbar nrr_display_success 用于显示进度的bossbar

bossbar add nrr_display_fail [{"text":"多兔袭击"}, " - 失败"]
bossbar set minecraft:nrr_display_fail style notched_10
bossbar set nrr_display_fail color red
#declare bossbar nrr_display_fail 用于显示进度的bossbar

bossbar add nrr_display_c [{"text":"多兔袭击"}, " - 附加进度"]
#declare bossbar nrr_display_c 用于显示进度的bossbar

#declare tag nrr_centre 袭击中心

#一次袭击默认最多20分钟
scoreboard objectives add nrr_ageTracker dummy
#declare objective nrr_ageTracker 实体追踪器，用来移除活得太久的NRR兔子（

scoreboard objectives add nrr_bossbarTimeTracker dummy
#declare objective nrr_bossbarTimeTracker Bossbar时间追踪器

scoreboard objectives add nrr_stats dummy
#declare objective nrr_stats Bossbar时间追踪器

scoreboard objectives add nrr_options dummy
#declare objective nrr_options Bossbar时间追踪器

scoreboard objectives add nrr_temp dummy
#declare objective nrr_temp 临时

scoreboard players set $nrr_rabbitMaxHealth nrr_options 5
#declare entity $nrr_rabbitMaxHealth 兔子的最大血量

scoreboard players set $nrr_conditionCount_real nrr_stats 3
scoreboard players set $nrr_conditionCount_multiplier nrr_stats 3
scoreboard players operation $nrr_conditionCount nrr_stats = $nrr_conditionCount_real nrr_stats
scoreboard players operation $nrr_conditionCount nrr_stats *= $nrr_conditionCount_multiplier nrr_stats

execute unless score $nrr_maxTime nrr_options matches 1.. run scoreboard players set $nrr_maxTime nrr_options 24000

#随机跟随距离
data modify storage nifeather:nrr RBAT set value {Name:"minecraft:generic.follow_range", Base: 0d}

#设置
execute unless score $nrr_dupeTime nrr_options matches 1.. run scoreboard players set $nrr_dupeTime nrr_options 300
#declare entity $nrr_dupeTime 兔子复制时间

execute unless score $nrr_targetSpawnCount nrr_options matches 1.. run scoreboard players set $nrr_targetSpawnCount nrr_options 40
#declare entity $nrr_targetSpawnCount 目标生成个数

execute unless score $nrr_spawnPerTry nrr_options matches 1.. run scoreboard players set $nrr_spawnPerTry nrr_options 10
#declare entity $nrr_spawnPerTry 每次生成刷多少只

execute unless score $nrr_showSpawners nrr_options matches 0.. run scoreboard players set $nrr_showSpawners nrr_options 0
#declare entity $nrr_showSpawners 是否显示spawner

execute unless score $nrr_prepareTime nrr_options matches 40.. run scoreboard players set $nrr_prepareTime nrr_options 200
#declare entity $nrr_prepareTime 要留多少刻给数据包和玩家做准备，最小40刻

execute unless score $nrr_waves nrr_options matches 1.. run scoreboard players set $nrr_waves nrr_options 2
#declare entity $nrr_waves 出多少波

execute unless score $nrr_rabbitMaxFR nrr_options matches 1.. run scoreboard players set $nrr_rabbitMaxFR nrr_options 48
#declare entity $nrr_rabbitMaxFR 兔子最大追踪距离

execute unless score $nrr_rabbitIHPChance nrr_options matches 1.. run scoreboard players set $nrr_rabbitIHPChance nrr_options 2
#declare entity $nrr_rabbitIHPChance 兔子超肉概率

execute unless score $nrr_rabbitTriggerChance nrr_options matches 1.. run scoreboard players set $nrr_rabbitTriggerChance nrr_options 15
#declare entity $nrr_rabbitTriggerChance 某个兔子有多少的概率可以让玩家触发袭击(1/($nrr_rabbitTriggerChance+1))

scoreboard players set #nrr_20 nife_stats 20
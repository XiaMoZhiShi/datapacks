bossbar add nrr_display "nrr display"
#declare bossbar nrr_display 用于显示进度的bossbar

bossbar add nrr_display_success [{"text":"多兔袭击"}, " - 胜利"]
bossbar set nrr_display_success color red
#declare bossbar nrr_display_success 用于显示进度的bossbar

bossbar add nrr_display_fail [{"text":"多兔袭击"}, " - 失败"]
bossbar set nrr_display_fail color red
#declare bossbar nrr_display_fail 用于显示进度的bossbar

#declare tag nrr_centre 袭击中心

#一次袭击默认最多20分钟
execute unless score $nrr_maxTime nife_stats matches 1.. run scoreboard players set $nrr_maxTime nife_stats 24000

scoreboard objectives add nrr_ageTracker dummy
#declare objective nrr_ageTracker 实体追踪器，用来移除活得太久的NRR兔子（

scoreboard objectives add nrr_bossbarTimeTracker dummy
#declare objective nrr_bossbarTimeTracker Bossbar时间追踪器

scoreboard players set $nrr_rabbitMaxHealth nife_stats 10
#declare entity $nrr_rabbitMaxHealth 兔子的最大血量
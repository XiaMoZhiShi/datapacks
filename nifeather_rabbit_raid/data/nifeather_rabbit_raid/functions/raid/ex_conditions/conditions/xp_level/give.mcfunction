#显示消息
tellraw @a {"translate":"text.hub.hint", "with":["?", "附加条件：在袭击结束前通过任何方式增长200点经验"]}

#declare tag nrr_c_00 附加条件0: 经验等级

#设置bossbar
bossbar set nrr_display_c name [{"text":"多兔袭击"}, " - 经验收集进度"]
bossbar set nrr_display_c color white
bossbar set nrr_display_c max 200
bossbar set nrr_display_c value 0

#设置属性
scoreboard players set $nrr_c_xp_deltaTotal nrr_temp 0

tag @e[tag=nrr_centre] add nrr_c_00
tag @e[tag=nrr_centre] add nrr_show_conditionProgress
#declare tag nrr_show_conditionProgress 是否要显示条件进度
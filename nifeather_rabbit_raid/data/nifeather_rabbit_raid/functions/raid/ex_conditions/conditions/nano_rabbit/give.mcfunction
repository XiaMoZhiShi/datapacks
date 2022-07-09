#显示消息
tellraw @a {"translate":"text.hub.hint", "with":["?", "附加条件：所有多兔体型变小"]}

#设置属性
tag @e[tag=nrr_centre] add nrr_c_02
tag @e[tag=nrr_centre] add nrr_show_conditionProgress
#declare tag nrr_c_02 附加条件3: 小兔子

#如果是类似于”在xx秒内击杀怪物“的条件，取消注释下面这行
tag @e[tag=nrr_centre] add nrr_c_completed

#设置bossbar
bossbar set nrr_display_c name [{"text":"多兔袭击"}, " - 纳米多兔"]
bossbar set nrr_display_c color white
bossbar set nrr_display_c max 1
bossbar set nrr_display_c value 0

#在这行下面增加自定义初始化内容
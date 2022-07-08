一个附加条件需要由至少以下部分组成：

* `give.mcfunction`：用于应用条件
* `loop.mcfunction`：用于更新检测
* `refresh.mcfunction`：用于刷新检测

### give.mcfunction 的模板
```mcfunction
tellraw @a {"translate":"text.hub.hint", "with":["【条件图标】", "【条件描述】"]}

tag @e[tag=nrr_centre] add nrr_c_【y-1】
tag @e[tag=nrr_centre] add nrr_show_conditionProgress
#declare tag nrr_c_【y-1】 附加条件y: 击败间隔

#如果是类似于”在xx秒内击杀怪物“的条件，取消注释下面这行
#tag @e[tag=nrr_centre] add nrr_c_completed

bossbar set nrr_display_c name [{"text":"多兔袭击"}, " - 【条件名】"]
bossbar set nrr_display_c color white
bossbar set nrr_display_c max 【bossbar最大值】
bossbar set nrr_display_c value 0

#在这行下面增加自定义初始化内容
```
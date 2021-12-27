#启动倒计时
#declare entity queueCountDownAllowed 是否可以进行大厅倒计时
scoreboard players set queueCountDownAllowed town.defines 1

#初始化时间
#declare entity queueCountDownTick 当前大厅倒计时刻
scoreboard players operation queueCountDownTick town.clock = countdownSecond town.defines
scoreboard players operation queueCountDownTick town.clock *= 1s town.defines
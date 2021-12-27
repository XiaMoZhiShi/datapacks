#清空队列
tag @a[tag=town.inQueue] remove town.inQueue
scoreboard players set playersCurrent town.mode.lobby.queue 0

#重置倒计时
scoreboard players set queueCountDownAllowed town.defines 0
scoreboard players set queueCountDownTick town.clock 0

#隐藏bossbar
bossbar set town:lobby players

#切换到游戏
function town:mode/switch_game
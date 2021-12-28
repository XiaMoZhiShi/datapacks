#region 创建并初始化记分板对象

#declare entity value 当前模式
scoreboard players set value town.gameStatus 0

#declare entity state 当前状态
scoreboard players set state town.gameStatus -1

#将所有队列中的玩家踢出队列
execute as @e[tag=town.QueueEnterance, limit=1] at @s as @a[tag=town.inQueue] run function town:mode/lobby/queue/out_queue

#declare entity playersCurrent 队列玩家数
scoreboard players set playersCurrent town.mode.lobby.queue 0

#declare entity playersStart 最小开始玩家数
scoreboard players set playersStart town.mode.lobby.queue 2

#declare entity playersMax 最大玩家数
scoreboard players set playersMax town.mode.lobby.queue 5

#declare entity countdownSecond 倒计时秒数
scoreboard players set countdownSecond town.defines 10

#declare entity gameCountdownSecond 游戏阶段倒计时秒数
scoreboard players set gameCountdownSecond town.defines 90

#endregion 创建并初始化记分板对象
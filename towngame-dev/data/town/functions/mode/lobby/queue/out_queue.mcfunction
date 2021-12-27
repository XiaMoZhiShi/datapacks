scoreboard players remove playersCurrent town.mode.lobby.queue 1
tag @s remove town.inQueue

tellraw @s {"text": "您已退出队列"}
tp @s ^ ^ ^5

execute if score playersCurrent town.mode.lobby.queue < playersStart town.mode.lobby.queue run function town:mode/lobby/countdown/cancel
#declare entity queueTime 队列时间(刻)
execute if score playersCurrent town.mode.lobby.queue matches ..0 run scoreboard players set queueTime town.clock -1

scoreboard players add playersCurrent town.mode.lobby.queue 1
tag @s add town.inQueue

tellraw @s {"text": "您已加入队列"}
tp @s ^ ^ ^5

execute if score playersCurrent town.mode.lobby.queue >= playersStart town.mode.lobby.queue run function town:mode/lobby/countdown/boot

#declare tag town.inQueue 队列中玩家的tag
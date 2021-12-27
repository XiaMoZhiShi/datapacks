tellraw @a {"text": "LOBBY BOOT"}

#更新state
scoreboard players set state town.gameStatus 0

#将所有队列中的玩家踢出队列
execute as @e[tag=town.QueueEnterance, limit=1] at @s as @a[tag=town.inQueue] run function town:mode/lobby/queue/out_queue

#检查设置是否合理
execute if score playersMax town.mode.lobby.queue < playersStart town.mode.lobby.queue run function town:mode/lobby/sanity/maxstart
execute if score playersMax town.mode.lobby.queue matches ..0 run function town:mode/lobby/sanity/max0
execute if score playersStart town.mode.lobby.queue matches ..0 run function town:mode/lobby/sanity/max0

#设置bossbar最大值
execute store result bossbar town:lobby max run scoreboard players get playersMax town.mode.lobby.queue
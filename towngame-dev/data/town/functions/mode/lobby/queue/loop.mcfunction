execute as @a[distance=..1, tag=town.inQueue] run function town:mode/lobby/queue/out_queue
execute as @a[distance=..1, tag=!town.inQueue] if score playersCurrent town.mode.lobby.queue < playersMax town.mode.lobby.queue run function town:mode/lobby/queue/in_queue
execute as @a[distance=..1, tag=!town.inQueue] if score playersCurrent town.mode.lobby.queue >= playersMax town.mode.lobby.queue run function town:mode/lobby/queue/queue_max

bossbar set town:lobby players @a[tag=town.inQueue]

execute if score playersCurrent town.mode.lobby.queue matches 1.. run function town:mode/lobby/queue/update_display
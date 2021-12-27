execute unless score state town.gameStatus matches 0..0 run function town:mode/lobby/boot

title @a actionbar "LOBBY LOOP"

execute as @e[tag=town.QueueEnterance] at @s run function town:mode/lobby/queue/loop

#declare tag town.QueueEnterance 队列入口实体的标签

execute at @a[tag=town.inQueue] run particle crit ~ ~2 ~ 0 0 0 0 1

#region 更新Bossbar town:lobby

execute store result bossbar town:lobby value run scoreboard players get playersCurrent town.mode.lobby.queue
execute unless score playersCurrent town.mode.lobby.queue >= playersStart town.mode.lobby.queue run bossbar set town:lobby color white
execute if score playersCurrent town.mode.lobby.queue >= playersStart town.mode.lobby.queue run bossbar set town:lobby color green

#队列时间
scoreboard players add queueTime town.clock 1

#declare entity queueTimeSecond 队列时间(显示)(秒)
scoreboard players operation queueTimeSecond town.clock = queueTime town.clock
scoreboard players operation queueTimeSecond town.clock /= 1s town.defines
scoreboard players operation queueTimeSecond town.clock %= 60sDemical town.defines

#declare entity queueTimeMinute 队列时间(显示)(秒)
scoreboard players operation queueTimeMinute town.clock = queueTime town.clock
scoreboard players operation queueTimeMinute town.clock /= 1min town.defines

bossbar set town:lobby name [ { "text": "", "bold": true, "color": "#abcdef" }, "当前玩家: ", { "score": { "objective": "town.mode.lobby.queue", "name": "playersCurrent" } }, " / ", { "score": { "objective": "town.mode.lobby.queue", "name": "playersMax" } }, " | ", "当前等待时间: ", {"score": { "objective": "town.clock", "name": "queueTimeMinute" }, "extra":["分"] }, {"score": { "objective": "town.clock", "name": "queueTimeSecond" }, "extra":["秒"] }, " | ", {"text": "倒计时: ", "extra":[ {"score": { "objective": "town.clock", "name": "queueCountDownSecond" }}, ".", {"score": { "objective": "town.clock", "name": "queueCountDownMiliSec" }} ]} ]

#endregion 更新Bossbar town:lobby

execute if score queueCountDownAllowed town.defines matches 1.. run function town:mode/lobby/countdown/loop
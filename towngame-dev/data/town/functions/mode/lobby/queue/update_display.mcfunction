#更新队列时间
scoreboard players add queueTime town.clock 1

#declare entity queueTimeSecondDisplay 队列时间(显示)(秒)
scoreboard players operation queueTimeSecondDisplay town.clock = queueTime town.clock
scoreboard players operation queueTimeSecondDisplay town.clock /= 1s town.defines
scoreboard players operation queueTimeSecondDisplay town.clock %= 60sDemical town.defines

#declare entity queueTimeMinuteDisplay 队列时间(显示)(秒)
scoreboard players operation queueTimeMinuteDisplay town.clock = queueTime town.clock
scoreboard players operation queueTimeMinuteDisplay town.clock /= 1min town.defines

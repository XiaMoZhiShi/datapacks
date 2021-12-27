scoreboard players remove queueCountDownTick town.clock 1

#declare entity queueCountDownSecond 倒计时时间(显示)(秒)
scoreboard players operation queueCountDownSecond town.clock = queueCountDownTick town.clock
scoreboard players operation queueCountDownSecond town.clock /= 1s town.defines

#declare entity queueCountDownMiliSec 倒计时时间(显示)(0.1)
scoreboard players operation queueCountDownMiliSec town.clock = queueCountDownTick town.clock
scoreboard players operation queueCountDownMiliSec town.clock %= 1s town.defines
scoreboard players operation queueCountDownMiliSec town.clock /= #2 nife_stats

#3...2...1
execute if score queueCountDownTick town.clock matches 60..60 at @e[tag=town.QueueEnterance, limit=1] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 300
execute if score queueCountDownTick town.clock matches 40..40 at @e[tag=town.QueueEnterance, limit=1] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 300
execute if score queueCountDownTick town.clock matches 20..20 at @e[tag=town.QueueEnterance, limit=1] run playsound entity.experience_orb.pickup master @a ~ ~ ~ 300

execute if score queueCountDownTick town.clock matches ..0 run function town:mode/lobby/startgame

#255t = 15.5s
#
#